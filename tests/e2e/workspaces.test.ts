import { describe, expect, it, beforeAll, afterAll } from "vitest";
import { createRoleSdk, type RoleSdkClient, type Id } from "../../src/index.js";

const E2E_BASE_URL =
  process.env.E2E_ROLE_NODE_URL || process.env.ROLE_API_URL || "http://localhost:3000";
const E2E_EMAIL = process.env.E2E_TEST_EMAIL || "test@example.com";
const E2E_PASSWORD = process.env.E2E_TEST_PASSWORD || "testpassword";

describe.skipIf(!E2E_BASE_URL || E2E_BASE_URL === "http://localhost:3000")(
  "e2e: workspaces",
  () => {
    let sdk: RoleSdkClient;
    let workspaceId: Id;

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
    });

    afterAll(async () => {
      try {
        await sdk.auth.logout({ allSessions: false });
      } catch {
        // Ignore cleanup errors
      }
    });

    it("should list workspaces", async () => {
      const workspaces = await sdk.workspaces.list();
      expect(workspaces).toBeDefined();
      expect(Array.isArray(workspaces)).toBe(true);
    }, 10000);

    it("should create a workspace", async () => {
      const ws = await sdk.workspaces.create({
        name: "E2E Test Workspace"
      });
      expect(ws.id).toBeDefined();
      workspaceId = ws.id;
    }, 10000);

    it("should get workspace details", async () => {
      const ws = await sdk.workspaces.get({ workspaceId });
      expect(ws.id).toBe(workspaceId);
    }, 10000);

    it("should list workspace members", async () => {
      const members = await sdk.workspaces.listMembers({ workspaceId });
      expect(members).toBeDefined();
      expect(Array.isArray(members)).toBe(true);
    }, 10000);

    it("should leave workspace", async () => {
      const result = await sdk.workspaces.leave({ workspaceId });
      expect(result.left).toBe(true);
    }, 10000);
  }
);
