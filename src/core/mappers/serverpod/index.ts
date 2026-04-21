import { RoleValidationError } from "../../errors/sdk-error.js";
import type { AuthSessionResult, CurrentUserResult, LogoutResult } from "../../../modules/auth/types.js";
import type { WorkspaceSummary } from "../../../modules/workspaces/types.js";
import { asRecord, pickId, pickString, toIsoString } from "../shared.js";

const mapWorkspace = (value: unknown): WorkspaceSummary => {
  const record = asRecord(value);
  if (!record) {
    throw new RoleValidationError("ROLE_MAPPER_INVALID_PAYLOAD", "Workspace payload must be an object.");
  }

  const id = pickId(record, ["id", "workspaceId", "workspace_id"]);
  if (id === undefined) {
    throw new RoleValidationError("ROLE_MAPPER_INVALID_PAYLOAD", "Workspace payload is missing id.");
  }

  const workspace: WorkspaceSummary = { id };

  const name = pickString(record, ["name", "workspaceName", "workspace_name"]);
  if (name !== undefined) {
    workspace.name = name;
  }

  const slug = pickString(record, ["slug"]);
  if (slug !== undefined) {
    workspace.slug = slug;
  }

  const createdAt = toIsoString(record.createdAt ?? record.created_at ?? record.created);
  if (createdAt !== undefined) {
    workspace.createdAt = createdAt;
  }

  const updatedAt = toIsoString(record.updatedAt ?? record.updated_at ?? record.updated);
  if (updatedAt !== undefined) {
    workspace.updatedAt = updatedAt;
  }

  return workspace;
};

const mapUser = (value: unknown): CurrentUserResult | undefined => {
  const record = asRecord(value);
  if (!record) {
    return undefined;
  }

  const id = pickId(record, ["id", "userId", "user_id"]);
  if (id === undefined) {
    return undefined;
  }

  const user: CurrentUserResult = { id };

  const email = pickString(record, ["email"]);
  if (email !== undefined) {
    user.email = email;
  }

  const name = pickString(record, ["name", "fullName", "full_name"]);
  if (name !== undefined) {
    user.name = name;
  }

  const createdAt = toIsoString(record.createdAt ?? record.created_at ?? record.created);
  if (createdAt !== undefined) {
    user.createdAt = createdAt;
  }

  const membershipsRaw = record.memberships;
  if (Array.isArray(membershipsRaw)) {
    const memberships = membershipsRaw
      .map((entry) => {
        const memberRecord = asRecord(entry);
        if (!memberRecord) {
          return undefined;
        }

        const workspaceId = pickId(memberRecord, ["workspaceId", "workspace_id", "id"]);
        if (workspaceId === undefined) {
          return undefined;
        }

        const membership: { workspaceId: string | number; role?: string } = { workspaceId };
        const role = pickString(memberRecord, ["role"]);
        if (role !== undefined) {
          membership.role = role;
        }

        return membership;
      })
      .filter((entry): entry is { workspaceId: string | number; role?: string } => entry !== undefined);

    if (memberships.length > 0) {
      user.memberships = memberships;
    }
  }

  return user;
};

export const mapServerpodAuthSession = (payload: unknown): AuthSessionResult => {
  const record = asRecord(payload);
  if (!record) {
    throw new RoleValidationError("ROLE_MAPPER_INVALID_PAYLOAD", "Auth session payload must be an object.");
  }

  const accessToken = pickString(record, ["accessToken", "access_token", "token"]);
  if (!accessToken) {
    throw new RoleValidationError(
      "ROLE_MAPPER_INVALID_PAYLOAD",
      "Auth session payload is missing access token."
    );
  }

  const session: AuthSessionResult = { accessToken };

  const refreshToken = pickString(record, ["refreshToken", "refresh_token"]);
  if (refreshToken !== undefined) {
    session.refreshToken = refreshToken;
  }

  const user = mapUser(record.user ?? record.profile ?? record.me);
  if (user !== undefined) {
    session.user = user;
  }

  const workspaceRecord = asRecord(record.workspace);
  if (workspaceRecord) {
    const workspaceId = pickId(workspaceRecord, ["id", "workspaceId", "workspace_id"]);
    if (workspaceId !== undefined) {
      const workspace: { id: string | number; name?: string } = { id: workspaceId };
      const name = pickString(workspaceRecord, ["name", "workspaceName", "workspace_name"]);
      if (name !== undefined) {
        workspace.name = name;
      }
      session.workspace = workspace;
    }
  }

  return session;
};

export const mapServerpodCurrentUser = (payload: unknown): CurrentUserResult => {
  const user = mapUser(payload);
  if (!user) {
    throw new RoleValidationError("ROLE_MAPPER_INVALID_PAYLOAD", "Current user payload is invalid.");
  }

  return user;
};

export const mapServerpodLogout = (payload: unknown): LogoutResult => {
  const record = asRecord(payload);
  if (!record) {
    return { revoked: true };
  }

  if (typeof record.revoked === "boolean") {
    return { revoked: record.revoked };
  }

  return { revoked: true };
};

export const mapServerpodWorkspaceSummary = (payload: unknown): WorkspaceSummary => {
  return mapWorkspace(payload);
};

export const mapServerpodWorkspaceList = (payload: unknown): WorkspaceSummary[] => {
  if (Array.isArray(payload)) {
    return payload.map((entry) => mapWorkspace(entry));
  }

  const record = asRecord(payload);
  if (!record) {
    throw new RoleValidationError("ROLE_MAPPER_INVALID_PAYLOAD", "Workspace list payload is invalid.");
  }

  const container = record.items ?? record.workspaces ?? record.data;
  if (Array.isArray(container)) {
    return container.map((entry) => mapWorkspace(entry));
  }

  throw new RoleValidationError("ROLE_MAPPER_INVALID_PAYLOAD", "Workspace list payload is missing array data.");
};
