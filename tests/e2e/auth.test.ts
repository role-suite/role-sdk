import { describe, expect, it, beforeAll, afterAll } from "vitest";
import { createRoleSdk, type RoleSdkClient } from "../../src/index.js";

const E2E_BASE_URL =
  process.env.E2E_ROLE_NODE_URL || process.env.ROLE_API_URL || "http://localhost:3000";
const E2E_EMAIL = process.env.E2E_TEST_EMAIL || "test@example.com";
const E2E_PASSWORD = process.env.E2E_TEST_PASSWORD || "testpassword";

describe.skipIf(!E2E_BASE_URL || E2E_BASE_URL === "http://localhost:3000")("e2e: auth", () => {
  let sdk: RoleSdkClient;
  let accessToken: string;
  let refreshToken: string;

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

    accessToken = session.accessToken;
    refreshToken = session.refreshToken ?? "";
  });

  afterAll(async () => {
    if (accessToken) {
      try {
        await sdk.auth.logout({ allSessions: false });
      } catch {
        // Ignore cleanup errors
      }
    }
  });

  it("should get current user", async () => {
    const me = await sdk.auth.me();
    expect(me.id).toBeDefined();
  }, 10000);

  it("should refresh token", async () => {
    const refreshed = await sdk.auth.refresh({
      refreshToken
    });
    expect(refreshed.accessToken).toBeDefined();
  }, 10000);

  it("should logout", async () => {
    const result = await sdk.auth.logout({ allSessions: false });
    expect(result.revoked).toBe(true);
  }, 10000);
});
