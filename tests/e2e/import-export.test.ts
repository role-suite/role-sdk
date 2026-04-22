import { describe, expect, it, beforeAll, afterAll } from "vitest";
import { createRoleSdk, type RoleSdkClient, type Id } from "../../src/index.js";

const E2E_BASE_URL =
  process.env.E2E_ROLE_NODE_URL || process.env.ROLE_API_URL || "http://localhost:3000";
const E2E_EMAIL = process.env.E2E_TEST_EMAIL || "test@example.com";
const E2E_PASSWORD = process.env.E2E_TEST_PASSWORD || "testpassword";

describe.skipIf(!E2E_BASE_URL || E2E_BASE_URL === "http://localhost:3000")(
  "e2e: import-export",
  () => {
    let sdk: RoleSdkClient;
    let workspaceId: Id;
    let jobId: Id;

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
        name: "E2E Import-Export Test"
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

    it("should list import/export jobs", async () => {
      const jobs = await sdk.importExport.listJobs({ workspaceId });
      expect(jobs).toBeDefined();
      expect(Array.isArray(jobs)).toBe(true);
    }, 10000);

    it("should create an export job", async () => {
      const job = await sdk.importExport.createExport({
        workspaceId,
        includeEnvironments: false
      });
      expect(job.id).toBeDefined();
      jobId = job.id;
    }, 10000);

    it("should get job status", async () => {
      const job = await sdk.importExport.getJob({ workspaceId, jobId });
      expect(job.id).toBe(jobId);
    }, 10000);

    it("should create an import job", async () => {
      const job = await sdk.importExport.createImport({
        workspaceId,
        payload: {}
      });
      expect(job.id).toBeDefined();
    }, 10000);
  }
);
