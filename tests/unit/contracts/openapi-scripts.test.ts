import {
  chmodSync,
  existsSync,
  mkdtempSync,
  mkdirSync,
  readFileSync,
  rmSync,
  writeFileSync
} from "node:fs";
import { tmpdir } from "node:os";
import { join } from "node:path";
import { spawnSync, type SpawnSyncReturns } from "node:child_process";

import { afterEach, describe, expect, it } from "vitest";

const checkScriptPath = join(process.cwd(), "scripts", "openapi", "check-openapi-artifact.mjs");
const syncScriptPath = join(process.cwd(), "scripts", "openapi", "sync-role-node-openapi.mjs");
const buildScriptPath = join(process.cwd(), "scripts", "openapi", "build-sdk-spec.mjs");
const buildDartOpenApiScriptPath = join(
  process.cwd(),
  "scripts",
  "openapi",
  "build-dart-openapi.mjs"
);
const generateDartScriptPath = join(process.cwd(), "scripts", "openapi", "generate-dart-sdk.mjs");

const tempDirs: string[] = [];

const createTempWorkspace = (): string => {
  const dir = mkdtempSync(join(tmpdir(), "role-sdk-openapi-test-"));
  tempDirs.push(dir);
  return dir;
};

const writeOpenApi = (workspace: string, document: unknown): void => {
  const outputDir = join(workspace, "contracts", "role-node");
  mkdirSync(outputDir, { recursive: true });
  writeFileSync(join(outputDir, "openapi.json"), `${JSON.stringify(document, null, 2)}\n`, "utf8");
};

const runNodeScript = (
  scriptPath: string,
  cwd: string,
  args: string[] = [],
  env: Record<string, string | undefined> = process.env
): SpawnSyncReturns<string> => {
  return spawnSync("node", [scriptPath, ...args], {
    cwd,
    env,
    encoding: "utf8"
  });
};

const createFakeDocker = (workspace: string): { binDir: string; outputFile: string } => {
  const binDir = join(workspace, "bin");
  mkdirSync(binDir, { recursive: true });
  const dockerPath = join(binDir, "docker");
  const outputFile = join(workspace, "docker-args.txt");

  writeFileSync(
    dockerPath,
    [
      "#!/bin/sh",
      'if [ -n "$DOCKER_ARGS_OUT" ]; then',
      '  printf "%s\\n" "$@" > "$DOCKER_ARGS_OUT"',
      "fi",
      'exit "${FAKE_DOCKER_EXIT:-0}"'
    ].join("\n"),
    "utf8"
  );
  chmodSync(dockerPath, 0o755);

  return { binDir, outputFile };
};

afterEach(() => {
  for (const dir of tempDirs.splice(0, tempDirs.length)) {
    rmSync(dir, { recursive: true, force: true });
  }
});

