import { describe, expect, it, vi } from "vitest";

import { createRoleSdk, RoleApiError } from "../../../src/index.js";

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

describe("phase4 runs module", () => {
  it("maps run execution result from node provider", async () => {
    const nodeFetch = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/api/workspaces/ws-1/runs/r-1")) {
        return Promise.resolve(
          nodeEnvelope({
            id: "r-1",
            workspace_id: "ws-1",
            status: "completed",
            source: { kind: "adhoc", request: { method: "GET", url: "https://api.example.com" } },
            created_at: ISO_DATE
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

    const result = await sdk.runs.get({ workspaceId: "ws-1", runId: "r-1" });

    expect(result.id).toBe("r-1");
    expect(result.status).toBe("completed");
    expect(result.source).toEqual({
      kind: "adhoc",
      request: { method: "GET", url: "https://api.example.com" }
    });
  });

  it("maps run execution result from serverpod provider", async () => {
    const serverpodFetch = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/rpc/runs/get")) {
        return Promise.resolve(
          serverpodResult({
            runId: "r-1",
            workspaceId: "ws-1",
            status: "running",
            source: { kind: "collection", collectionId: "col-1", endpointId: "ep-1" },
            createdAt: ISO_DATE
          })
        );
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const sdk = createRoleSdk({
      backend: "serverpod",
      baseUrl: "https://api.example.com",
      fetch: serverpodFetch
    });

    const result = await sdk.runs.get({ workspaceId: "ws-1", runId: "r-1" });

    expect(result.id).toBe("r-1");
    expect(result.status).toBe("running");
  });

  it("creates run with adhoc source on node provider", async () => {
    const nodeFetch = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/api/workspaces/ws-1/runs")) {
        return Promise.resolve(
          nodeEnvelope({
            id: "r-2",
            workspace_id: "ws-1",
            status: "pending",
            source: { kind: "adhoc", request: { method: "POST", url: "https://api.example.com", body: { test: true } } }
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

    const result = await sdk.runs.create({
      workspaceId: "ws-1",
      source: {
        kind: "adhoc",
        request: { method: "POST", url: "https://api.example.com", body: { test: true } }
      }
    });

    expect(result.id).toBe("r-2");
    expect(result.status).toBe("pending");
    expect(nodeFetch).toHaveBeenCalledWith(
      "https://api.example.com/api/workspaces/ws-1/runs",
      expect.objectContaining({
        method: "POST",
        body: JSON.stringify({
          source: { kind: "adhoc", request: { method: "POST", url: "https://api.example.com", body: { test: true } } }
        })
      })
    );
  });

  it("creates run with collection source on serverpod provider", async () => {
    const serverpodFetch = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/rpc/runs/create")) {
        return Promise.resolve(
          serverpodResult({
            runId: "r-2",
            workspaceId: "ws-1",
            status: "pending",
            source: { kind: "collection", collectionId: "col-1", endpointId: "ep-1", exampleId: "ex-1" }
          })
        );
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const sdk = createRoleSdk({
      backend: "serverpod",
      baseUrl: "https://api.example.com",
      fetch: serverpodFetch
    });

    const result = await sdk.runs.create({
      workspaceId: "ws-1",
      source: {
        kind: "collection",
        collectionId: "col-1",
        endpointId: "ep-1",
        exampleId: "ex-1"
      }
    });

    expect(result.id).toBe("r-2");
    expect(result.source).toEqual({
      kind: "collection",
      collectionId: "col-1",
      endpointId: "ep-1",
      exampleId: "ex-1"
    });
  });

it("enforces capability gate for run cancellation on serverpod", async () => {
    const serverpodFetch = vi.fn<typeof fetch>(() => {
      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const sdk = createRoleSdk({
      backend: "serverpod",
      baseUrl: "https://api.example.com",
      fetch: serverpodFetch
    });

    await expect(sdk.runs.cancel({ workspaceId: "ws-1", runId: "r-1" })).rejects.toBeInstanceOf(
      RoleApiError
    );
  });

  it("allows run cancellation on node provider", async () => {
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

    const result = await sdk.runs.cancel({ workspaceId: "ws-1", runId: "r-1" });

    expect(result.status).toBe("cancelled");
  });
});