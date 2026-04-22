import { describe, expect, it, vi } from "vitest";

import { createRoleSdk, RoleAuthError } from "../../../src/index.js";

const requestUrl = (input: Parameters<typeof fetch>[0]): string => {
  if (typeof input === "string") {
    return input;
  }
  if (input instanceof URL) {
    return input.toString();
  }
  return input.url;
};

const nodeEnvelope = (data: unknown): Response => {
  return new Response(JSON.stringify({ success: true, data }), {
    status: 200,
    headers: { "content-type": "application/json" }
  });
};

const rpcResult = (result: unknown): Response => {
  return new Response(JSON.stringify({ result }), {
    status: 200,
    headers: { "content-type": "application/json" }
  });
};

describe("auth module", () => {
  describe("register", () => {
    it("registers new user via node provider", async () => {
      const fetchMock = vi.fn<typeof fetch>((input) => {
        const url = requestUrl(input);
        if (url.endsWith("/api/auth/register")) {
          return Promise.resolve(
            nodeEnvelope({
              accessToken: "new-token",
              refreshToken: "new-refresh",
              user: { id: "user-1", email: "new@example.com" }
            })
          );
        }
        return Promise.resolve(new Response("not found", { status: 404 }));
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock
      });

      const result = await sdk.auth.register({
        email: "new@example.com",
        password: "secret123"
      });

      expect(result.accessToken).toBe("new-token");
      expect(result.user?.email).toBe("new@example.com");
    });

    it("registers new user via serverpod provider", async () => {
      const fetchMock = vi.fn<typeof fetch>((input) => {
        const url = requestUrl(input);
        if (url.endsWith("/rpc/auth/register")) {
          return Promise.resolve(
            rpcResult({
              accessToken: "sp-token",
              refreshToken: "sp-refresh",
              profile: { userId: "user-2", email: "sp@example.com" }
            })
          );
        }
        return Promise.resolve(new Response("not found", { status: 404 }));
      });

      const sdk = createRoleSdk({
        backend: "serverpod",
        baseUrl: "https://api.example.com",
        fetch: fetchMock
      });

      const result = await sdk.auth.register({
        email: "sp@example.com",
        password: "secret456"
      });

      expect(result.accessToken).toBe("sp-token");
      expect(result.user?.email).toBe("sp@example.com");
    });
  });

  describe("login", () => {
    it("logs in user via node provider", async () => {
      const fetchMock = vi.fn<typeof fetch>((input) => {
        const url = requestUrl(input);
        if (url.endsWith("/api/auth/login")) {
          return Promise.resolve(
            nodeEnvelope({
              accessToken: "login-token",
              refreshToken: "login-refresh",
              user: { id: "user-1", email: "user@example.com" }
            })
          );
        }
        return Promise.resolve(new Response("not found", { status: 404 }));
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock
      });

      const result = await sdk.auth.login({
        email: "user@example.com",
        password: "password"
      });

      expect(result.accessToken).toBe("login-token");
      expect(result.user?.id).toBe("user-1");
    });

    it("throws on invalid credentials", async () => {
      const fetchMock = vi.fn<typeof fetch>(() => {
        return Promise.resolve(
          new Response(JSON.stringify({ message: "Invalid credentials" }), { status: 401 })
        );
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock,
        auth: { autoRefresh: false }
      });

      await expect(
        sdk.auth.login({ email: "bad@example.com", password: "wrong" })
      ).rejects.toBeInstanceOf(RoleAuthError);
    });
  });

  describe("refresh", () => {
    it("refreshes token via node provider", async () => {
      const fetchMock = vi.fn<typeof fetch>((input) => {
        const url = requestUrl(input);
        if (url.endsWith("/api/auth/refresh")) {
          return Promise.resolve(
            nodeEnvelope({
              accessToken: "refreshed-token",
              refreshToken: "refreshed-refresh"
            })
          );
        }
        return Promise.resolve(new Response("not found", { status: 404 }));
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock
      });

      const result = await sdk.auth.refresh({ refreshToken: "old-refresh" });

      expect(result.accessToken).toBe("refreshed-token");
    });

    it("refreshes token via serverpod provider", async () => {
      const fetchMock = vi.fn<typeof fetch>((input) => {
        const url = requestUrl(input);
        if (url.endsWith("/rpc/auth/refresh")) {
          return Promise.resolve(
            rpcResult({
              accessToken: "sp-refreshed",
              refreshToken: "sp-refreshed-refresh"
            })
          );
        }
        return Promise.resolve(new Response("not found", { status: 404 }));
      });

      const sdk = createRoleSdk({
        backend: "serverpod",
        baseUrl: "https://api.example.com",
        fetch: fetchMock
      });

      const result = await sdk.auth.refresh({ refreshToken: "old-sp-refresh" });

      expect(result.accessToken).toBe("sp-refreshed");
    });
  });

  describe("logout", () => {
    it("logs out user via node provider", async () => {
      const fetchMock = vi.fn<typeof fetch>((input) => {
        const url = requestUrl(input);
        if (url.endsWith("/api/auth/logout")) {
          return Promise.resolve(nodeEnvelope({ revoked: true }));
        }
        return Promise.resolve(new Response("not found", { status: 404 }));
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock
      });

      const result = await sdk.auth.logout();

      expect(result.revoked).toBe(true);
    });

    it("logs out user via serverpod provider", async () => {
      const fetchMock = vi.fn<typeof fetch>((input) => {
        const url = requestUrl(input);
        if (url.endsWith("/rpc/auth/logout")) {
          return Promise.resolve(rpcResult({ revoked: true }));
        }
        return Promise.resolve(new Response("not found", { status: 404 }));
      });

      const sdk = createRoleSdk({
        backend: "serverpod",
        baseUrl: "https://api.example.com",
        fetch: fetchMock
      });

      const result = await sdk.auth.logout();

      expect(result.revoked).toBe(true);
    });
  });

  describe("me", () => {
    it("gets current user via node provider", async () => {
      const fetchMock = vi.fn<typeof fetch>((input) => {
        const url = requestUrl(input);
        if (url.endsWith("/api/auth/me")) {
          return Promise.resolve(
            nodeEnvelope({
              id: "user-1",
              email: "me@example.com",
              name: "Test User"
            })
          );
        }
        return Promise.resolve(new Response("not found", { status: 404 }));
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock,
        auth: { accessToken: "token" }
      });

      const user = await sdk.auth.me();

      expect(user.id).toBe("user-1");
      expect(user.email).toBe("me@example.com");
    });

    it("gets current user via serverpod provider", async () => {
      const fetchMock = vi.fn<typeof fetch>((input) => {
        const url = requestUrl(input);
        if (url.endsWith("/rpc/auth/me")) {
          return Promise.resolve(
            rpcResult({
              userId: "user-2",
              email: "sp@example.com",
              name: "SP User"
            })
          );
        }
        return Promise.resolve(new Response("not found", { status: 404 }));
      });

      const sdk = createRoleSdk({
        backend: "serverpod",
        baseUrl: "https://api.example.com",
        fetch: fetchMock,
        auth: { accessToken: "token" }
      });

      const user = await sdk.auth.me();

      expect(user.id).toBe("user-2");
      expect(user.email).toBe("sp@example.com");
    });

    it("includes memberships in user response", async () => {
      const fetchMock = vi.fn<typeof fetch>(() => {
        return Promise.resolve(
          nodeEnvelope({
            id: "user-1",
            email: "member@example.com",
            memberships: [
              { workspaceId: "ws-1", role: "owner" },
              { workspaceId: "ws-2", role: "editor" }
            ]
          })
        );
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock,
        auth: { accessToken: "token" }
      });

      const user = await sdk.auth.me();

      expect(user.memberships).toHaveLength(2);
      expect(user.memberships?.[0]?.workspaceId).toBe("ws-1");
      expect(user.memberships?.[1]?.role).toBe("editor");
    });
  });
});
