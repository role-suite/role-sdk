import { describe, expect, it, vi } from "vitest";

import { createRoleSdk } from "../../../src/index.js";

const nodeEnvelope = (data: unknown): Response => {
  return new Response(JSON.stringify({ success: true, data }), {
    status: 200,
    headers: { "content-type": "application/json" }
  });
};

describe("workspaces module", () => {
  describe("list", () => {
    it("lists workspaces via node provider", async () => {
      const fetchMock = vi.fn<typeof fetch>(() => {
        return Promise.resolve(
          nodeEnvelope([
            { id: "ws-1", name: "Workspace 1" },
            { id: "ws-2", name: "Workspace 2" }
          ])
        );
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock,
        auth: { accessToken: "token" }
      });

      const workspaces = await sdk.workspaces.list();

      expect(workspaces).toHaveLength(2);
      expect(workspaces[0]?.name).toBe("Workspace 1");
    });
  });

  describe("get", () => {
    it("gets workspace by id", async () => {
      const fetchMock = vi.fn<typeof fetch>(() => {
        return Promise.resolve(
          nodeEnvelope({ id: "ws-1", name: "My Workspace", slug: "my-workspace" })
        );
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock,
        auth: { accessToken: "token" }
      });

      const workspace = await sdk.workspaces.get({ workspaceId: "ws-1" });

      expect(workspace.id).toBe("ws-1");
      expect(workspace.name).toBe("My Workspace");
    });
  });

  describe("create", () => {
    it("creates workspace", async () => {
      const fetchMock = vi.fn<typeof fetch>(() => {
        return Promise.resolve(
          nodeEnvelope({ id: "ws-new", name: "New Workspace" })
        );
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock,
        auth: { accessToken: "token" }
      });

      const workspace = await sdk.workspaces.create({ name: "New Workspace" });

      expect(workspace.id).toBe("ws-new");
    });
  });

  describe("members", () => {
    it("lists members", async () => {
      const fetchMock = vi.fn<typeof fetch>(() => {
        return Promise.resolve(
          nodeEnvelope([
            { id: "m-1", workspaceId: "ws-1", email: "a@test.com", role: "owner" },
            { id: "m-2", workspaceId: "ws-1", email: "b@test.com", role: "editor" }
          ])
        );
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock,
        auth: { accessToken: "token" }
      });

      const members = await sdk.workspaces.listMembers({ workspaceId: "ws-1" });

      expect(members).toHaveLength(2);
      expect(members[0]?.role).toBe("owner");
    });

    it("adds member", async () => {
      const fetchMock = vi.fn<typeof fetch>(() => {
        return Promise.resolve(
          nodeEnvelope({ id: "m-new", workspaceId: "ws-1", email: "new@test.com", role: "viewer" })
        );
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock,
        auth: { accessToken: "token" }
      });

      const member = await sdk.workspaces.addMember({
        workspaceId: "ws-1",
        email: "new@test.com",
        role: "viewer"
      });

      expect(member.email).toBe("new@test.com");
    });

    it("updates member role", async () => {
      const fetchMock = vi.fn<typeof fetch>(() => {
        return Promise.resolve(
          nodeEnvelope({ id: "m-1", workspaceId: "ws-1", role: "admin" })
        );
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock,
        auth: { accessToken: "token" }
      });

      const member = await sdk.workspaces.updateMemberRole({
        workspaceId: "ws-1",
        memberId: "m-1",
        role: "admin"
      });

      expect(member.role).toBe("admin");
    });

    it("removes member", async () => {
      const fetchMock = vi.fn<typeof fetch>(() => {
        return Promise.resolve(nodeEnvelope({}));
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock,
        auth: { accessToken: "token" }
      });

      const result = await sdk.workspaces.removeMember({
        workspaceId: "ws-1",
        memberId: "m-1"
      });

      expect(result.deleted).toBe(true);
    });
  });

  describe("invitations", () => {
    it("creates invitation", async () => {
      const fetchMock = vi.fn<typeof fetch>(() => {
        return Promise.resolve(
          nodeEnvelope({ id: "inv-1", workspaceId: "ws-1", email: "invite@test.com", token: "tok-123" })
        );
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock,
        auth: { accessToken: "token" }
      });

      const invitation = await sdk.workspaces.createInvitation({
        workspaceId: "ws-1",
        email: "invite@test.com",
        role: "viewer"
      });

      expect(invitation.token).toBe("tok-123");
    });

    it("joins workspace with token", async () => {
      const fetchMock = vi.fn<typeof fetch>(() => {
        return Promise.resolve(
          nodeEnvelope({ id: "ws-1", name: "Joined Workspace" })
        );
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock,
        auth: { accessToken: "token" }
      });

      const workspace = await sdk.workspaces.joinWithInvitation({ token: "invite-token" });

      expect(workspace.id).toBe("ws-1");
    });
  });

  describe("leave", () => {
    it("leaves workspace", async () => {
      const fetchMock = vi.fn<typeof fetch>(() => {
        return Promise.resolve(nodeEnvelope({}));
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock,
        auth: { accessToken: "token" }
      });

      const result = await sdk.workspaces.leave({ workspaceId: "ws-1" });

      expect(result.left).toBe(true);
    });
  });

  describe("convertToTeam", () => {
    it("converts workspace to team", async () => {
      const fetchMock = vi.fn<typeof fetch>(() => {
        return Promise.resolve(
          nodeEnvelope({ id: "ws-1", name: "Team Workspace" })
        );
      });

      const sdk = createRoleSdk({
        backend: "node",
        baseUrl: "https://api.example.com",
        fetch: fetchMock,
        auth: { accessToken: "token" }
      });

      const workspace = await sdk.workspaces.convertToTeam({
        workspaceId: "ws-1",
        teamName: "Team Workspace"
      });

      expect(workspace.name).toBe("Team Workspace");
    });
  });

  describe("listUpdates", () => {
    it("lists workspace updates", async () => {
      const fetchMock = vi.fn<typeof fetch>(() => {
        return Promise.resolve(
          nodeEnvelope({
            items: [
              { id: "up-1", type: "member_added", actorId: "user-1" },
              { id: "up-2", type: "collection_created", actorId: "user-2" }
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

      const updates = await sdk.workspaces.listUpdates({
        workspaceId: "ws-1",
        cursor: "abc",
        limit: 20
      });

      expect(updates.items).toHaveLength(2);
      expect(updates.items[0]?.type).toBe("member_added");
    });
  });
});