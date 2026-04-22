import { describe, expect, it, vi } from "vitest";

import {
  createRoleSdk,
  RoleApiError,
  type RoleSdkClient,
  type RoleSdkConfig
} from "../../src/index.js";

const createTypedSdk: (config: RoleSdkConfig) => RoleSdkClient = createRoleSdk;

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

describe("environments routes", () => {
  it("maps node routes for environments, runs, and import-export", async () => {
    const fetchMock = vi.fn<typeof fetch>((input, init) => {
      const url = requestUrl(input);

      if (url.endsWith("/api/workspaces/ws-1/environments") && init?.method === "POST") {
        return Promise.resolve(nodeEnvelope({ id: "env-1", workspaceId: "ws-1", name: "Staging" }));
      }
      if (
        url.endsWith("/api/workspaces/ws-1/environments/env-1/variables") &&
        init?.method === "POST"
      ) {
        return Promise.resolve(
          nodeEnvelope({ id: "var-1", workspaceId: "ws-1", environmentId: "env-1", key: "TOKEN" })
        );
      }
      if (url.endsWith("/api/workspaces/ws-1/runs") && init?.method === "POST") {
        return Promise.resolve(
          nodeEnvelope({ id: "run-1", workspaceId: "ws-1", status: "queued" })
        );
      }
      if (url.endsWith("/api/workspaces/ws-1/runs/run-1") && init?.method === "GET") {
        return Promise.resolve(nodeEnvelope({ id: "run-1", workspaceId: "ws-1", status: "done" }));
      }
      if (url.endsWith("/api/workspaces/ws-1/runs/run-1/cancel") && init?.method === "POST") {
        return Promise.resolve(
          nodeEnvelope({ id: "run-1", workspaceId: "ws-1", status: "cancelled" })
        );
      }
      if (url.endsWith("/api/workspaces/ws-1/import-export/jobs") && init?.method === "GET") {
        return Promise.resolve(
          nodeEnvelope([{ id: "job-1", workspaceId: "ws-1", type: "export" }])
        );
      }
      if (url.endsWith("/api/workspaces/ws-1/import-export/export") && init?.method === "POST") {
        return Promise.resolve(nodeEnvelope({ id: "job-2", workspaceId: "ws-1", type: "export" }));
      }
      if (url.endsWith("/api/workspaces/ws-1/import-export/import") && init?.method === "POST") {
        return Promise.resolve(nodeEnvelope({ id: "job-3", workspaceId: "ws-1", type: "import" }));
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const sdk: RoleSdkClient = createTypedSdk({
      backend: "node",
      baseUrl: "https://api.example.com",
      fetch: fetchMock,
      auth: { autoRefresh: false }
    });

    await sdk.environments.create({ workspaceId: "ws-1", name: "Staging" });
    await sdk.environments.createVariable({
      workspaceId: "ws-1",
      environmentId: "env-1",
      key: "TOKEN"
    });
    await sdk.runs.create({
      workspaceId: "ws-1",
      source: {
        kind: "adhoc",
        request: { method: "GET", url: "https://example.com" }
      }
    });
    await sdk.runs.get({ workspaceId: "ws-1", runId: "run-1" });
    await sdk.runs.cancel({ workspaceId: "ws-1", runId: "run-1" });
    await sdk.importExport.listJobs({ workspaceId: "ws-1" });
    await sdk.importExport.createExport({ workspaceId: "ws-1", collectionIds: ["c-1"] });
    await sdk.importExport.createImport({
      workspaceId: "ws-1",
      sourceUrl: "https://example.com/data.json"
    });

    expect(fetchMock).toHaveBeenCalledWith(
      "https://api.example.com/api/workspaces/ws-1/runs",
      expect.objectContaining({
        method: "POST",
        body: JSON.stringify({
          source: { kind: "adhoc", request: { method: "GET", url: "https://example.com" } },
          environmentId: undefined
        })
      })
    );
    expect(fetchMock).toHaveBeenCalledWith(
      "https://api.example.com/api/workspaces/ws-1/import-export/jobs",
      expect.objectContaining({ method: "GET" })
    );
  });
});

describe("serverpod run capabilities", () => {
  it("maps serverpod rpc routes for environments, runs, and import-export", async () => {
    const fetchMock = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/rpc/environments/create")) {
        return Promise.resolve(rpcResult({ id: "env-1", workspaceId: "ws-1", name: "Staging" }));
      }
      if (url.endsWith("/rpc/environments/createVariable")) {
        return Promise.resolve(
          rpcResult({ id: "var-1", workspaceId: "ws-1", environmentId: "env-1", key: "TOKEN" })
        );
      }
      if (url.endsWith("/rpc/runs/create")) {
        return Promise.resolve(rpcResult({ id: "run-1", workspaceId: "ws-1", status: "queued" }));
      }
      if (url.endsWith("/rpc/runs/get")) {
        return Promise.resolve(rpcResult({ id: "run-1", workspaceId: "ws-1", status: "done" }));
      }
      if (url.endsWith("/rpc/importExport/listJobs")) {
        return Promise.resolve(rpcResult([{ id: "job-1", workspaceId: "ws-1", type: "export" }]));
      }
      if (url.endsWith("/rpc/importExport/createExport")) {
        return Promise.resolve(rpcResult({ id: "job-2", workspaceId: "ws-1", type: "export" }));
      }
      if (url.endsWith("/rpc/importExport/createImport")) {
        return Promise.resolve(rpcResult({ id: "job-3", workspaceId: "ws-1", type: "import" }));
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const sdk: RoleSdkClient = createTypedSdk({
      backend: "serverpod",
      baseUrl: "https://api.example.com",
      fetch: fetchMock,
      auth: { autoRefresh: false }
    });

    await sdk.environments.create({ workspaceId: "ws-1", name: "Staging" });
    await sdk.environments.createVariable({
      workspaceId: "ws-1",
      environmentId: "env-1",
      key: "TOKEN"
    });
    await sdk.runs.create({
      workspaceId: "ws-1",
      source: {
        kind: "collection",
        collectionId: "c-1",
        endpointId: "e-1",
        variables: { limit: 10 }
      }
    });
    await sdk.runs.get({ workspaceId: "ws-1", runId: "run-1" });
    await sdk.importExport.listJobs({ workspaceId: "ws-1" });
    await sdk.importExport.createExport({ workspaceId: "ws-1", includeEnvironments: true });
    await sdk.importExport.createImport({ workspaceId: "ws-1", payload: { hello: "world" } });

    await expect(sdk.runs.cancel({ workspaceId: "ws-1", runId: "run-1" })).rejects.toBeInstanceOf(
      RoleApiError
    );

    expect(fetchMock).toHaveBeenCalledWith(
      "https://api.example.com/rpc/runs/create",
      expect.objectContaining({
        method: "POST",
        body: JSON.stringify({
          workspaceId: "ws-1",
          source: {
            kind: "collection",
            collectionId: "c-1",
            endpointId: "e-1",
            variables: { limit: 10 }
          }
        })
      })
    );
  });
});
