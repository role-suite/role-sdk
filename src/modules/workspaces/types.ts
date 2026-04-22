import type { Id } from "../../config.js";

/**
 * @experimental This type may change before 1.0.0.
 */
export type WorkspaceSummary = {
  id: Id;
  name?: string;
  slug?: string;
  createdAt?: string;
  updatedAt?: string;
};

/**
 * @experimental This type may change before 1.0.0.
 */
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

/**
 * @experimental This type may change before 1.0.0.
 */
export type AddWorkspaceMemberInput = {
  workspaceId: Id;
  email: string;
  role?: string;
};

/**
 * @experimental This type may change before 1.0.0.
 */
export type UpdateWorkspaceMemberRoleInput = {
  workspaceId: Id;
  memberId: Id;
  role: string;
};

/**
 * @experimental This type may change before 1.0.0.
 */
export type RemoveWorkspaceMemberInput = {
  workspaceId: Id;
  memberId: Id;
};

/**
 * @experimental This type may change before 1.0.0.
 */
export type WorkspaceInvitation = {
  id: Id;
  workspaceId: Id;
  token?: string;
  role?: string;
  email?: string;
  expiresAt?: string;
  createdAt?: string;
};

/**
 * @experimental This type may change before 1.0.0.
 */
export type CreateWorkspaceInvitationInput = {
  workspaceId: Id;
  email?: string;
  role?: string;
  expiresAt?: string;
};

/**
 * @experimental This type may change before 1.0.0.
 */
export type JoinWorkspaceInput = {
  token: string;
};

/**
 * @experimental This type may change before 1.0.0.
 */
export type ConvertWorkspaceToTeamInput = {
  workspaceId: Id;
  teamName?: string;
};

/**
 * @experimental This type may change before 1.0.0.
 */
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
