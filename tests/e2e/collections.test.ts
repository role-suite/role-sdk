import { describe, expect, it, beforeAll, afterAll } from "vitest";
import { createRoleSdk, type RoleSdkClient, type Id } from "../../src/index.js";

const E2E_BASE_URL =
  process.env.E2E_ROLE_NODE_URL || process.env.ROLE_API_URL || "http://localhost:3000";
const E2E_EMAIL = process.env.E2E_TEST_EMAIL || "test@example.com";
const E2E_PASSWORD = process.env.E2E_TEST_PASSWORD || "testpassword";

describe.skipIf(!E2E_BASE_URL || E2E_BASE_URL === "http://localhost:3000")(
  "e2e: collections",
  () => {
    let sdk: RoleSdkClient;
    let workspaceId: Id;
    let collectionId: Id;

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
        name: "E2E Collections Test"
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

    it("should list collections", async () => {
      const collections = await sdk.collections.list({ workspaceId });
      expect(collections).toBeDefined();
      expect(Array.isArray(collections)).toBe(true);
    }, 10000);

    it("should create a collection", async () => {
      const col = await sdk.collections.create({
        workspaceId,
        name: "Test Collection"
      });
      expect(col.id).toBeDefined();
      collectionId = col.id;
    }, 10000);

    it("should update collection", async () => {
      const updated = await sdk.collections.update({
        workspaceId,
        collectionId,
        name: "Updated Collection"
      });
      expect(updated.name).toBe("Updated Collection");
    }, 10000);

    it("should create a folder", async () => {
      const folder = await sdk.collections.createFolder({
        workspaceId,
        collectionId,
        name: "Test Folder"
      });
      expect(folder.id).toBeDefined();
    }, 10000);

    it("should create an endpoint", async () => {
      const endpoint = await sdk.collections.createEndpoint({
        workspaceId,
        collectionId,
        name: "Test Endpoint",
        method: "GET",
        url: "https://api.example.com/test"
      });
      expect(endpoint.id).toBeDefined();
    }, 10000);

    it("should delete collection", async () => {
      const result = await sdk.collections.remove({ workspaceId, collectionId });
      expect(result.deleted).toBe(true);
    }, 10000);
  }
);
