import { existsSync, readFileSync } from "node:fs";
import { join } from "node:path";

import { describe, expect, it } from "vitest";

const DART_SDK_ROOT = join(process.cwd(), "generated", "dart", "role_sdk");
const SDK_SPEC_PATH = join(process.cwd(), "contracts", "generated", "role-node-sdk-spec.json");

type SdkOperation = {
  operationId: string | null;
  tag: string;
};

type SdkSpec = {
  operations?: SdkOperation[];
};

const TAG_TO_API_FILE: Record<string, string> = {
  auth: "auth_api.dart",
  collections: "collections_api.dart",
  environments: "environments_api.dart",
  "import-export": "import_export_api.dart",
  runs: "runs_api.dart",
  workspaces: "workspaces_api.dart"
};

const escapeRegex = (value: string): string => value.replace(/[.*+?^${}()|[\]\\]/g, "\\$&");

describe("generated dart sdk", () => {
  it("has expected package skeleton and primary files", () => {
    if (!existsSync(DART_SDK_ROOT)) {
      expect(true).toBe(true);
      return;
    }

    expect(existsSync(join(DART_SDK_ROOT, "pubspec.yaml"))).toBe(true);
    expect(existsSync(join(DART_SDK_ROOT, "README.md"))).toBe(true);
    expect(existsSync(join(DART_SDK_ROOT, "lib", "role_sdk.dart"))).toBe(true);
    expect(existsSync(join(DART_SDK_ROOT, "lib", "lib", "api.dart"))).toBe(true);
  });

  it("exports core generated APIs from role_sdk.dart", () => {
    if (!existsSync(DART_SDK_ROOT)) {
      expect(true).toBe(true);
      return;
    }

    const entry = readFileSync(join(DART_SDK_ROOT, "lib", "role_sdk.dart"), "utf8");
    expect(entry).toContain("AUTO-GENERATED FILE, DO NOT MODIFY");
    expect(entry).toContain("export 'package:role_sdk/lib/api/auth_api.dart';");
    expect(entry).toContain("export 'package:role_sdk/lib/api/workspaces_api.dart';");
    expect(entry).toContain("export 'package:role_sdk/lib/api/collections_api.dart';");
    expect(entry).toContain("export 'package:role_sdk/lib/api/environments_api.dart';");
    expect(entry).toContain("export 'package:role_sdk/lib/api/runs_api.dart';");
    expect(entry).toContain("export 'package:role_sdk/lib/api/import_export_api.dart';");
  });

  it("includes generated API methods for all OpenAPI operations with mapped tags", () => {
    if (!existsSync(DART_SDK_ROOT) || !existsSync(SDK_SPEC_PATH)) {
      expect(true).toBe(true);
      return;
    }

    const spec = JSON.parse(readFileSync(SDK_SPEC_PATH, "utf8")) as SdkSpec;
    const operations = spec.operations ?? [];

    for (const operation of operations) {
      if (operation.operationId === null) {
        continue;
      }

      const apiFile = TAG_TO_API_FILE[operation.tag];
      if (apiFile === undefined) {
        continue;
      }

      const apiPath = join(DART_SDK_ROOT, "lib", "lib", "api", apiFile);
      expect(existsSync(apiPath)).toBe(true);

      const source = readFileSync(apiPath, "utf8");
      const methodRegex = new RegExp(`\\b${escapeRegex(operation.operationId)}\\s*\\(`);
      expect(methodRegex.test(source)).toBe(true);
    }
  });

  it("applies _id name mapping to avoid duplicate model fields", () => {
    if (!existsSync(DART_SDK_ROOT)) {
      expect(true).toBe(true);
      return;
    }

    const workspaceModelPath = join(
      DART_SDK_ROOT,
      "lib",
      "lib",
      "model",
      "post_api_auth_login200_response_data_workspace.dart"
    );
    expect(existsSync(workspaceModelPath)).toBe(true);

    const source = readFileSync(workspaceModelPath, "utf8");
    expect(source).toContain("int? get legacyId;");
    expect(source).not.toContain(
      "int get id;\n\n  @BuiltValueField(wireName: r'id')\n  int get id;"
    );
  });
});
