import { describe, expect, it, vi } from "vitest";

import { createRoleSdk } from "../../../src/index.js";

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

describe("phase4 inWorkspace scoped client", () => {
  it("creates scoped client with workspace id embedded", async () => {
    const nodeFetch = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/api/workspaces/ws-1/environments")) {
        return Promise.resolve(
          nodeEnvelope([{ id: "env-1", workspace_id: "ws-1", name: "Development" }])
        );
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const sdk = createRoleSdk({
      backend: "node",
      baseUrl: "https://api.example.com",
      fetch: nodeFetch
    });

    const wsScoped = sdk.inWorkspace("ws-1");
    const result = await wsScoped.environments.list();

    expect(result).toHaveLength(1);
    expect(result[0]!.name).toBe("Development");
    expect(nodeFetch).toHaveBeenCalledWith(
      "https://api.example.com/api/workspaces/ws-1/environments",
      expect.objectContaining({ method: "GET" })
    );
  });

  it("scoped environments client omits workspaceId from input", async () => {
    const nodeFetch = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/api/workspaces/ws-1/environments")) {
        return Promise.resolve(
          nodeEnvelope({ id: "env-2", workspace_id: "ws-1", name: "New Env" })
        );
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const sdk = createRoleSdk({
      backend: "node",
      baseUrl: "https://api.example.com",
      fetch: nodeFetch
    });

    const wsScoped = sdk.inWorkspace("ws-1");
    const result = await wsScoped.environments.create({ name: "New Env" });

    expect(result.name).toBe("New Env");
    expect(nodeFetch).toHaveBeenCalledWith(
      "https://api.example.com/api/workspaces/ws-1/environments",
      expect.objectContaining({
        method: "POST",
        body: JSON.stringify({ name: "New Env" })
      })
    );
  });

  it("scoped runs client creates run with workspaceId embedded", async () => {
    const nodeFetch = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/api/workspaces/ws-1/runs")) {
        return Promise.resolve(
          nodeEnvelope({
            id: "r-1",
            workspace_id: "ws-1",
            status: "pending",
            source: { kind: "adhoc", request: { method: "GET", url: "https://api.example.com" } }
          })
        );
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const sdk = createRoleSdk({
      backend: "node",
      baseUrl: "https://api.example.com",
      fetch: nodeFetch
    });

    const wsScoped = sdk.inWorkspace("ws-1");
    const result = await wsScoped.runs.create({
      source: { kind: "adhoc", request: { method: "GET", url: "https://api.example.com" } }
    });

    expect(result.id).toBe("r-1");
    expect(nodeFetch).toHaveBeenCalledWith(
      "https://api.example.com/api/workspaces/ws-1/runs",
      expect.objectContaining({ method: "POST" })
    );
  });

  it("scoped collections client lists collections for workspace", async () => {
    const nodeFetch = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/api/workspaces/ws-1/collections")) {
        return Promise.resolve(
          nodeEnvelope([{ id: "col-1", workspace_id: "ws-1", name: "API Collection" }])
        );
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const sdk = createRoleSdk({
      backend: "node",
      baseUrl: "https://api.example.com",
      fetch: nodeFetch
    });

    const wsScoped = sdk.inWorkspace("ws-1");
    const result = await wsScoped.collections.list();

    expect(result).toHaveLength(1);
    expect(result[0]!.name).toBe("API Collection");
  });

  it("scoped runs client cancels run with workspaceId embedded", async () => {
    const nodeFetch = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/api/workspaces/ws-1/runs/r-1/cancel")) {
        return Promise.resolve(
          nodeEnvelope({
            id: "r-1",
            workspace_id: "ws-1",
            status: "cancelled"
          })
        );
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const sdk = createRoleSdk({
      backend: "node",
      baseUrl: "https://api.example.com",
      fetch: nodeFetch
    });

    const wsScoped = sdk.inWorkspace("ws-1");
    const result = await wsScoped.runs.cancel("r-1");

    expect(result.status).toBe("cancelled");
  });

  it("scoped importExport client lists jobs with workspaceId embedded", async () => {
    const nodeFetch = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/api/workspaces/ws-1/import-export/jobs")) {
        return Promise.resolve(
          nodeEnvelope({
            items: [{ id: "job-1", workspace_id: "ws-1", type: "export", status: "completed" }]
          })
        );
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const sdk = createRoleSdk({
      backend: "node",
      baseUrl: "https://api.example.com",
      fetch: nodeFetch
    });

    const wsScoped = sdk.inWorkspace("ws-1");
    const result = await wsScoped.importExport.listJobs();

    expect(result).toHaveLength(1);
    expect(result[0]!.type).toBe("export");
  });

  it("returns same workspaceId across multiple scoped operations", async () => {
    const nodeFetch = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.includes("/workspaces/ws-1/")) {
        if (url.endsWith("/environments")) {
          return Promise.resolve(nodeEnvelope([]));
        }
        if (url.endsWith("/collections")) {
          return Promise.resolve(nodeEnvelope([]));
        }
        if (url.endsWith("/runs") && !url.includes("cancel")) {
          return Promise.resolve(
            nodeEnvelope({ id: "r-1", workspace_id: "ws-1", status: "pending" })
          );
        }
        if (url.endsWith("/import-export/jobs")) {
          return Promise.resolve(nodeEnvelope({ items: [] }));
        }
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const sdk = createRoleSdk({
      backend: "node",
      baseUrl: "https://api.example.com",
      fetch: nodeFetch
    });

    const wsScoped = sdk.inWorkspace("ws-1");

    await wsScoped.environments.list();
    await wsScoped.collections.list();
    await wsScoped.runs.create({
      source: { kind: "adhoc", request: { method: "GET", url: "https://test.com" } }
    });
    await wsScoped.importExport.listJobs();

    const calls = nodeFetch.mock.calls;
    expect(calls.length).toBe(4);

    for (const call of calls) {
      const url = requestUrl(call[0]);
      expect(url).toContain("/workspaces/ws-1/");
    }
  });
});