describe("openapi scripts", () => {
  it("passes check for a minimal valid OpenAPI artifact", () => {
    const workspace = createTempWorkspace();
    writeOpenApi(workspace, {
      openapi: "3.1.0",
      info: {
        title: "Test API",
        version: "1.0.0"
      },
      paths: {
        "/api/auth/me": {
          get: {
            operationId: "getAuthMe",
            responses: {
              "200": {
                description: "ok"
              }
            }
          }
        }
      }
    });

    const result = runNodeScript(checkScriptPath, workspace);

    expect(result.status).toBe(0);
    expect(result.stdout).toContain("OpenAPI artifact is valid");
  });

  it("fails check when path params use Express-style syntax", () => {
    const workspace = createTempWorkspace();
    writeOpenApi(workspace, {
      openapi: "3.1.0",
      info: {
        title: "Test API",
        version: "1.0.0"
      },
      paths: {
        "/api/workspaces/:workspaceId": {
          get: {
            operationId: "getWorkspace",
            responses: {
              "200": {
                description: "ok"
              }
            }
          }
        }
      }
    });

    const result = runNodeScript(checkScriptPath, workspace);

    expect(result.status).toBe(1);
    expect(result.stderr).toContain("Express-style params");
  });

  it("syncs OpenAPI from override path when source exists", () => {
    const workspace = createTempWorkspace();
    const sourceFile = join(workspace, "source-openapi.json");

    writeFileSync(
      sourceFile,
      `${JSON.stringify(
        {
          openapi: "3.1.0",
          info: { title: "Source API", version: "1.2.3" },
          paths: {
            "/api/health": {
              get: {
                operationId: "getHealth",
                responses: { "200": { description: "ok" } }
              }
            }
          }
        },
        null,
        2
      )}\n`,
      "utf8"
    );

    const result = runNodeScript(syncScriptPath, workspace, [], {
      ...process.env,
      ROLE_NODE_OPENAPI_PATH: sourceFile
    });

    expect(result.status).toBe(0);
    expect(result.stdout).toContain("Synced");

    const syncedPath = join(workspace, "contracts", "role-node", "openapi.json");
    expect(existsSync(syncedPath)).toBe(true);
    const synced = JSON.parse(readFileSync(syncedPath, "utf8")) as { info: { version: string } };
    expect(synced.info.version).toBe("1.2.3");
  });

  it("fails sync in required mode when source is missing", () => {
    const workspace = createTempWorkspace();

    const result = runNodeScript(syncScriptPath, workspace, ["--required"], {
      ...process.env,
      ROLE_NODE_OPENAPI_PATH: join(workspace, "missing-openapi.json")
    });

    expect(result.status).toBe(1);
    expect(result.stderr).toContain("OpenAPI source not found");
  });

  it("builds sdk spec with sorted statuses and auth inference", () => {
    const workspace = createTempWorkspace();
    writeOpenApi(workspace, {
      openapi: "3.1.0",
      info: { title: "Build API", version: "9.9.9" },
      security: [{ bearerAuth: [] }],
      paths: {
        "/api/one": {
          post: {
            operationId: "postOne",
            tags: ["alpha"],
            requestBody: { required: true },
            responses: {
              "500": { description: "err" },
              "201": { description: "ok" },
              "400": { description: "bad" }
            }
          }
        },
        "/api/two": {
          get: {
            responses: {
              "404": { description: "not found" },
              "200": { description: "ok" }
            }
          }
        }
      }
    });

    const result = runNodeScript(buildScriptPath, workspace);
    expect(result.status).toBe(0);
    expect(result.stdout).toContain("Generated");

    const specPath = join(workspace, "contracts", "generated", "role-node-sdk-spec.json");
    const spec = JSON.parse(readFileSync(specPath, "utf8")) as {
      operationCount: number;
      operations: Array<{
        operationId: string | null;
        tag: string;
        method: string;
        path: string;
        hasRequestBody: boolean;
        successStatuses: number[];
        errorStatuses: number[];
        requiresAuth: boolean;
      }>;
      modules: Record<string, string[]>;
    };

    expect(spec.operationCount).toBe(2);
    expect(spec.operations).toEqual([
      {
        operationId: "postOne",
        tag: "alpha",
        method: "POST",
        path: "/api/one",
        hasRequestBody: true,
        successStatuses: [201],
        errorStatuses: [400, 500],
        requiresAuth: true
      },
      {
        operationId: null,
        tag: "ungrouped",
        method: "GET",
        path: "/api/two",
        hasRequestBody: false,
        successStatuses: [200],
        errorStatuses: [404],
        requiresAuth: true
      }
    ]);
    expect(spec.modules.alpha).toEqual(["postOne"]);
    expect(spec.modules.ungrouped).toEqual(["GET /api/two"]);
  });

  it("build-spec is deterministic for same OpenAPI input (ignoring generatedAt)", () => {
    const workspace = createTempWorkspace();
    writeOpenApi(workspace, {
      openapi: "3.1.0",
      info: { title: "Deterministic API", version: "2.0.0" },
      paths: {
        "/api/auth/me": {
          get: {
            operationId: "getAuthMe",
            tags: ["auth"],
            responses: {
              "200": { description: "ok" },
              "401": { description: "unauthorized" }
            }
          }
        }
      }
    });

    const first = runNodeScript(buildScriptPath, workspace);
    expect(first.status).toBe(0);

    const specPath = join(workspace, "contracts", "generated", "role-node-sdk-spec.json");
    const firstSpec = JSON.parse(readFileSync(specPath, "utf8")) as Record<string, unknown>;

    const second = runNodeScript(buildScriptPath, workspace);
    expect(second.status).toBe(0);

    const secondSpec = JSON.parse(readFileSync(specPath, "utf8")) as Record<string, unknown>;

    const firstWithoutTimestamp = { ...firstSpec };
    const secondWithoutTimestamp = { ...secondSpec };
    delete firstWithoutTimestamp.generatedAt;
    delete secondWithoutTimestamp.generatedAt;

    expect(firstWithoutTimestamp).toEqual(secondWithoutTimestamp);
  });

  it("fails dart generation when OpenAPI artifact is missing", () => {
    const workspace = createTempWorkspace();

    const result = runNodeScript(generateDartScriptPath, workspace);
    expect(result.status).toBe(1);
    expect(result.stderr).toContain("Missing OpenAPI artifact");
  });

  it("builds dart-compatible OpenAPI by relaxing _id required field", () => {
    const workspace = createTempWorkspace();
    writeOpenApi(workspace, {
      openapi: "3.1.0",
      info: { title: "Compat API", version: "1.0.0" },
      paths: {
        "/api/workspaces": {
          get: {
            operationId: "getWorkspaces",
            responses: {
              "200": {
                description: "ok",
                content: {
                  "application/json": {
                    schema: {
                      type: "object",
                      properties: {
                        success: { type: "boolean" },
                        data: {
                          type: "object",
                          properties: {
                            items: {
                              type: "array",
                              items: {
                                type: "object",
                                properties: {
                                  id: { type: "integer" },
                                  _id: { type: "integer" },
                                  name: { type: "string" }
                                },
                                required: ["id", "_id", "name"]
                              }
                            }
                          },
                          required: ["items"]
                        }
                      },
                      required: ["success", "data"]
                    }
                  }
                }
              }
            }
          }
        }
      }
    });

    const result = runNodeScript(buildDartOpenApiScriptPath, workspace);
    expect(result.status).toBe(0);

    const compatPath = join(workspace, "contracts", "generated", "role-node-openapi-dart.json");
    expect(existsSync(compatPath)).toBe(true);

    const compat = JSON.parse(readFileSync(compatPath, "utf8")) as {
      paths: {
        "/api/workspaces": {
          get: {
            responses: {
              "200": {
                content: {
                  "application/json": {
                    schema: {
                      properties: {
                        data: {
                          properties: {
                            items: {
                              items: {
                                required: string[];
                              };
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };

    const requiredFields =
      compat.paths["/api/workspaces"].get.responses["200"].content["application/json"].schema
        .properties.data.properties.items.items.required;

    expect(requiredFields).toContain("id");
    expect(requiredFields).not.toContain("_id");
  });

  it("runs dart generation through docker with expected args", () => {
    const workspace = createTempWorkspace();
    writeOpenApi(workspace, {
      openapi: "3.1.0",
      info: { title: "Dart API", version: "1.0.0" },
      paths: {
        "/api/auth/me": {
          get: {
            operationId: "getAuthMe",
            responses: { "200": { description: "ok" } }
          }
        }
      }
    });

    const compatDir = join(workspace, "contracts", "generated");
    mkdirSync(compatDir, { recursive: true });
    writeFileSync(
      join(compatDir, "role-node-openapi-dart.json"),
      JSON.stringify({ openapi: "3.1.0", info: { title: "Compat", version: "1.0.0" }, paths: {} }),
      "utf8"
    );

    const fakeDocker = createFakeDocker(workspace);
    const result = runNodeScript(generateDartScriptPath, workspace, [], {
      ...process.env,
      PATH: `${fakeDocker.binDir}:${process.env.PATH ?? ""}`,
      DOCKER_ARGS_OUT: fakeDocker.outputFile,
      DART_SDK_OUTPUT_DIR: "./out/sdk"
    });

    expect(result.status).toBe(0);
    expect(result.stdout).toContain("Done");

    const dockerArgs = readFileSync(fakeDocker.outputFile, "utf8");
    expect(dockerArgs).toContain("generate");
    expect(dockerArgs).toContain("-g");
    expect(dockerArgs).toContain("dart-dio");
    expect(dockerArgs).toContain("/local/out/sdk");
    expect(dockerArgs).toContain("/local/contracts/generated/role-node-openapi-dart.json");
  });
});
