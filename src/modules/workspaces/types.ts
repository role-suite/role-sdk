import type { Id } from "../../config.js";

export type WorkspaceSummary = {
  id: Id;
  name?: string;
  slug?: string;
  createdAt?: string;
  updatedAt?: string;
};

export type CreateWorkspaceInput = {
  name: string;
  slug?: string;
};

export type WorkspaceMember = {
  id: Id;
  workspaceId: Id;
  userId?: Id;
  email?: string;
  role?: string;
  createdAt?: string;
};

export type AddWorkspaceMemberInput = {
  workspaceId: Id;
  email: string;
  role?: string;
};

export type UpdateWorkspaceMemberRoleInput = {
  workspaceId: Id;
  memberId: Id;
  role: string;
};

export type RemoveWorkspaceMemberInput = {
  workspaceId: Id;
  memberId: Id;
};

export type WorkspaceInvitation = {
  id: Id;
  workspaceId: Id;
  token?: string;
  role?: string;
  email?: string;
  expiresAt?: string;
  createdAt?: string;
};

export type CreateWorkspaceInvitationInput = {
  workspaceId: Id;
  email?: string;
  role?: string;
  expiresAt?: string;
};

export type JoinWorkspaceInput = {
  token: string;
};

export type ConvertWorkspaceToTeamInput = {
  workspaceId: Id;
  teamName?: string;
};

export type WorkspaceUpdatesInput = {
  workspaceId: Id;
  cursor?: string | number;
  limit?: number;
};

export type WorkspaceUpdate = {
  id: Id;
  type?: string;
  createdAt?: string;
  actorId?: Id;
  payload?: Record<string, unknown>;
};

export type WorkspaceUpdatesResult = {
  items: WorkspaceUpdate[];
  cursor?: {
    next?: string | number;
  };
};
