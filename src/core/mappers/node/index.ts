import { RoleValidationError } from "../../errors/sdk-error.js";
import type {
  AuthSessionResult,
  CurrentUserMembership,
  CurrentUserResult,
  LogoutResult
} from "../../../modules/auth/types.js";
import type {
  CollectionEndpoint,
  CollectionFolder,
  CollectionSummary,
  EndpointExample
} from "../../../modules/collections/types.js";
import type {
  WorkspaceInvitation,
  WorkspaceMember,
  WorkspaceSummary,
  WorkspaceUpdate,
  WorkspaceUpdatesResult
} from "../../../modules/workspaces/types.js";
import type {
  EnvironmentSummary,
  EnvironmentVariable
} from "../../../modules/environments/types.js";
import type { RunExecutionResult, RunSource } from "../../../modules/runs/types.js";
import type { ImportExportJob } from "../../../modules/import-export/types.js";
import { asRecord, pickId, pickString, toIsoString } from "../shared.js";

const requireRecord = (value: unknown, message: string): Record<string, unknown> => {
  const record = asRecord(value);
  if (!record) {
    throw new RoleValidationError("ROLE_MAPPER_INVALID_PAYLOAD", message);
  }

  return record;
};

const mapWorkspace = (value: unknown): WorkspaceSummary => {
  const record = requireRecord(value, "Workspace payload must be an object.");
  const id = pickId(record, ["id", "workspaceId", "workspace_id"]);
  if (id === undefined) {
    throw new RoleValidationError(
      "ROLE_MAPPER_INVALID_PAYLOAD",
      "Workspace payload is missing id."
    );
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

const mapMembership = (value: unknown): CurrentUserMembership | undefined => {
  const record = asRecord(value);
  if (!record) {
    return undefined;
  }

  const workspaceId = pickId(record, ["workspaceId", "workspace_id", "id"]);
  if (workspaceId === undefined) {
    return undefined;
  }

  const membership: CurrentUserMembership = { workspaceId };
  const role = pickString(record, ["role"]);
  if (role !== undefined) {
    membership.role = role;
  }

  return membership;
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

  if (Array.isArray(record.memberships)) {
    const memberships = record.memberships
      .map((entry) => mapMembership(entry))
      .filter((entry): entry is CurrentUserMembership => entry !== undefined);

    if (memberships.length > 0) {
      user.memberships = memberships;
    }
  }

  return user;
};

const mapMember = (value: unknown): WorkspaceMember => {
  const record = requireRecord(value, "Workspace member payload must be an object.");
  const id = pickId(record, ["id", "memberId", "member_id"]);
  const workspaceId = pickId(record, ["workspaceId", "workspace_id"]);

  if (id === undefined || workspaceId === undefined) {
    throw new RoleValidationError(
      "ROLE_MAPPER_INVALID_PAYLOAD",
      "Workspace member payload is missing ids."
    );
  }

  const member: WorkspaceMember = { id, workspaceId };

  const userId = pickId(record, ["userId", "user_id"]);
  if (userId !== undefined) {
    member.userId = userId;
  }

  const email = pickString(record, ["email"]);
  if (email !== undefined) {
    member.email = email;
  }

  const role = pickString(record, ["role"]);
  if (role !== undefined) {
    member.role = role;
  }

  const createdAt = toIsoString(record.createdAt ?? record.created_at ?? record.created);
  if (createdAt !== undefined) {
    member.createdAt = createdAt;
  }

  return member;
};

const mapInvitation = (value: unknown): WorkspaceInvitation => {
  const record = requireRecord(value, "Workspace invitation payload must be an object.");
  const id = pickId(record, ["id", "invitationId", "invitation_id"]);
  const workspaceId = pickId(record, ["workspaceId", "workspace_id"]);

  if (id === undefined || workspaceId === undefined) {
    throw new RoleValidationError(
      "ROLE_MAPPER_INVALID_PAYLOAD",
      "Workspace invitation payload is missing ids."
    );
  }

  const invitation: WorkspaceInvitation = { id, workspaceId };
  const token = pickString(record, ["token"]);
  if (token !== undefined) {
    invitation.token = token;
  }

  const role = pickString(record, ["role"]);
  if (role !== undefined) {
    invitation.role = role;
  }

  const email = pickString(record, ["email"]);
  if (email !== undefined) {
    invitation.email = email;
  }

  const expiresAt = toIsoString(record.expiresAt ?? record.expires_at);
  if (expiresAt !== undefined) {
    invitation.expiresAt = expiresAt;
  }

  const createdAt = toIsoString(record.createdAt ?? record.created_at ?? record.created);
  if (createdAt !== undefined) {
    invitation.createdAt = createdAt;
  }

  return invitation;
};

const mapWorkspaceUpdate = (value: unknown): WorkspaceUpdate => {
  const record = requireRecord(value, "Workspace update payload must be an object.");
  const id = pickId(record, ["id", "updateId", "update_id"]);
  if (id === undefined) {
    throw new RoleValidationError(
      "ROLE_MAPPER_INVALID_PAYLOAD",
      "Workspace update payload is missing id."
    );
  }

  const update: WorkspaceUpdate = { id };
  const type = pickString(record, ["type"]);
  if (type !== undefined) {
    update.type = type;
  }

  const createdAt = toIsoString(record.createdAt ?? record.created_at ?? record.created);
  if (createdAt !== undefined) {
    update.createdAt = createdAt;
  }

  const actorId = pickId(record, ["actorId", "actor_id", "userId", "user_id"]);
  if (actorId !== undefined) {
    update.actorId = actorId;
  }

  const payload = asRecord(record.payload ?? record.meta ?? record.data);
  if (payload !== null) {
    update.payload = payload;
  }

  return update;
};

const mapCollection = (value: unknown): CollectionSummary => {
  const record = requireRecord(value, "Collection payload must be an object.");
  const id = pickId(record, ["id", "collectionId", "collection_id"]);
  const workspaceId = pickId(record, ["workspaceId", "workspace_id"]);
  if (id === undefined || workspaceId === undefined) {
    throw new RoleValidationError(
      "ROLE_MAPPER_INVALID_PAYLOAD",
      "Collection payload is missing ids."
    );
  }

  const collection: CollectionSummary = { id, workspaceId };
  const name = pickString(record, ["name"]);
  if (name !== undefined) {
    collection.name = name;
  }
  const description = pickString(record, ["description"]);
  if (description !== undefined) {
    collection.description = description;
  }
  const createdAt = toIsoString(record.createdAt ?? record.created_at ?? record.created);
  if (createdAt !== undefined) {
    collection.createdAt = createdAt;
  }
  const updatedAt = toIsoString(record.updatedAt ?? record.updated_at ?? record.updated);
  if (updatedAt !== undefined) {
    collection.updatedAt = updatedAt;
  }

  return collection;
};

const mapFolder = (value: unknown): CollectionFolder => {
  const record = requireRecord(value, "Collection folder payload must be an object.");
  const id = pickId(record, ["id", "folderId", "folder_id"]);
  const workspaceId = pickId(record, ["workspaceId", "workspace_id"]);
  const collectionId = pickId(record, ["collectionId", "collection_id"]);
  if (id === undefined || workspaceId === undefined || collectionId === undefined) {
    throw new RoleValidationError(
      "ROLE_MAPPER_INVALID_PAYLOAD",
      "Collection folder payload is missing ids."
    );
  }

  const folder: CollectionFolder = { id, workspaceId, collectionId };
  const name = pickString(record, ["name"]);
  if (name !== undefined) {
    folder.name = name;
  }
  const parentFolderId = pickId(record, ["parentFolderId", "parent_folder_id"]);
  if (parentFolderId !== undefined) {
    folder.parentFolderId = parentFolderId;
  }
  if (typeof record.position === "number") {
    folder.position = record.position;
  }
  const createdAt = toIsoString(record.createdAt ?? record.created_at ?? record.created);
  if (createdAt !== undefined) {
    folder.createdAt = createdAt;
  }
  const updatedAt = toIsoString(record.updatedAt ?? record.updated_at ?? record.updated);
  if (updatedAt !== undefined) {
    folder.updatedAt = updatedAt;
  }

  return folder;
};

const mapEndpoint = (value: unknown): CollectionEndpoint => {
  const record = requireRecord(value, "Collection endpoint payload must be an object.");
  const id = pickId(record, ["id", "endpointId", "endpoint_id"]);
  const workspaceId = pickId(record, ["workspaceId", "workspace_id"]);
  const collectionId = pickId(record, ["collectionId", "collection_id"]);
  if (id === undefined || workspaceId === undefined || collectionId === undefined) {
    throw new RoleValidationError(
      "ROLE_MAPPER_INVALID_PAYLOAD",
      "Collection endpoint payload is missing ids."
    );
  }

  const endpoint: CollectionEndpoint = { id, workspaceId, collectionId };
  const folderId = pickId(record, ["folderId", "folder_id"]);
  if (folderId !== undefined) {
    endpoint.folderId = folderId;
  }
  const name = pickString(record, ["name"]);
  if (name !== undefined) {
    endpoint.name = name;
  }
  const method = pickString(record, ["method", "httpMethod", "http_method"]);
  if (method !== undefined) {
    endpoint.method = method;
  }
  const url = pickString(record, ["url", "path"]);
  if (url !== undefined) {
    endpoint.url = url;
  }
  if (record.body !== undefined) {
    endpoint.body = record.body;
  }
  const auth = asRecord(record.auth);
  if (auth !== null) {
    endpoint.auth = auth;
  }
  const createdAt = toIsoString(record.createdAt ?? record.created_at ?? record.created);
  if (createdAt !== undefined) {
    endpoint.createdAt = createdAt;
  }
  const updatedAt = toIsoString(record.updatedAt ?? record.updated_at ?? record.updated);
  if (updatedAt !== undefined) {
    endpoint.updatedAt = updatedAt;
  }

  return endpoint;
};

const mapEndpointExample = (value: unknown): EndpointExample => {
  const record = requireRecord(value, "Endpoint example payload must be an object.");
  const id = pickId(record, ["id", "exampleId", "example_id"]);
  const workspaceId = pickId(record, ["workspaceId", "workspace_id"]);
  const collectionId = pickId(record, ["collectionId", "collection_id"]);
  const endpointId = pickId(record, ["endpointId", "endpoint_id"]);
  if (
    id === undefined ||
    workspaceId === undefined ||
    collectionId === undefined ||
    endpointId === undefined
  ) {
    throw new RoleValidationError(
      "ROLE_MAPPER_INVALID_PAYLOAD",
      "Endpoint example payload is missing ids."
    );
  }

  const example: EndpointExample = { id, workspaceId, collectionId, endpointId };
  const name = pickString(record, ["name"]);
  if (name !== undefined) {
    example.name = name;
  }
  if (record.request !== undefined) {
    example.request = record.request;
  }
  if (record.response !== undefined) {
    example.response = record.response;
  }
  const createdAt = toIsoString(record.createdAt ?? record.created_at ?? record.created);
  if (createdAt !== undefined) {
    example.createdAt = createdAt;
  }
  const updatedAt = toIsoString(record.updatedAt ?? record.updated_at ?? record.updated);
  if (updatedAt !== undefined) {
    example.updatedAt = updatedAt;
  }

  return example;
};

const mapDeleted = (): { deleted: true } => ({ deleted: true });
const mapLeft = (): { left: true } => ({ left: true });

const mapEnvironment = (value: unknown): EnvironmentSummary => {
  const record = requireRecord(value, "Environment payload must be an object.");
  const id = pickId(record, ["id", "environmentId", "environment_id"]);
  const workspaceId = pickId(record, ["workspaceId", "workspace_id"]);
  if (id === undefined || workspaceId === undefined) {
    throw new RoleValidationError("ROLE_MAPPER_INVALID_PAYLOAD", "Environment payload is missing ids.");
  }

  const environment: EnvironmentSummary = { id, workspaceId };
  const name = pickString(record, ["name"]);
  if (name !== undefined) {
    environment.name = name;
  }
  const description = pickString(record, ["description"]);
  if (description !== undefined) {
    environment.description = description;
  }
  const createdAt = toIsoString(record.createdAt ?? record.created_at ?? record.created);
  if (createdAt !== undefined) {
    environment.createdAt = createdAt;
  }
  const updatedAt = toIsoString(record.updatedAt ?? record.updated_at ?? record.updated);
  if (updatedAt !== undefined) {
    environment.updatedAt = updatedAt;
  }

  return environment;
};

const mapEnvironmentVariable = (value: unknown): EnvironmentVariable => {
  const record = requireRecord(value, "Environment variable payload must be an object.");
  const id = pickId(record, ["id", "variableId", "variable_id"]);
  const workspaceId = pickId(record, ["workspaceId", "workspace_id"]);
  const environmentId = pickId(record, ["environmentId", "environment_id"]);
  if (id === undefined || workspaceId === undefined || environmentId === undefined) {
    throw new RoleValidationError(
      "ROLE_MAPPER_INVALID_PAYLOAD",
      "Environment variable payload is missing ids."
    );
  }

  const variable: EnvironmentVariable = { id, workspaceId, environmentId };
  const key = pickString(record, ["key", "name"]);
  if (key !== undefined) {
    variable.key = key;
  }
  const valueString = pickString(record, ["value"]);
  if (valueString !== undefined) {
    variable.value = valueString;
  }
  if (typeof record.enabled === "boolean") {
    variable.enabled = record.enabled;
  }
  if (typeof record.isSecret === "boolean") {
    variable.isSecret = record.isSecret;
  }
  if (typeof record.position === "number") {
    variable.position = record.position;
  }
  const createdAt = toIsoString(record.createdAt ?? record.created_at ?? record.created);
  if (createdAt !== undefined) {
    variable.createdAt = createdAt;
  }
  const updatedAt = toIsoString(record.updatedAt ?? record.updated_at ?? record.updated);
  if (updatedAt !== undefined) {
    variable.updatedAt = updatedAt;
  }

  return variable;
};

const mapRunSource = (value: unknown): RunSource | undefined => {
  const record = asRecord(value);
  if (!record) {
    return undefined;
  }

  const kind = pickString(record, ["kind", "type"]);
  if (kind === "adhoc") {
    const request = asRecord(record.request);
    if (!request) {
      return undefined;
    }

    const method = pickString(request, ["method"]);
    const url = pickString(request, ["url", "uri"]);
    if (!method || !url) {
      return undefined;
    }

    const source: RunSource = {
      kind: "adhoc",
      request: {
        method,
        url
      }
    };

    const headers = asRecord(request.headers);
    if (headers !== null) {
      const normalized: Record<string, string> = {};
      for (const [key, raw] of Object.entries(headers)) {
        if (typeof raw === "string") {
          normalized[key] = raw;
        }
      }
      source.request.headers = normalized;
    }

    if (request.body !== undefined) {
      source.request.body = request.body;
    }

    return source;
  }

  if (kind === "collection") {
    const collectionId = pickId(record, ["collectionId", "collection_id"]);
    const endpointId = pickId(record, ["endpointId", "endpoint_id"]);
    if (collectionId === undefined || endpointId === undefined) {
      return undefined;
    }

    const source: RunSource = {
      kind: "collection",
      collectionId,
      endpointId
    };

    const exampleId = pickId(record, ["exampleId", "example_id"]);
    if (exampleId !== undefined) {
      source.exampleId = exampleId;
    }

    const variables = asRecord(record.variables);
    if (variables !== null) {
      const normalized: Record<string, string | number | boolean> = {};
      for (const [key, raw] of Object.entries(variables)) {
        if (typeof raw === "string" || typeof raw === "number" || typeof raw === "boolean") {
          normalized[key] = raw;
        }
      }
      source.variables = normalized;
    }

    return source;
  }

  return undefined;
};

const mapRun = (value: unknown): RunExecutionResult => {
  const record = requireRecord(value, "Run payload must be an object.");
  const id = pickId(record, ["id", "runId", "run_id"]);
  const workspaceId = pickId(record, ["workspaceId", "workspace_id"]);
  if (id === undefined || workspaceId === undefined) {
    throw new RoleValidationError("ROLE_MAPPER_INVALID_PAYLOAD", "Run payload is missing ids.");
  }

  const run: RunExecutionResult = { id, workspaceId };
  const status = pickString(record, ["status"]);
  if (status !== undefined) {
    run.status = status;
  }
  const source = mapRunSource(record.source);
  if (source !== undefined) {
    run.source = source;
  }
  const request = asRecord(record.request);
  if (request !== null) {
    run.request = request;
  }
  const response = asRecord(record.response);
  if (response !== null) {
    run.response = response;
  }
  const error = asRecord(record.error);
  if (error !== null) {
    run.error = error;
  }
  const createdAt = toIsoString(record.createdAt ?? record.created_at ?? record.created);
  if (createdAt !== undefined) {
    run.createdAt = createdAt;
  }
  const updatedAt = toIsoString(record.updatedAt ?? record.updated_at ?? record.updated);
  if (updatedAt !== undefined) {
    run.updatedAt = updatedAt;
  }

  return run;
};

const mapImportExportJob = (value: unknown): ImportExportJob => {
  const record = requireRecord(value, "Import/export job payload must be an object.");
  const id = pickId(record, ["id", "jobId", "job_id"]);
  const workspaceId = pickId(record, ["workspaceId", "workspace_id"]);
  if (id === undefined || workspaceId === undefined) {
    throw new RoleValidationError(
      "ROLE_MAPPER_INVALID_PAYLOAD",
      "Import/export job payload is missing ids."
    );
  }

  const job: ImportExportJob = { id, workspaceId };
  const type = pickString(record, ["type"]);
  if (type === "import" || type === "export") {
    job.type = type;
  }
  const status = pickString(record, ["status"]);
  if (status !== undefined) {
    job.status = status;
  }
  const summary = pickString(record, ["summary", "message"]);
  if (summary !== undefined) {
    job.summary = summary;
  }
  const createdAt = toIsoString(record.createdAt ?? record.created_at ?? record.created);
  if (createdAt !== undefined) {
    job.createdAt = createdAt;
  }
  const updatedAt = toIsoString(record.updatedAt ?? record.updated_at ?? record.updated);
  if (updatedAt !== undefined) {
    job.updatedAt = updatedAt;
  }

  return job;
};

export const mapNodeAuthSession = (payload: unknown): AuthSessionResult => {
  const record = requireRecord(payload, "Auth session payload must be an object.");
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

export const mapNodeCurrentUser = (payload: unknown): CurrentUserResult => {
  const user = mapUser(payload);
  if (!user) {
    throw new RoleValidationError(
      "ROLE_MAPPER_INVALID_PAYLOAD",
      "Current user payload is invalid."
    );
  }

  return user;
};

export const mapNodeLogout = (payload: unknown): LogoutResult => {
  const record = asRecord(payload);
  if (!record) {
    return { revoked: true };
  }

  if (typeof record.revoked === "boolean") {
    return { revoked: record.revoked };
  }

  return { revoked: true };
};

export const mapNodeWorkspaceSummary = (payload: unknown): WorkspaceSummary =>
  mapWorkspace(payload);

export const mapNodeWorkspaceList = (payload: unknown): WorkspaceSummary[] => {
  if (Array.isArray(payload)) {
    return payload.map(mapWorkspace);
  }

  const record = requireRecord(payload, "Workspace list payload is invalid.");
  const container = record.items ?? record.workspaces ?? record.data;
  if (Array.isArray(container)) {
    return container.map(mapWorkspace);
  }

  throw new RoleValidationError(
    "ROLE_MAPPER_INVALID_PAYLOAD",
    "Workspace list payload is missing array data."
  );
};

export const mapNodeWorkspaceMember = (payload: unknown): WorkspaceMember => mapMember(payload);
export const mapNodeWorkspaceMembers = (payload: unknown): WorkspaceMember[] => {
  if (Array.isArray(payload)) {
    return payload.map(mapMember);
  }

  const record = requireRecord(payload, "Workspace members payload is invalid.");
  const container = record.items ?? record.members ?? record.data;
  if (Array.isArray(container)) {
    return container.map(mapMember);
  }

  throw new RoleValidationError(
    "ROLE_MAPPER_INVALID_PAYLOAD",
    "Workspace members payload is missing array data."
  );
};

export const mapNodeWorkspaceInvitation = (payload: unknown): WorkspaceInvitation =>
  mapInvitation(payload);
export const mapNodeLeave = (): { left: true } => mapLeft();
export const mapNodeDeleted = (): { deleted: true } => mapDeleted();

export const mapNodeWorkspaceUpdates = (payload: unknown): WorkspaceUpdatesResult => {
  const record = requireRecord(payload, "Workspace updates payload is invalid.");
  const updatesRaw = record.items ?? record.updates ?? record.data;
  if (!Array.isArray(updatesRaw)) {
    throw new RoleValidationError(
      "ROLE_MAPPER_INVALID_PAYLOAD",
      "Workspace updates payload is missing items."
    );
  }

  const result: WorkspaceUpdatesResult = {
    items: updatesRaw.map(mapWorkspaceUpdate)
  };

  const cursorSource = asRecord(record.cursor) ?? asRecord(record.page);
  if (cursorSource) {
    const next = cursorSource.next;
    if (typeof next === "string" || typeof next === "number") {
      result.cursor = { next };
    }
  }

  return result;
};

export const mapNodeCollectionSummary = (payload: unknown): CollectionSummary =>
  mapCollection(payload);
export const mapNodeCollectionList = (payload: unknown): CollectionSummary[] => {
  if (Array.isArray(payload)) {
    return payload.map(mapCollection);
  }

  const record = requireRecord(payload, "Collection list payload is invalid.");
  const container = record.items ?? record.collections ?? record.data;
  if (Array.isArray(container)) {
    return container.map(mapCollection);
  }

  throw new RoleValidationError(
    "ROLE_MAPPER_INVALID_PAYLOAD",
    "Collection list payload is missing array data."
  );
};

export const mapNodeCollectionFolder = (payload: unknown): CollectionFolder => mapFolder(payload);
export const mapNodeCollectionFolders = (payload: unknown): CollectionFolder[] => {
  if (Array.isArray(payload)) {
    return payload.map(mapFolder);
  }

  const record = requireRecord(payload, "Collection folders payload is invalid.");
  const container = record.items ?? record.folders ?? record.data;
  if (Array.isArray(container)) {
    return container.map(mapFolder);
  }

  throw new RoleValidationError(
    "ROLE_MAPPER_INVALID_PAYLOAD",
    "Collection folders payload is missing array data."
  );
};

export const mapNodeCollectionEndpoint = (payload: unknown): CollectionEndpoint =>
  mapEndpoint(payload);
export const mapNodeCollectionEndpoints = (payload: unknown): CollectionEndpoint[] => {
  if (Array.isArray(payload)) {
    return payload.map(mapEndpoint);
  }

  const record = requireRecord(payload, "Collection endpoints payload is invalid.");
  const container = record.items ?? record.endpoints ?? record.data;
  if (Array.isArray(container)) {
    return container.map(mapEndpoint);
  }

  throw new RoleValidationError(
    "ROLE_MAPPER_INVALID_PAYLOAD",
    "Collection endpoints payload is missing array data."
  );
};

export const mapNodeEndpointExample = (payload: unknown): EndpointExample =>
  mapEndpointExample(payload);
export const mapNodeEndpointExamples = (payload: unknown): EndpointExample[] => {
  if (Array.isArray(payload)) {
    return payload.map(mapEndpointExample);
  }

  const record = requireRecord(payload, "Endpoint examples payload is invalid.");
  const container = record.items ?? record.examples ?? record.data;
  if (Array.isArray(container)) {
    return container.map(mapEndpointExample);
  }

  throw new RoleValidationError(
    "ROLE_MAPPER_INVALID_PAYLOAD",
    "Endpoint examples payload is missing array data."
  );
};

export const mapNodeEnvironmentSummary = (payload: unknown): EnvironmentSummary =>
  mapEnvironment(payload);
export const mapNodeEnvironmentList = (payload: unknown): EnvironmentSummary[] => {
  if (Array.isArray(payload)) {
    return payload.map(mapEnvironment);
  }
  const record = requireRecord(payload, "Environment list payload is invalid.");
  const container = record.items ?? record.environments ?? record.data;
  if (Array.isArray(container)) {
    return container.map(mapEnvironment);
  }
  throw new RoleValidationError(
    "ROLE_MAPPER_INVALID_PAYLOAD",
    "Environment list payload is missing array data."
  );
};

export const mapNodeEnvironmentVariable = (payload: unknown): EnvironmentVariable =>
  mapEnvironmentVariable(payload);
export const mapNodeEnvironmentVariables = (payload: unknown): EnvironmentVariable[] => {
  if (Array.isArray(payload)) {
    return payload.map(mapEnvironmentVariable);
  }
  const record = requireRecord(payload, "Environment variables payload is invalid.");
  const container = record.items ?? record.variables ?? record.data;
  if (Array.isArray(container)) {
    return container.map(mapEnvironmentVariable);
  }
  throw new RoleValidationError(
    "ROLE_MAPPER_INVALID_PAYLOAD",
    "Environment variables payload is missing array data."
  );
};

export const mapNodeRunExecutionResult = (payload: unknown): RunExecutionResult => mapRun(payload);

export const mapNodeImportExportJob = (payload: unknown): ImportExportJob => mapImportExportJob(payload);
export const mapNodeImportExportJobs = (payload: unknown): ImportExportJob[] => {
  if (Array.isArray(payload)) {
    return payload.map(mapImportExportJob);
  }
  const record = requireRecord(payload, "Import/export jobs payload is invalid.");
  const container = record.items ?? record.jobs ?? record.data;
  if (Array.isArray(container)) {
    return container.map(mapImportExportJob);
  }
  throw new RoleValidationError(
    "ROLE_MAPPER_INVALID_PAYLOAD",
    "Import/export jobs payload is missing array data."
  );
};
