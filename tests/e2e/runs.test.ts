import { describe, expect, it, beforeAll, afterAll } from "vitest";
import { createRoleSdk, type RoleSdkClient, type Id } from "../../src/index.js";

const E2E_BASE_URL =
  process.env.E2E_ROLE_NODE_URL || process.env.ROLE_API_URL || "http://localhost:3000";
const E2E_EMAIL = process.env.E2E_TEST_EMAIL || "test@example.com";
const E2E_PASSWORD = process.env.E2E_TEST_PASSWORD || "testpassword";

describe.skipIf(!E2E_BASE_URL || E2E_BASE_URL === "http://localhost:3000")("e2e: runs", () => {
  let sdk: RoleSdkClient;
  let workspaceId: Id;
  let environmentId: Id;
  let runId: Id;

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
      name: "E2E Runs Test"
    });
    workspaceId = ws.id;

    await sdk.collections.create({
      workspaceId,
      name: "Test Collection"
    });

    const env = await sdk.environments.create({
      workspaceId,
      name: "Test Env"
    });
    environmentId = env.id;
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

  it("should create an adhoc run", async () => {
    const run = await sdk.runs.create({
      workspaceId,
      source: {
        kind: "adhoc",
        request: {
          method: "GET",
          url: "https://api.example.com/health"
        }
      },
      environmentId
    });
    expect(run.id).toBeDefined();
    runId = run.id;
  }, 30000);

  it("should get run status", async () => {
    const run = await sdk.runs.get({ workspaceId, runId });
    expect(run.id).toBe(runId);
    expect(run.status).toBeDefined();
  }, 10000);
});
