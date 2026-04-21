import { describe, expect, it, vi } from "vitest";

import {
  createRoleSdk,
  RoleApiError,
  RoleAuthError,
  RoleValidationError,
  type TokenPair,
  type TokenStore
} from "../../../src/index.js";

const requestUrl = (input: Parameters<typeof fetch>[0]): string => {
  if (typeof input === "string") {
    return input;
  }

  if (input instanceof URL) {
    return input.toString();
  }

  return input.url;
};

const okEnvelope = (data: unknown): Response => {
  return new Response(JSON.stringify({ success: true, data }), {
    status: 200,
    headers: {
      "content-type": "application/json",
      "x-request-id": "req-1"
    }
  });
};

describe("createRoleSdk", () => {
  it("throws when baseUrl is missing", () => {
    expect(() =>
      createRoleSdk({
        backend: "node",
        baseUrl: ""
      })
    ).toThrow(RoleValidationError);
  });

  it("uses token store through setTokens and clearTokens", async () => {
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
      backend: "node",
      baseUrl: "https://api.example.com",
      auth: {
        tokenStore
      }
    });

    await sdk.setTokens({ accessToken: "token-1", refreshToken: "refresh-1" });
    expect(stored).toEqual(
      expect.objectContaining({ accessToken: "token-1", refreshToken: "refresh-1" })
    );

    await sdk.clearTokens();
    expect(stored).toBeNull();
  });

  it("performs node auth and workspace calls through provider", async () => {
    const fetchMock = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/api/auth/login")) {
        return Promise.resolve(okEnvelope({ accessToken: "token-1", refreshToken: "refresh-1" }));
      }

      if (url.endsWith("/api/workspaces")) {
        return Promise.resolve(okEnvelope([{ id: "ws-1" }]));
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const sdk = createRoleSdk({
      backend: "node",
      baseUrl: "https://api.example.com",
      fetch: fetchMock
    });

    await sdk.auth.login({ email: "a@b.com", password: "x" });
    const workspaces = await sdk.workspaces.list();

    expect(workspaces).toEqual([{ id: "ws-1" }]);
    expect(fetchMock).toHaveBeenCalledTimes(2);
  });

  it("refreshes token once for concurrent 401 responses", async () => {
    let meCalls = 0;
    let refreshCalls = 0;

    const fetchMock = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/api/auth/refresh")) {
        refreshCalls += 1;
        return Promise.resolve(okEnvelope({ accessToken: "token-2", refreshToken: "refresh-2" }));
      }

      if (url.endsWith("/api/auth/me")) {
        meCalls += 1;
        if (meCalls <= 2) {
          return Promise.resolve(
            new Response(JSON.stringify({ message: "unauthorized" }), { status: 401 })
          );
        }

        return Promise.resolve(okEnvelope({ id: "user-1" }));
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const sdk = createRoleSdk({
      backend: "node",
      baseUrl: "https://api.example.com",
      fetch: fetchMock,
      auth: {
        autoRefresh: true,
        accessToken: "token-1",
        refreshToken: "refresh-1"
      }
    });

    const [a, b] = await Promise.all([sdk.auth.me(), sdk.auth.me()]);

    expect(a).toEqual({ id: "user-1" });
    expect(b).toEqual({ id: "user-1" });
    expect(refreshCalls).toBe(1);
  });

  it("throws typed api error for unsuccessful envelope", async () => {
    const fetchMock = vi.fn<typeof fetch>(() => {
      return Promise.resolve(
        new Response(JSON.stringify({ success: false, message: "boom" }), {
          status: 200,
          headers: {
            "content-type": "application/json"
          }
        })
      );
    });

    const sdk = createRoleSdk({
      backend: "node",
      baseUrl: "https://api.example.com",
      fetch: fetchMock
    });

    await expect(sdk.auth.me()).rejects.toBeInstanceOf(RoleApiError);
  });

  it("throws auth error when refresh token is missing", async () => {
    const fetchMock = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/api/auth/me")) {
        return Promise.resolve(
          new Response(JSON.stringify({ message: "unauthorized" }), { status: 401 })
        );
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const sdk = createRoleSdk({
      backend: "node",
      baseUrl: "https://api.example.com",
      fetch: fetchMock,
      auth: {
        autoRefresh: true,
        accessToken: "token-1"
      }
    });

    await expect(sdk.auth.me()).rejects.toBeInstanceOf(RoleAuthError);
  });
});
