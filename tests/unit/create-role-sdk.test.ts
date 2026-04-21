import { describe, expect, it } from "vitest";

import { createRoleSdk, RoleSdkError, type TokenPair, type TokenStore } from "../../src/index.js";

describe("createRoleSdk", () => {
  it("creates a client with default timeout and capabilities", () => {
    const sdk = createRoleSdk({
      backend: "node",
      baseUrl: "https://api.example.com"
    });

    expect(sdk.capabilities().runs.cancel).toBe(true);
  });

  it("throws for missing baseUrl", () => {
    expect(() =>
      createRoleSdk({
        backend: "node",
        baseUrl: ""
      })
    ).toThrow(RoleSdkError);
  });

  it("uses provided token store", async () => {
    let stored: TokenPair | null = null;

    const tokenStore: TokenStore = {
      get: () => stored,
      set: (tokens) => {
        stored = tokens;
      },
      clear: () => {
        stored = null;
      }
    };

    const sdk = createRoleSdk({
      backend: "serverpod",
      baseUrl: "https://api.example.com",
      auth: {
        tokenStore
      }
    });

    await sdk.setTokens({ accessToken: "token-1" });

    expect(stored).toEqual(expect.objectContaining({ accessToken: "token-1" }));

    await sdk.clearTokens();
    expect(stored).toBeNull();
  });
});
