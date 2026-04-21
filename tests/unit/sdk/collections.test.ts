import { describe, expect, it, vi } from "vitest";

import { createRoleSdk } from "../../../src/index.js";

const nodeEnvelope = (data: unknown): Response => {
  return new Response(JSON.stringify({ success: true, data }), {
    status: 200,
    headers: { "content-type": "application/json" }
  });
};

describe("collections module", () => {
  describe("collections CRUD", () => {
    it("lists collections", async () => {
      const fetchMock = vi.fn<typeof fetch>(() => {
        return Promise.resolve(
          nodeEnvelope([
            { id: "c-1", workspaceId: "ws-1", name: "Collection 1" },
            { id: "c-2", workspaceId: "ws-1", name: "Collection 2" }
          ])
        );
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock,
        auth: { accessToken: "token" }
      });

      const collections = await sdk.collections.list({ workspaceId: "ws-1" });

      expect(collections).toHaveLength(2);
      expect(collections[0]?.name).toBe("Collection 1");
    });

    it("gets collection by id", async () => {
      const fetchMock = vi.fn<typeof fetch>(() => {
        return Promise.resolve(
          nodeEnvelope({ id: "c-1", workspaceId: "ws-1", name: "Collection 1", description: "My API" })
        );
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock,
        auth: { accessToken: "token" }
      });

      const collection = await sdk.collections.get({ workspaceId: "ws-1", collectionId: "c-1" });

      expect(collection.id).toBe("c-1");
      expect(collection.description).toBe("My API");
    });

    it("creates collection", async () => {
      const fetchMock = vi.fn<typeof fetch>(() => {
        return Promise.resolve(
          nodeEnvelope({ id: "c-new", workspaceId: "ws-1", name: "New Collection" })
        );
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock,
        auth: { accessToken: "token" }
      });

      const collection = await sdk.collections.create({
        workspaceId: "ws-1",
        name: "New Collection"
      });

      expect(collection.id).toBe("c-new");
    });

    it("updates collection", async () => {
      const fetchMock = vi.fn<typeof fetch>(() => {
        return Promise.resolve(
          nodeEnvelope({ id: "c-1", workspaceId: "ws-1", name: "Updated Name" })
        );
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock,
        auth: { accessToken: "token" }
      });

      const collection = await sdk.collections.update({
        workspaceId: "ws-1",
        collectionId: "c-1",
        name: "Updated Name"
      });

      expect(collection.name).toBe("Updated Name");
    });

    it("removes collection", async () => {
      const fetchMock = vi.fn<typeof fetch>(() => {
        return Promise.resolve(nodeEnvelope({}));
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock,
        auth: { accessToken: "token" }
      });

      const result = await sdk.collections.remove({
        workspaceId: "ws-1",
        collectionId: "c-1"
      });

      expect(result.deleted).toBe(true);
    });
  });

  describe("folders CRUD", () => {
    it("lists folders", async () => {
      const fetchMock = vi.fn<typeof fetch>(() => {
        return Promise.resolve(
          nodeEnvelope([
            { id: "f-1", workspaceId: "ws-1", collectionId: "c-1", name: "Folder 1" },
            { id: "f-2", workspaceId: "ws-1", collectionId: "c-1", name: "Folder 2" }
          ])
        );
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock,
        auth: { accessToken: "token" }
      });

      const folders = await sdk.collections.listFolders({
        workspaceId: "ws-1",
        collectionId: "c-1"
      });

      expect(folders).toHaveLength(2);
    });

    it("creates folder", async () => {
      const fetchMock = vi.fn<typeof fetch>(() => {
        return Promise.resolve(
          nodeEnvelope({ id: "f-new", workspaceId: "ws-1", collectionId: "c-1", name: "New Folder" })
        );
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock,
        auth: { accessToken: "token" }
      });

      const folder = await sdk.collections.createFolder({
        workspaceId: "ws-1",
        collectionId: "c-1",
        name: "New Folder"
      });

      expect(folder.id).toBe("f-new");
    });

    it("updates folder", async () => {
      const fetchMock = vi.fn<typeof fetch>(() => {
        return Promise.resolve(
          nodeEnvelope({ id: "f-1", workspaceId: "ws-1", collectionId: "c-1", name: "Renamed Folder" })
        );
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock,
        auth: { accessToken: "token" }
      });

      const folder = await sdk.collections.updateFolder({
        workspaceId: "ws-1",
        collectionId: "c-1",
        folderId: "f-1",
        name: "Renamed Folder"
      });

      expect(folder.name).toBe("Renamed Folder");
    });

    it("removes folder", async () => {
      const fetchMock = vi.fn<typeof fetch>(() => {
        return Promise.resolve(nodeEnvelope({}));
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock,
        auth: { accessToken: "token" }
      });

      const result = await sdk.collections.removeFolder({
        workspaceId: "ws-1",
        collectionId: "c-1",
        folderId: "f-1"
      });

      expect(result.deleted).toBe(true);
    });
  });

  describe("endpoints CRUD", () => {
    it("lists endpoints", async () => {
      const fetchMock = vi.fn<typeof fetch>(() => {
        return Promise.resolve(
          nodeEnvelope([
            { id: "e-1", workspaceId: "ws-1", collectionId: "c-1", name: "Get Users", method: "GET", url: "/users" },
            { id: "e-2", workspaceId: "ws-1", collectionId: "c-1", name: "Create User", method: "POST", url: "/users" }
          ])
        );
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock,
        auth: { accessToken: "token" }
      });

      const endpoints = await sdk.collections.listEndpoints({
        workspaceId: "ws-1",
        collectionId: "c-1"
      });

      expect(endpoints).toHaveLength(2);
      expect(endpoints[0]?.method).toBe("GET");
    });

    it("creates endpoint", async () => {
      const fetchMock = vi.fn<typeof fetch>(() => {
        return Promise.resolve(
          nodeEnvelope({
            id: "e-new",
            workspaceId: "ws-1",
            collectionId: "c-1",
            name: "Get Items",
            method: "GET",
            url: "/items"
          })
        );
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock,
        auth: { accessToken: "token" }
      });

      const endpoint = await sdk.collections.createEndpoint({
        workspaceId: "ws-1",
        collectionId: "c-1",
        name: "Get Items",
        method: "GET",
        url: "/items"
      });

      expect(endpoint.id).toBe("e-new");
      expect(endpoint.method).toBe("GET");
    });

    it("updates endpoint", async () => {
      const fetchMock = vi.fn<typeof fetch>(() => {
        return Promise.resolve(
          nodeEnvelope({ id: "e-1", workspaceId: "ws-1", collectionId: "c-1", name: "Updated Endpoint", method: "POST" })
        );
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock,
        auth: { accessToken: "token" }
      });

      const endpoint = await sdk.collections.updateEndpoint({
        workspaceId: "ws-1",
        collectionId: "c-1",
        endpointId: "e-1",
        name: "Updated Endpoint",
        method: "POST"
      });

      expect(endpoint.name).toBe("Updated Endpoint");
    });

    it("removes endpoint", async () => {
      const fetchMock = vi.fn<typeof fetch>(() => {
        return Promise.resolve(nodeEnvelope({}));
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock,
        auth: { accessToken: "token" }
      });

      const result = await sdk.collections.removeEndpoint({
        workspaceId: "ws-1",
        collectionId: "c-1",
        endpointId: "e-1"
      });

      expect(result.deleted).toBe(true);
    });
  });

  describe("examples CRUD", () => {
    it("lists endpoint examples", async () => {
      const fetchMock = vi.fn<typeof fetch>(() => {
        return Promise.resolve(
          nodeEnvelope([
            { id: "ex-1", workspaceId: "ws-1", collectionId: "c-1", endpointId: "e-1", name: "Example 1" },
            { id: "ex-2", workspaceId: "ws-1", collectionId: "c-1", endpointId: "e-1", name: "Example 2" }
          ])
        );
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock,
        auth: { accessToken: "token" }
      });

      const examples = await sdk.collections.listEndpointExamples({
        workspaceId: "ws-1",
        collectionId: "c-1",
        endpointId: "e-1"
      });

      expect(examples).toHaveLength(2);
    });

    it("creates endpoint example", async () => {
      const fetchMock = vi.fn<typeof fetch>(() => {
        return Promise.resolve(
          nodeEnvelope({
            id: "ex-new",
            workspaceId: "ws-1",
            collectionId: "c-1",
            endpointId: "e-1",
            name: "New Example",
            request: { body: { name: "Test" } },
            response: { body: { id: 1, name: "Test" } }
          })
        );
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock,
        auth: { accessToken: "token" }
      });

      const example = await sdk.collections.createEndpointExample({
        workspaceId: "ws-1",
        collectionId: "c-1",
        endpointId: "e-1",
        name: "New Example",
        request: { body: { name: "Test" } },
        response: { body: { id: 1, name: "Test" } }
      });

      expect(example.id).toBe("ex-new");
    });

    it("updates endpoint example", async () => {
      const fetchMock = vi.fn<typeof fetch>(() => {
        return Promise.resolve(
          nodeEnvelope({ id: "ex-1", workspaceId: "ws-1", collectionId: "c-1", endpointId: "e-1", name: "Updated Example" })
        );
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock,
        auth: { accessToken: "token" }
      });

      const example = await sdk.collections.updateEndpointExample({
        workspaceId: "ws-1",
        collectionId: "c-1",
        endpointId: "e-1",
        exampleId: "ex-1",
        name: "Updated Example"
      });

      expect(example.name).toBe("Updated Example");
    });

    it("removes endpoint example", async () => {
      const fetchMock = vi.fn<typeof fetch>(() => {
        return Promise.resolve(nodeEnvelope({}));
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock,
        auth: { accessToken: "token" }
      });

      const result = await sdk.collections.removeEndpointExample({
        workspaceId: "ws-1",
        collectionId: "c-1",
        endpointId: "e-1",
        exampleId: "ex-1"
      });

      expect(result.deleted).toBe(true);
    });
  });
});