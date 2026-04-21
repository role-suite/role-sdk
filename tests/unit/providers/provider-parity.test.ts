import { describe, expect, it, vi } from "vitest";

import { createRoleSdk, RoleApiError, RoleAuthError } from "../../../src/index.js";

const ISO_DATE = "2026-04-21T00:00:00.000Z";

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

const serverpodResult = (result: unknown): Response => {
  return new Response(JSON.stringify({ result }), {
    status: 200,
    headers: { "content-type": "application/json" }
  });
};

describe("provider parity", () => {
  it("exposes backend-specific capabilities for optional features", () => {
    const nodeSdk = createRoleSdk({
      backend: "node",
      baseUrl: "https://api.example.com"
    });

    const serverpodSdk = createRoleSdk({
      backend: "serverpod",
      baseUrl: "https://api.example.com"
    });

    expect(nodeSdk.capabilities().auth.refresh).toBe(true);
    expect(serverpodSdk.capabilities().auth.refresh).toBe(true);
    expect(nodeSdk.capabilities().workspaces.updates).toBe(true);
    expect(serverpodSdk.capabilities().workspaces.updates).toBe(true);
    expect(nodeSdk.capabilities().runs.cancel).toBe(true);
    expect(serverpodSdk.capabilities().runs.cancel).toBe(false);
  });

  it("returns equivalent auth.me payloads from node and serverpod", async () => {
    const nodeFetch = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/api/auth/me")) {
        return Promise.resolve(nodeEnvelope({ id: "user-1", createdAt: ISO_DATE }));
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const serverpodFetch = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/rpc/auth/me")) {
        return Promise.resolve(serverpodResult({ id: "user-1", createdAt: ISO_DATE }));
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const nodeSdk = createRoleSdk({
      backend: "node",
      baseUrl: "https://api.example.com",
      fetch: nodeFetch
    });

    const serverpodSdk = createRoleSdk({
      backend: "serverpod",
      baseUrl: "https://api.example.com",
      fetch: serverpodFetch
    });

    const [nodeMe, serverpodMe] = await Promise.all([nodeSdk.auth.me(), serverpodSdk.auth.me()]);

    expect(nodeMe).toEqual(serverpodMe);
    expect(nodeMe).toEqual({ id: "user-1", createdAt: ISO_DATE });
    expect(typeof (nodeMe as { createdAt: unknown }).createdAt).toBe("string");
  });

  it("maps auth failures to the same typed error across providers", async () => {
    const nodeFetch = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/api/auth/me")) {
        return Promise.resolve(
          new Response(JSON.stringify({ message: "unauthorized" }), { status: 401 })
        );
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const serverpodFetch = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/rpc/auth/me")) {
        return Promise.resolve(
          new Response(
            JSON.stringify({ error: { code: "ROLE_AUTH_ERROR", message: "unauthorized" } }),
            {
              status: 200,
              headers: { "content-type": "application/json" }
            }
          )
        );
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const nodeSdk = createRoleSdk({
      backend: "node",
      baseUrl: "https://api.example.com",
      fetch: nodeFetch,
      auth: { autoRefresh: false }
    });

    const serverpodSdk = createRoleSdk({
      backend: "serverpod",
      baseUrl: "https://api.example.com",
      fetch: serverpodFetch,
      auth: { autoRefresh: false }
    });

    await expect(nodeSdk.auth.me()).rejects.toBeInstanceOf(RoleAuthError);
    await expect(serverpodSdk.auth.me()).rejects.toBeInstanceOf(RoleAuthError);
  });

  it("uses provider-specific workspace routes while keeping return shape", async () => {
    const nodeFetch = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/api/workspaces")) {
        return Promise.resolve(nodeEnvelope([{ id: "ws-1" }]));
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const serverpodFetch = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/rpc/workspaces/list")) {
        return Promise.resolve(serverpodResult([{ id: "ws-1" }]));
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const nodeSdk = createRoleSdk({
      backend: "node",
      baseUrl: "https://api.example.com",
      fetch: nodeFetch
    });

    const serverpodSdk = createRoleSdk({
      backend: "serverpod",
      baseUrl: "https://api.example.com",
      fetch: serverpodFetch
    });

    const [nodeList, serverpodList] = await Promise.all([
      nodeSdk.workspaces.list(),
      serverpodSdk.workspaces.list()
    ]);

    expect(nodeList).toEqual(serverpodList);
    expect(nodeFetch).toHaveBeenCalledWith(
      "https://api.example.com/api/workspaces",
      expect.objectContaining({ method: "GET" })
    );
    expect(serverpodFetch).toHaveBeenCalledWith(
      "https://api.example.com/rpc/workspaces/list",
      expect.objectContaining({ method: "POST" })
    );
  });

  it("throws unsupported capability errors consistently", async () => {
    const serverpodFetch = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/rpc/runs/cancel")) {
        return Promise.resolve(
          serverpodResult({ id: "r-1", workspaceId: "ws-1", status: "cancelled" })
        );
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const serverpodSdk = createRoleSdk({
      backend: "serverpod",
      baseUrl: "https://api.example.com",
      fetch: serverpodFetch
    });

    await expect(
      serverpodSdk.runs.cancel({ workspaceId: "ws-1", runId: "r-1" })
    ).rejects.toBeInstanceOf(RoleApiError);
  });

  it("keeps parity for auth register/login/refresh/logout methods", async () => {
    const nodeFetch = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/api/auth/register")) {
        return Promise.resolve(
          nodeEnvelope({
            access_token: "access-register",
            refresh_token: "refresh-register",
            user: { id: "user-1", email: "user@example.com", created_at: ISO_DATE }
          })
        );
      }

      if (url.endsWith("/api/auth/login")) {
        return Promise.resolve(
          nodeEnvelope({
            accessToken: "access-login",
            refreshToken: "refresh-login",
            user: { id: "user-1", email: "user@example.com", createdAt: ISO_DATE }
          })
        );
      }

      if (url.endsWith("/api/auth/refresh")) {
        return Promise.resolve(
          nodeEnvelope({
            token: "access-refresh",
            refresh_token: "refresh-refresh",
            user: { id: "user-1", email: "user@example.com", created_at: ISO_DATE }
          })
        );
      }

      if (url.endsWith("/api/auth/logout")) {
        return Promise.resolve(nodeEnvelope({ revoked: true }));
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const serverpodFetch = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/rpc/auth/register")) {
        return Promise.resolve(
          serverpodResult({
            accessToken: "access-register",
            refreshToken: "refresh-register",
            profile: { userId: "user-1", email: "user@example.com", createdAt: ISO_DATE }
          })
        );
      }

      if (url.endsWith("/rpc/auth/login")) {
        return Promise.resolve(
          serverpodResult({
            accessToken: "access-login",
            refreshToken: "refresh-login",
            user: { id: "user-1", email: "user@example.com", createdAt: ISO_DATE }
          })
        );
      }

      if (url.endsWith("/rpc/auth/refresh")) {
        return Promise.resolve(
          serverpodResult({
            token: "access-refresh",
            refreshToken: "refresh-refresh",
            me: { id: "user-1", email: "user@example.com", createdAt: ISO_DATE }
          })
        );
      }

      if (url.endsWith("/rpc/auth/logout")) {
        return Promise.resolve(serverpodResult({ revoked: true }));
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const nodeSdk = createRoleSdk({
      backend: "node",
      baseUrl: "https://api.example.com",
      fetch: nodeFetch,
      auth: { autoRefresh: false }
    });

    const serverpodSdk = createRoleSdk({
      backend: "serverpod",
      baseUrl: "https://api.example.com",
      fetch: serverpodFetch,
      auth: { autoRefresh: false }
    });

    const [nodeRegister, serverpodRegister] = await Promise.all([
      nodeSdk.auth.register({ email: "user@example.com", password: "secret" }),
      serverpodSdk.auth.register({ email: "user@example.com", password: "secret" })
    ]);
    expect(nodeRegister).toEqual(serverpodRegister);

    const [nodeLogin, serverpodLogin] = await Promise.all([
      nodeSdk.auth.login({ email: "user@example.com", password: "secret" }),
      serverpodSdk.auth.login({ email: "user@example.com", password: "secret" })
    ]);
    expect(nodeLogin).toEqual(serverpodLogin);

    const [nodeRefresh, serverpodRefresh] = await Promise.all([
      nodeSdk.auth.refresh({ refreshToken: "refresh-login" }),
      serverpodSdk.auth.refresh({ refreshToken: "refresh-login" })
    ]);
    expect(nodeRefresh).toEqual(serverpodRefresh);

    const [nodeLogout, serverpodLogout] = await Promise.all([
      nodeSdk.auth.logout(),
      serverpodSdk.auth.logout()
    ]);
    expect(nodeLogout).toEqual(serverpodLogout);
  });

  it("keeps parity for workspaces get/create methods", async () => {
    const nodeFetch = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/api/workspaces/ws-1")) {
        return Promise.resolve(
          nodeEnvelope({ id: "ws-1", name: "Workspace One", created_at: "2026-04-21T11:00:00Z" })
        );
      }

      if (url.endsWith("/api/workspaces")) {
        return Promise.resolve(
          nodeEnvelope({ id: "ws-2", name: "Workspace Two", created_at: "2026-04-21T12:00:00Z" })
        );
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const serverpodFetch = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/rpc/workspaces/get")) {
        return Promise.resolve(
          serverpodResult({
            workspaceId: "ws-1",
            workspaceName: "Workspace One",
            createdAt: "2026-04-21T11:00:00Z"
          })
        );
      }

      if (url.endsWith("/rpc/workspaces/create")) {
        return Promise.resolve(
          serverpodResult({
            workspaceId: "ws-2",
            workspaceName: "Workspace Two",
            createdAt: "2026-04-21T12:00:00Z"
          })
        );
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const nodeSdk = createRoleSdk({
      backend: "node",
      baseUrl: "https://api.example.com",
      fetch: nodeFetch,
      auth: { autoRefresh: false }
    });

    const serverpodSdk = createRoleSdk({
      backend: "serverpod",
      baseUrl: "https://api.example.com",
      fetch: serverpodFetch,
      auth: { autoRefresh: false }
    });

    const [nodeGet, serverpodGet] = await Promise.all([
      nodeSdk.workspaces.get({ workspaceId: "ws-1" }),
      serverpodSdk.workspaces.get({ workspaceId: "ws-1" })
    ]);
    expect(nodeGet).toEqual(serverpodGet);

    const [nodeCreate, serverpodCreate] = await Promise.all([
      nodeSdk.workspaces.create({ name: "Workspace Two" }),
      serverpodSdk.workspaces.create({ name: "Workspace Two" })
    ]);
    expect(nodeCreate).toEqual(serverpodCreate);
  });

  it("enforces capability-gated run cancellation", async () => {
    const nodeFetch = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/api/workspaces/ws-1/runs/r-1/cancel")) {
        return Promise.resolve(
          nodeEnvelope({ id: "r-1", workspaceId: "ws-1", status: "cancelled" })
        );
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const serverpodFetch = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/rpc/runs/cancel")) {
        return Promise.resolve(
          serverpodResult({ id: "r-1", workspaceId: "ws-1", status: "cancelled" })
        );
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const nodeSdk = createRoleSdk({
      backend: "node",
      baseUrl: "https://api.example.com",
      fetch: nodeFetch,
      auth: { autoRefresh: false }
    });

    const serverpodSdk = createRoleSdk({
      backend: "serverpod",
      baseUrl: "https://api.example.com",
      fetch: serverpodFetch,
      auth: { autoRefresh: false }
    });

    await expect(nodeSdk.runs.cancel({ workspaceId: "ws-1", runId: "r-1" })).resolves.toEqual(
      expect.objectContaining({ id: "r-1", status: "cancelled" })
    );
    await expect(
      serverpodSdk.runs.cancel({ workspaceId: "ws-1", runId: "r-1" })
    ).rejects.toBeInstanceOf(RoleApiError);
  });
});
