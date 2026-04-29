import { spawnSync } from "node:child_process";
import { existsSync } from "node:fs";
import path from "node:path";

import { generatedDartOpenApiPath, targetOpenApiPath } from "./utils.mjs";

const workspaceRoot = process.cwd();
const dockerImage =
  process.env.OPENAPI_GENERATOR_IMAGE ?? "openapitools/openapi-generator-cli:v7.7.0";
const outputDir =
  process.env.DART_REST_SDK_OUTPUT_DIR ??
  process.env.DART_SDK_OUTPUT_DIR ??
  "generated/dart/role_rest_sdk";
const dockerVolumeOptions = process.env.OPENAPI_DOCKER_VOLUME_OPTIONS ?? "";

if (!existsSync(targetOpenApiPath)) {
  console.error(
    `[contracts:openapi:generate:dart] Missing OpenAPI artifact at ${targetOpenApiPath}. ` +
      "Run pnpm contracts:openapi:prepare first."
  );
  process.exit(1);
}

const inputOpenApiPath = existsSync(generatedDartOpenApiPath)
  ? "/local/contracts/generated/role-node-openapi-dart.json"
  : "/local/contracts/role-node/openapi.json";

const mountPath = `${workspaceRoot}:/local${dockerVolumeOptions}`;
const outputPath = `/local/${outputDir.replace(/^[./]+/, "")}`;

const dockerArgs = [
  "run",
  "--rm",
  "-v",
  mountPath,
  dockerImage,
  "generate",
  "-i",
  inputOpenApiPath,
  "-g",
  "dart-dio",
  "-o",
  outputPath,
  "--name-mappings",
  "_id=legacyId",
  "--additional-properties",
  "pubName=role_rest_sdk,pubAuthor=Role,pubVersion=0.1.0,sourceFolder=lib,modelPropertyNaming=original,enumUnknownDefaultCase=true,disallowAdditionalPropertiesByDefault=false"
];

console.log(`[contracts:openapi:generate:dart] Generating Dart SDK -> ${path.resolve(outputDir)}`);

const result = spawnSync("docker", dockerArgs, {
  stdio: "inherit",
  cwd: workspaceRoot
});

if (result.error) {
  console.error(
    `[contracts:openapi:generate:dart] Failed to execute Docker: ${result.error.message}`
  );
  process.exit(1);
}

if (result.status !== 0) {
  process.exit(result.status ?? 1);
}

console.log(`[contracts:openapi:generate:dart] Running build_runner to generate builder files...`);

const buildRunnerResult = spawnSync(
  "dart",
  ["run", "build_runner", "build", "--delete-conflicting-outputs"],
  {
    cwd: outputPath.replace(/^\/local/, workspaceRoot),
    stdio: "inherit"
  }
);

if (buildRunnerResult.status !== 0) {
  console.warn(
    `[contracts:openapi:generate:dart] build_runner exited with ${buildRunnerResult.status}. Continuing anyway.`
  );
}

console.log("[contracts:openapi:generate:dart] Done.");
