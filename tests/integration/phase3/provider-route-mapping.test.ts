import { describe, expect, it, vi } from "vitest";

import {
  createRoleSdk,
  RoleApiError,
  type RoleSdkClient,
  type RoleSdkConfig
} from "../../../src/index.js";

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

describe("phase 3 integration mapping", () => {
  it("maps node routes and serializes workspace/collection payloads", async () => {
    const fetchMock = vi.fn<typeof fetch>((input, init) => {
      const url = requestUrl(input);

      if (url.endsWith("/api/workspaces/ws-1/members") && init?.method === "GET") {
        return Promise.resolve(nodeEnvelope([{ id: "m-1", workspaceId: "ws-1", role: "editor" }]));
      }

      if (url.endsWith("/api/workspaces/ws-1/members") && init?.method === "POST") {
        return Promise.resolve(nodeEnvelope({ id: "m-1", workspaceId: "ws-1", role: "viewer" }));
      }

      if (url.endsWith("/api/workspaces/ws-1/members/m-1") && init?.method === "PATCH") {
        return Promise.resolve(nodeEnvelope({ id: "m-1", workspaceId: "ws-1", role: "owner" }));
      }

      if (url.endsWith("/api/workspaces/ws-1/members/m-1") && init?.method === "DELETE") {
        return Promise.resolve(nodeEnvelope({}));
      }

      if (url.endsWith("/api/workspaces/ws-1/invitations")) {
        return Promise.resolve(nodeEnvelope({ id: "inv-1", workspaceId: "ws-1", token: "t-1" }));
      }

      if (url.endsWith("/api/workspaces/join")) {
        return Promise.resolve(nodeEnvelope({ id: "ws-1", name: "A" }));
      }

      if (url.endsWith("/api/workspaces/ws-1/leave")) {
        return Promise.resolve(nodeEnvelope({}));
      }

      if (url.endsWith("/api/workspaces/ws-1/convert-to-team")) {
        return Promise.resolve(nodeEnvelope({ id: "ws-1", name: "Team A" }));
      }

      if (url.includes("/api/workspaces/ws-1/updates")) {
        return Promise.resolve(nodeEnvelope({ items: [{ id: "up-1", type: "member_added" }] }));
      }

      if (url.endsWith("/api/workspaces/ws-1/collections") && init?.method === "POST") {
        return Promise.resolve(
          nodeEnvelope({ id: "c-1", workspaceId: "ws-1", name: "Collection A" })
        );
      }

      if (url.endsWith("/api/workspaces/ws-1/collections/c-1") && init?.method === "PATCH") {
        return Promise.resolve(
          nodeEnvelope({ id: "c-1", workspaceId: "ws-1", name: "Collection B" })
        );
      }

      if (url.endsWith("/api/workspaces/ws-1/collections/c-1") && init?.method === "DELETE") {
        return Promise.resolve(nodeEnvelope({}));
      }

      if (url.endsWith("/api/workspaces/ws-1/collections/c-1/folders") && init?.method === "POST") {
        return Promise.resolve(
          nodeEnvelope({ id: "f-1", workspaceId: "ws-1", collectionId: "c-1", name: "Folder A" })
        );
      }

      if (
        url.endsWith("/api/workspaces/ws-1/collections/c-1/folders/f-1") &&
        init?.method === "PATCH"
      ) {
        return Promise.resolve(
          nodeEnvelope({ id: "f-1", workspaceId: "ws-1", collectionId: "c-1", name: "Folder B" })
        );
      }

      if (
        url.endsWith("/api/workspaces/ws-1/collections/c-1/folders/f-1") &&
        init?.method === "DELETE"
      ) {
        return Promise.resolve(nodeEnvelope({}));
      }

      if (
        url.endsWith("/api/workspaces/ws-1/collections/c-1/endpoints") &&
        init?.method === "POST"
      ) {
        return Promise.resolve(
          nodeEnvelope({
            id: "e-1",
            workspaceId: "ws-1",
            collectionId: "c-1",
            name: "Endpoint A",
            method: "GET",
            url: "/x"
          })
        );
      }

      if (
        url.endsWith("/api/workspaces/ws-1/collections/c-1/endpoints/e-1") &&
        init?.method === "PATCH"
      ) {
        return Promise.resolve(
          nodeEnvelope({
            id: "e-1",
            workspaceId: "ws-1",
            collectionId: "c-1",
            name: "Endpoint B",
            method: "POST",
            url: "/y"
          })
        );
      }

      if (
        url.endsWith("/api/workspaces/ws-1/collections/c-1/endpoints/e-1") &&
        init?.method === "DELETE"
      ) {
        return Promise.resolve(nodeEnvelope({}));
      }

      if (
        url.endsWith("/api/workspaces/ws-1/collections/c-1/endpoints/e-1/examples") &&
        init?.method === "POST"
      ) {
        return Promise.resolve(
          nodeEnvelope({
            id: "ex-1",
            workspaceId: "ws-1",
            collectionId: "c-1",
            endpointId: "e-1",
            name: "Example A"
          })
        );
      }

      if (
        url.endsWith("/api/workspaces/ws-1/collections/c-1/endpoints/e-1/examples/ex-1") &&
        init?.method === "PATCH"
      ) {
        return Promise.resolve(
          nodeEnvelope({
            id: "ex-1",
            workspaceId: "ws-1",
            collectionId: "c-1",
            endpointId: "e-1",
            name: "Example B"
          })
        );
      }

      if (
        url.endsWith("/api/workspaces/ws-1/collections/c-1/endpoints/e-1/examples/ex-1") &&
        init?.method === "DELETE"
      ) {
        return Promise.resolve(nodeEnvelope({}));
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const sdk: RoleSdkClient = createTypedSdk({
      backend: "node",
      baseUrl: "https://api.example.com",
      fetch: fetchMock,
      auth: { autoRefresh: false }
    });

    await sdk.workspaces.listMembers({ workspaceId: "ws-1" });
    await sdk.workspaces.addMember({ workspaceId: "ws-1", email: "a@example.com", role: "viewer" });
    await sdk.workspaces.updateMemberRole({ workspaceId: "ws-1", memberId: "m-1", role: "owner" });
    await sdk.workspaces.removeMember({ workspaceId: "ws-1", memberId: "m-1" });
    await sdk.workspaces.createInvitation({ workspaceId: "ws-1", email: "b@example.com" });
    await sdk.workspaces.joinWithInvitation({ token: "t-1" });
    await sdk.workspaces.leave({ workspaceId: "ws-1" });
    await sdk.workspaces.convertToTeam({ workspaceId: "ws-1", teamName: "Team A" });
    await sdk.workspaces.listUpdates({ workspaceId: "ws-1", cursor: "c1", limit: 20 });

    await sdk.collections.create({ workspaceId: "ws-1", name: "Collection A" });
    await sdk.collections.update({
      workspaceId: "ws-1",
      collectionId: "c-1",
      name: "Collection B"
    });
    await sdk.collections.remove({ workspaceId: "ws-1", collectionId: "c-1" });
    await sdk.collections.createFolder({
      workspaceId: "ws-1",
      collectionId: "c-1",
      name: "Folder A"
    });
    await sdk.collections.updateFolder({
      workspaceId: "ws-1",
      collectionId: "c-1",
      folderId: "f-1",
      name: "Folder B"
    });
    await sdk.collections.removeFolder({
      workspaceId: "ws-1",
      collectionId: "c-1",
      folderId: "f-1"
    });
    await sdk.collections.createEndpoint({
      workspaceId: "ws-1",
      collectionId: "c-1",
      name: "Endpoint A",
      method: "GET",
      url: "/x"
    });
    await sdk.collections.updateEndpoint({
      workspaceId: "ws-1",
      collectionId: "c-1",
      endpointId: "e-1",
      name: "Endpoint B"
    });
    await sdk.collections.removeEndpoint({
      workspaceId: "ws-1",
      collectionId: "c-1",
      endpointId: "e-1"
    });
    await sdk.collections.createEndpointExample({
      workspaceId: "ws-1",
      collectionId: "c-1",
      endpointId: "e-1",
      name: "Example A"
    });
    await sdk.collections.updateEndpointExample({
      workspaceId: "ws-1",
      collectionId: "c-1",
      endpointId: "e-1",
      exampleId: "ex-1",
      name: "Example B"
    });
    await sdk.collections.removeEndpointExample({
      workspaceId: "ws-1",
      collectionId: "c-1",
      endpointId: "e-1",
      exampleId: "ex-1"
    });

    expect(fetchMock).toHaveBeenCalledWith(
      "https://api.example.com/api/workspaces/ws-1/members",
      expect.objectContaining({
        method: "POST",
        body: JSON.stringify({ email: "a@example.com", role: "viewer" })
      })
    );
    expect(fetchMock).toHaveBeenCalledWith(
      "https://api.example.com/api/workspaces/ws-1/updates?cursor=c1&limit=20",
      expect.objectContaining({ method: "GET" })
    );
    expect(fetchMock).toHaveBeenCalledWith(
      "https://api.example.com/api/workspaces/ws-1/collections/c-1/endpoints/e-1/examples/ex-1",
      expect.objectContaining({ method: "DELETE" })
    );
  });

  it("maps serverpod rpc routes and serializes payloads for workspace/collection methods", async () => {
    const fetchMock = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/rpc/workspaces/listMembers")) {
        return Promise.resolve(rpcResult([{ id: "m-1", workspaceId: "ws-1", role: "editor" }]));
      }
      if (url.endsWith("/rpc/workspaces/addMember")) {
        return Promise.resolve(rpcResult({ id: "m-1", workspaceId: "ws-1", role: "viewer" }));
      }
      if (url.endsWith("/rpc/workspaces/updateMemberRole")) {
        return Promise.resolve(rpcResult({ id: "m-1", workspaceId: "ws-1", role: "owner" }));
      }
      if (url.endsWith("/rpc/workspaces/removeMember")) {
        return Promise.resolve(rpcResult({}));
      }
      if (url.endsWith("/rpc/workspaces/createInvitation")) {
        return Promise.resolve(rpcResult({ id: "inv-1", workspaceId: "ws-1", token: "t-1" }));
      }
      if (url.endsWith("/rpc/workspaces/joinWithInvitation")) {
        return Promise.resolve(rpcResult({ id: "ws-1", name: "A" }));
      }
      if (url.endsWith("/rpc/workspaces/leave")) {
        return Promise.resolve(rpcResult({}));
      }
      if (url.endsWith("/rpc/workspaces/convertToTeam")) {
        return Promise.resolve(rpcResult({ id: "ws-1", name: "Team A" }));
      }
      if (url.endsWith("/rpc/workspaces/listUpdates")) {
        return Promise.resolve(rpcResult({ items: [{ id: "up-1", type: "member_added" }] }));
      }

      if (url.endsWith("/rpc/collections/create")) {
        return Promise.resolve(rpcResult({ id: "c-1", workspaceId: "ws-1", name: "Collection A" }));
      }
      if (url.endsWith("/rpc/collections/update")) {
        return Promise.resolve(rpcResult({ id: "c-1", workspaceId: "ws-1", name: "Collection B" }));
      }
      if (url.endsWith("/rpc/collections/remove")) {
        return Promise.resolve(rpcResult({}));
      }
      if (url.endsWith("/rpc/collections/createFolder")) {
        return Promise.resolve(
          rpcResult({ id: "f-1", workspaceId: "ws-1", collectionId: "c-1", name: "Folder A" })
        );
      }
      if (url.endsWith("/rpc/collections/updateFolder")) {
        return Promise.resolve(
          rpcResult({ id: "f-1", workspaceId: "ws-1", collectionId: "c-1", name: "Folder B" })
        );
      }
      if (url.endsWith("/rpc/collections/removeFolder")) {
        return Promise.resolve(rpcResult({}));
      }
      if (url.endsWith("/rpc/collections/createEndpoint")) {
        return Promise.resolve(
          rpcResult({
            id: "e-1",
            workspaceId: "ws-1",
            collectionId: "c-1",
            name: "Endpoint A",
            method: "GET",
            url: "/x"
          })
        );
      }
      if (url.endsWith("/rpc/collections/updateEndpoint")) {
        return Promise.resolve(
          rpcResult({
            id: "e-1",
            workspaceId: "ws-1",
            collectionId: "c-1",
            name: "Endpoint B",
            method: "POST",
            url: "/y"
          })
        );
      }
      if (url.endsWith("/rpc/collections/removeEndpoint")) {
        return Promise.resolve(rpcResult({}));
      }
      if (url.endsWith("/rpc/collections/createEndpointExample")) {
        return Promise.resolve(
          rpcResult({
            id: "ex-1",
            workspaceId: "ws-1",
            collectionId: "c-1",
            endpointId: "e-1",
            name: "Example A"
          })
        );
      }
      if (url.endsWith("/rpc/collections/updateEndpointExample")) {
        return Promise.resolve(
          rpcResult({
            id: "ex-1",
            workspaceId: "ws-1",
            collectionId: "c-1",
            endpointId: "e-1",
            name: "Example B"
          })
        );
      }
      if (url.endsWith("/rpc/collections/removeEndpointExample")) {
        return Promise.resolve(rpcResult({}));
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const sdk: RoleSdkClient = createTypedSdk({
      backend: "serverpod",
      baseUrl: "https://api.example.com",
      fetch: fetchMock,
      auth: { autoRefresh: false }
    });

    await sdk.workspaces.listMembers({ workspaceId: "ws-1" });
    await sdk.workspaces.addMember({ workspaceId: "ws-1", email: "a@example.com", role: "viewer" });
    await sdk.workspaces.updateMemberRole({ workspaceId: "ws-1", memberId: "m-1", role: "owner" });
    await sdk.workspaces.removeMember({ workspaceId: "ws-1", memberId: "m-1" });
    await sdk.workspaces.createInvitation({ workspaceId: "ws-1", email: "b@example.com" });
    await sdk.workspaces.joinWithInvitation({ token: "t-1" });
    await sdk.workspaces.leave({ workspaceId: "ws-1" });
    await sdk.workspaces.convertToTeam({ workspaceId: "ws-1", teamName: "Team A" });
    await sdk.workspaces.listUpdates({ workspaceId: "ws-1", cursor: "c1", limit: 20 });

    await sdk.collections.create({ workspaceId: "ws-1", name: "Collection A" });
    await sdk.collections.update({
      workspaceId: "ws-1",
      collectionId: "c-1",
      name: "Collection B"
    });
    await sdk.collections.remove({ workspaceId: "ws-1", collectionId: "c-1" });
    await sdk.collections.createFolder({
      workspaceId: "ws-1",
      collectionId: "c-1",
      name: "Folder A"
    });
    await sdk.collections.updateFolder({
      workspaceId: "ws-1",
      collectionId: "c-1",
      folderId: "f-1",
      name: "Folder B"
    });
    await sdk.collections.removeFolder({
      workspaceId: "ws-1",
      collectionId: "c-1",
      folderId: "f-1"
    });
    await sdk.collections.createEndpoint({
      workspaceId: "ws-1",
      collectionId: "c-1",
      name: "Endpoint A",
      method: "GET",
      url: "/x"
    });
    await sdk.collections.updateEndpoint({
      workspaceId: "ws-1",
      collectionId: "c-1",
      endpointId: "e-1",
      name: "Endpoint B"
    });
    await sdk.collections.removeEndpoint({
      workspaceId: "ws-1",
      collectionId: "c-1",
      endpointId: "e-1"
    });
    await sdk.collections.createEndpointExample({
      workspaceId: "ws-1",
      collectionId: "c-1",
      endpointId: "e-1",
      name: "Example A"
    });
    await sdk.collections.updateEndpointExample({
      workspaceId: "ws-1",
      collectionId: "c-1",
      endpointId: "e-1",
      exampleId: "ex-1",
      name: "Example B"
    });
    await sdk.collections.removeEndpointExample({
      workspaceId: "ws-1",
      collectionId: "c-1",
      endpointId: "e-1",
      exampleId: "ex-1"
    });

    expect(fetchMock).toHaveBeenCalledWith(
      "https://api.example.com/rpc/workspaces/addMember",
      expect.objectContaining({
        method: "POST",
        body: JSON.stringify({ workspaceId: "ws-1", email: "a@example.com", role: "viewer" })
      })
    );
    expect(fetchMock).toHaveBeenCalledWith(
      "https://api.example.com/rpc/workspaces/listUpdates",
      expect.objectContaining({
        method: "POST",
        body: JSON.stringify({ workspaceId: "ws-1", cursor: "c1", limit: 20 })
      })
    );
    expect(fetchMock).toHaveBeenCalledWith(
      "https://api.example.com/rpc/collections/removeEndpointExample",
      expect.objectContaining({ method: "POST" })
    );
  });

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
