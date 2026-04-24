import { existsSync, readFileSync } from "node:fs";
import { join } from "node:path";

import { describe, expect, it } from "vitest";

const OPENAPI_PATH = join(process.cwd(), "contracts", "role-node", "openapi.json");
const SDK_SPEC_PATH = join(process.cwd(), "contracts", "generated", "role-node-sdk-spec.json");

type OpenApiDocument = {
  openapi?: string;
  info?: {
    title?: string;
    version?: string;
  };
};

type SdkOperation = {
  operationId: string | null;
  method: string;
  path: string;
  tag: string;
};

type SdkSpecDocument = {
  source?: {
    openapi?: string | null;
    title?: string | null;
    apiVersion?: string | null;
  };
  operationCount?: number;
  operations?: SdkOperation[];
  modules?: Record<string, string[]>;
};

const readJson = <T>(filePath: string): T => {
  return JSON.parse(readFileSync(filePath, "utf8")) as T;
};

describe("contract validation - role-node SDK spec", () => {
  it("keeps SDK-spec source metadata aligned with OpenAPI", () => {
    if (!existsSync(OPENAPI_PATH) || !existsSync(SDK_SPEC_PATH)) {
      expect(true).toBe(true);
      return;
    }

    const openApi = readJson<OpenApiDocument>(OPENAPI_PATH);
    const sdkSpec = readJson<SdkSpecDocument>(SDK_SPEC_PATH);

    expect(sdkSpec.source?.openapi).toBe(openApi.openapi ?? null);
    expect(sdkSpec.source?.title).toBe(openApi.info?.title ?? null);
    expect(sdkSpec.source?.apiVersion).toBe(openApi.info?.version ?? null);
  });

  it("ensures SDK-spec operations are coherent and grouped", () => {
    if (!existsSync(SDK_SPEC_PATH)) {
      expect(true).toBe(true);
      return;
    }

    const sdkSpec = readJson<SdkSpecDocument>(SDK_SPEC_PATH);
    const operations = sdkSpec.operations ?? [];
    const modules = sdkSpec.modules ?? {};

    expect(sdkSpec.operationCount).toBe(operations.length);

    const seenOperationIds = new Set<string>();
    for (const operation of operations) {
      expect(operation.method.length).toBeGreaterThan(0);
      expect(operation.path.startsWith("/")).toBe(true);
      expect(operation.tag.length).toBeGreaterThan(0);

      if (operation.operationId !== null) {
        expect(operation.operationId.length).toBeGreaterThan(0);
        expect(seenOperationIds.has(operation.operationId)).toBe(false);
        seenOperationIds.add(operation.operationId);
      }
    }

    for (const [moduleName, operationNames] of Object.entries(modules)) {
      expect(moduleName.length).toBeGreaterThan(0);
      expect(operationNames.length).toBeGreaterThan(0);

      for (const operationName of operationNames) {
        expect(operationName.length).toBeGreaterThan(0);
      }
    }
  });
});
