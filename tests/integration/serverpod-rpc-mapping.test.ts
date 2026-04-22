import { describe, expect, it, vi } from "vitest";

import { createRoleSdk, type RoleSdkClient, type RoleSdkConfig } from "../../src/index.js";

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

const rpcResult = (result: unknown): Response => {
  return new Response(JSON.stringify({ result }), {
    status: 200,
    headers: { "content-type": "application/json" }
  });
};

describe("serverpod rpc route mapping", () => {
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
});
