import { describe, expect, it, vi } from "vitest";

import { createRoleSdk, RoleApiError, RoleAuthError } from "../../src/index.js";

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
  it("returns identical capabilities for node and serverpod", () => {
    const nodeSdk = createRoleSdk({
      backend: "node",
      baseUrl: "https://api.example.com"
    });

    const serverpodSdk = createRoleSdk({
      backend: "serverpod",
      baseUrl: "https://api.example.com"
    });

    expect(nodeSdk.capabilities()).toEqual(serverpodSdk.capabilities());
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
        return Promise.resolve(new Response(JSON.stringify({ message: "unauthorized" }), { status: 401 }));
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const serverpodFetch = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/rpc/auth/me")) {
        return Promise.resolve(
          new Response(JSON.stringify({ error: { code: "ROLE_AUTH_ERROR", message: "unauthorized" } }), {
            status: 200,
            headers: { "content-type": "application/json" }
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
    const nodeSdk = createRoleSdk({
      backend: "node",
      baseUrl: "https://api.example.com"
    });

    const serverpodSdk = createRoleSdk({
      backend: "serverpod",
      baseUrl: "https://api.example.com"
    });

    await expect(nodeSdk.collections["list"]!()).rejects.toBeInstanceOf(RoleApiError);
    await expect(serverpodSdk.collections["list"]!()).rejects.toBeInstanceOf(RoleApiError);
  });
});
