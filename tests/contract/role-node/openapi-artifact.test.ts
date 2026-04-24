import { existsSync, readFileSync } from "node:fs";
import { join } from "node:path";

import { describe, expect, it } from "vitest";

const OPENAPI_PATH = join(process.cwd(), "contracts", "role-node", "openapi.json");

type OpenApiDocument = {
  openapi?: string;
  paths?: Record<string, Record<string, { operationId?: string }>>;
};

const loadOpenApi = (): OpenApiDocument | null => {
  if (!existsSync(OPENAPI_PATH)) {
    return null;
  }

  const raw = readFileSync(OPENAPI_PATH, "utf8");
  return JSON.parse(raw) as OpenApiDocument;
};

describe("contract validation - role-node OpenAPI", () => {
  it("uses OpenAPI 3.x when artifact exists", () => {
    const doc = loadOpenApi();

    if (doc === null) {
      expect(true).toBe(true);
      return;
    }

    expect(typeof doc.openapi).toBe("string");
    expect(doc.openapi?.startsWith("3.")).toBe(true);
  });

  it("uses brace path params and unique operationIds", () => {
    const doc = loadOpenApi();

    if (doc === null || doc.paths === undefined) {
      expect(true).toBe(true);
      return;
    }

    const operationIds = new Set<string>();

    for (const [routePath, pathItem] of Object.entries(doc.paths)) {
      expect(routePath.includes(":")).toBe(false);

      for (const [method, operation] of Object.entries(pathItem)) {
        const normalizedMethod = method.toLowerCase();
        if (
          !["get", "post", "patch", "put", "delete", "head", "options"].includes(normalizedMethod)
        ) {
          continue;
        }

        expect(typeof operation.operationId).toBe("string");
        const operationId = operation.operationId;
        expect(operationId && operationId.length > 0).toBe(true);

        if (typeof operationId === "string") {
          expect(operationIds.has(operationId)).toBe(false);
          operationIds.add(operationId);
        }
      }
    }
  });
});
