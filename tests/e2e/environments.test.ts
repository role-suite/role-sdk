import { describe, expect, it, beforeAll, afterAll } from "vitest";
import { createRoleSdk, type RoleSdkClient, type Id } from "../../src/index.js";

const E2E_BASE_URL =
  process.env.E2E_ROLE_NODE_URL || process.env.ROLE_API_URL || "http://localhost:3000";
const E2E_EMAIL = process.env.E2E_TEST_EMAIL || "test@example.com";
const E2E_PASSWORD = process.env.E2E_TEST_PASSWORD || "testpassword";

describe.skipIf(!E2E_BASE_URL || E2E_BASE_URL === "http://localhost:3000")(
  "e2e: environments",
  () => {
    let sdk: RoleSdkClient;
    let workspaceId: Id;
    let environmentId: Id;

    beforeAll(async () => {
      sdk = createRoleSdk({
        backend: "node",
        baseUrl: E2E_BASE_URL,
        auth: { mode: "token" }
      });

      const session = await sdk.auth.login({
        email: E2E_EMAIL,
        password: E2E_PASSWORD
      });

      await sdk.auth.refresh({ refreshToken: session.refreshToken ?? "" });

      const ws = await sdk.workspaces.create({
        name: "E2E Environments Test"
      });
      workspaceId = ws.id;
    });

    afterAll(async () => {
      try {
        if (workspaceId) {
          await sdk.workspaces.leave({ workspaceId });
        }
        await sdk.auth.logout({ allSessions: false });
      } catch {
        // Ignore cleanup errors
      }
    });

    it("should list environments", async () => {
      const envs = await sdk.environments.list({ workspaceId });
      expect(envs).toBeDefined();
      expect(Array.isArray(envs)).toBe(true);
    }, 10000);

    it("should create an environment", async () => {
      const env = await sdk.environments.create({
        workspaceId,
        name: "Production"
      });
      expect(env.id).toBeDefined();
      environmentId = env.id;
    }, 10000);

    it("should create environment variable", async () => {
      const variable = await sdk.environments.createVariable({
        workspaceId,
        environmentId: environmentId!,
        key: "API_KEY",
        value: "sk-test",
        isSecret: true
      });
      expect(variable.id).toBeDefined();
    }, 10000);

    it("should update environment", async () => {
      const updated = await sdk.environments.update({
        workspaceId,
        environmentId,
        name: "Production (Live)"
      });
      expect(updated.name).toBe("Production (Live)");
    }, 10000);

    it("should delete environment", async () => {
      const result = await sdk.environments.remove({ workspaceId, environmentId });
      expect(result.deleted).toBe(true);
    }, 10000);
  }
);
