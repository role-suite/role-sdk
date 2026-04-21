import { describe, expect, it } from "vitest";

import {
  mapNodeAuthSession,
  mapNodeCurrentUser,
  mapNodeWorkspaceList,
  mapNodeWorkspaceSummary
} from "../../../src/core/mappers/node/index.js";
import {
  mapServerpodAuthSession,
  mapServerpodCurrentUser,
  mapServerpodWorkspaceList,
  mapServerpodWorkspaceSummary
} from "../../../src/core/mappers/serverpod/index.js";

describe("provider mappers", () => {
  it("maps auth session payloads from both providers to same shape", () => {
    const node = mapNodeAuthSession({
      access_token: "access-1",
      refresh_token: "refresh-1",
      user: { id: "u-1", email: "x@example.com" }
    });

    const serverpod = mapServerpodAuthSession({
      accessToken: "access-1",
      refreshToken: "refresh-1",
      profile: { userId: "u-1", email: "x@example.com" }
    });

    expect(node).toEqual(serverpod);
  });

  it("normalizes workspace summaries to ISO date strings", () => {
    const node = mapNodeWorkspaceSummary({
      id: "ws-1",
      name: "Workspace",
      created_at: "2026-04-21T12:30:00Z"
    });

    const serverpod = mapServerpodWorkspaceSummary({
      workspaceId: "ws-1",
      workspaceName: "Workspace",
      createdAt: 1776774600000
    });

    expect(node.id).toBe(serverpod.id);
    expect(node.name).toBe(serverpod.name);
    expect(typeof node.createdAt).toBe("string");
    expect(typeof serverpod.createdAt).toBe("string");
  });

  it("maps workspace list containers from both providers", () => {
    const node = mapNodeWorkspaceList({
      items: [{ id: "ws-1", name: "A" }]
    });

    const serverpod = mapServerpodWorkspaceList({
      workspaces: [{ workspaceId: "ws-1", workspaceName: "A" }]
    });

    expect(node).toEqual(serverpod);
  });

  it("maps current user shape from both providers", () => {
    const node = mapNodeCurrentUser({
      id: "u-1",
      email: "test@example.com",
      memberships: [{ workspace_id: "ws-1", role: "owner" }]
    });

    const serverpod = mapServerpodCurrentUser({
      userId: "u-1",
      email: "test@example.com",
      memberships: [{ workspaceId: "ws-1", role: "owner" }]
    });

    expect(node).toEqual(serverpod);
  });
});
