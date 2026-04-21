# Role SDK API Surface Spec (v1)

This document defines the planned public TypeScript API for the SDK.

Scope:

- Public configuration and client entrypoint.
- Module-level method contracts.
- Shared type and error contracts.
- Capability introspection contract.

Non-scope:

- Internal provider implementation details.
- Internal transport/retry/auth orchestration internals.

## 1) Entry point

```ts
const sdk = createRoleSdk(config);
```

### 1.1 `createRoleSdk(config)`

Planned configuration contract:

```ts
type RoleSdkConfig = {
  backend: "node" | "serverpod";
  baseUrl: string;
  fetch?: typeof globalThis.fetch;
  timeoutMs?: number;
  retry?: {
    enabled?: boolean;
    maxAttempts?: number;
    baseDelayMs?: number;
    maxDelayMs?: number;
    jitter?: boolean;
  };
  auth?: {
    mode?: "none" | "token";
    accessToken?: string;
    refreshToken?: string;
    autoRefresh?: boolean;
    tokenStore?: TokenStore;
  };
  hooks?: {
    onRequest?: (ctx: RequestHookContext) => void | Promise<void>;
    onResponse?: (ctx: ResponseHookContext) => void | Promise<void>;
    onError?: (ctx: ErrorHookContext) => void | Promise<void>;
  };
};
```

Default behavior (v1):

- `timeoutMs` defaults to `30000`.
- Retry defaults to `enabled: true`, `maxAttempts: 3`, exponential backoff with jitter.
- Retries apply only to safe/idempotent operations unless explicitly opted in.
- Auth token persistence defaults to in-memory storage.
- `tokenStore` is optional and user-provided.
- Built-in persistence adapters (for example `localStorage`) are not part of core v1.

## 2) Root client contract

```ts
type RoleSdkClient = {
  auth: AuthClient;
  workspaces: WorkspacesClient;
  collections: CollectionsClient;
  environments: EnvironmentsClient;
  runs: RunsClient;
  importExport: ImportExportClient;
  inWorkspace(workspaceId: Id): WorkspaceScopedClient;
  capabilities(): BackendCapabilities;
  setTokens(tokens: Partial<TokenPair>): void;
  clearTokens(): void;
};
```

## 3) Workspace-scoped client contract

```ts
type WorkspaceScopedClient = {
  collections: Omit<CollectionsClient, "list" | "create" | "get" | "update" | "remove"> & {
    list(): Promise<CollectionSummary[]>;
    create(input: CreateCollectionInput): Promise<CollectionSummary>;
    get(collectionId: Id): Promise<CollectionSummary>;
    update(collectionId: Id, input: UpdateCollectionInput): Promise<CollectionSummary>;
    remove(collectionId: Id): Promise<{ deleted: true }>;
  };
  environments: WorkspaceScopedEnvironmentsClient;
  runs: WorkspaceScopedRunsClient;
  importExport: WorkspaceScopedImportExportClient;
};
```

Note: final scoped method signatures may be simplified during implementation, but workspace context should remove repeated `workspaceId` in common workflows.

## 4) Module contracts

## 4.1 Auth

```ts
type AuthClient = {
  register(input: RegisterInput): Promise<AuthSessionResult>;
  login(input: LoginInput): Promise<AuthSessionResult>;
  refresh(input?: RefreshInput): Promise<AuthSessionResult>;
  logout(input?: LogoutInput): Promise<{ revoked: boolean }>;
  me(): Promise<CurrentUserResult>;
};
```

## 4.2 Workspaces

```ts
type WorkspacesClient = {
  list(): Promise<WorkspaceSummary[]>;
  get(input: { workspaceId: Id }): Promise<WorkspaceSummary>;
  create(input: CreateWorkspaceInput): Promise<WorkspaceSummary>;

  listMembers(input: { workspaceId: Id }): Promise<WorkspaceMember[]>;
  addMember(input: AddWorkspaceMemberInput): Promise<WorkspaceMember>;
  updateMemberRole(input: UpdateWorkspaceMemberRoleInput): Promise<WorkspaceMember>;
  removeMember(input: RemoveWorkspaceMemberInput): Promise<{ deleted: true }>;

  createInvitation(input: CreateWorkspaceInvitationInput): Promise<WorkspaceInvitation>;
  joinWithInvitation(input: JoinWorkspaceInput): Promise<WorkspaceSummary>;

  leave(input: { workspaceId: Id }): Promise<{ left: true }>;
  convertToTeam(input: ConvertWorkspaceToTeamInput): Promise<WorkspaceSummary>;

  listUpdates(input: WorkspaceUpdatesInput): Promise<WorkspaceUpdatesResult>;
};
```

## 4.3 Collections

```ts
type CollectionsClient = {
  list(input: { workspaceId: Id }): Promise<CollectionSummary[]>;
  get(input: { workspaceId: Id; collectionId: Id }): Promise<CollectionSummary>;
  create(input: CreateCollectionInput): Promise<CollectionSummary>;
  update(input: UpdateCollectionInput): Promise<CollectionSummary>;
  remove(input: { workspaceId: Id; collectionId: Id }): Promise<{ deleted: true }>;

  listFolders(input: { workspaceId: Id; collectionId: Id }): Promise<CollectionFolder[]>;
  createFolder(input: CreateCollectionFolderInput): Promise<CollectionFolder>;
  updateFolder(input: UpdateCollectionFolderInput): Promise<CollectionFolder>;
  removeFolder(input: {
    workspaceId: Id;
    collectionId: Id;
    folderId: Id;
  }): Promise<{ deleted: true }>;

  listEndpoints(input: { workspaceId: Id; collectionId: Id }): Promise<CollectionEndpoint[]>;
  getEndpoint(input: {
    workspaceId: Id;
    collectionId: Id;
    endpointId: Id;
  }): Promise<CollectionEndpoint>;
  createEndpoint(input: CreateCollectionEndpointInput): Promise<CollectionEndpoint>;
  updateEndpoint(input: UpdateCollectionEndpointInput): Promise<CollectionEndpoint>;
  removeEndpoint(input: {
    workspaceId: Id;
    collectionId: Id;
    endpointId: Id;
  }): Promise<{ deleted: true }>;

  listEndpointExamples(input: {
    workspaceId: Id;
    collectionId: Id;
    endpointId: Id;
  }): Promise<EndpointExample[]>;
  createEndpointExample(input: CreateEndpointExampleInput): Promise<EndpointExample>;
  updateEndpointExample(input: UpdateEndpointExampleInput): Promise<EndpointExample>;
  removeEndpointExample(input: {
    workspaceId: Id;
    collectionId: Id;
    endpointId: Id;
    exampleId: Id;
  }): Promise<{ deleted: true }>;
};
```

## 4.4 Environments

```ts
type EnvironmentsClient = {
  list(input: { workspaceId: Id }): Promise<EnvironmentSummary[]>;
  get(input: { workspaceId: Id; environmentId: Id }): Promise<EnvironmentSummary>;
  create(input: CreateEnvironmentInput): Promise<EnvironmentSummary>;
  update(input: UpdateEnvironmentInput): Promise<EnvironmentSummary>;
  remove(input: { workspaceId: Id; environmentId: Id }): Promise<{ deleted: true }>;

  listVariables(input: { workspaceId: Id; environmentId: Id }): Promise<EnvironmentVariable[]>;
  getVariable(input: {
    workspaceId: Id;
    environmentId: Id;
    variableId: Id;
  }): Promise<EnvironmentVariable>;
  createVariable(input: CreateEnvironmentVariableInput): Promise<EnvironmentVariable>;
  updateVariable(input: UpdateEnvironmentVariableInput): Promise<EnvironmentVariable>;
  removeVariable(input: {
    workspaceId: Id;
    environmentId: Id;
    variableId: Id;
  }): Promise<{ deleted: true }>;
};
```

## 4.5 Runs

```ts
type RunsClient = {
  create(input: CreateRunInput): Promise<RunExecutionResult>;
  get(input: { workspaceId: Id; runId: Id }): Promise<RunExecutionResult>;
  cancel(input: { workspaceId: Id; runId: Id }): Promise<RunExecutionResult>;
};
```

## 4.6 Import/export

```ts
type ImportExportClient = {
  listJobs(input: { workspaceId: Id }): Promise<ImportExportJob[]>;
  getJob(input: { workspaceId: Id; jobId: Id }): Promise<ImportExportJob>;
  createExport(input: CreateExportJobInput): Promise<ImportExportJob>;
  createImport(input: CreateImportJobInput): Promise<ImportExportJob>;
};
```

## 5) Shared result and type principles

- All methods resolve with already-unwrapped `data` models.
- Backend envelope/RPC shape is hidden from SDK consumers.
- IDs remain `number | string` in SDK public types where cross-backend uncertainty exists.
- Date/time fields are exposed as ISO strings in public models.
- Public types should avoid backend naming leakage.

## 6) Error contract

All rejected promises should throw one of:

- `RoleApiError`
- `RoleAuthError`
- `RoleNetworkError`
- `RoleValidationError`
- `RoleUnknownError`

Common shape:

```ts
type RoleSdkError = Error & {
  code: string;
  status?: number;
  requestId?: string;
  details?: Record<string, unknown>;
};
```

## 7) Capability contract

```ts
type BackendCapabilities = {
  auth: { refresh: boolean };
  workspaces: { updates: boolean };
  runs: { cancel: boolean };
  importExport: { jobs: boolean };
};
```

Rules:

- Capability flags use nested method-group or method-level shape, not module-level booleans only.
- Capability flags must be backend-specific and explicit.
- Calling capability-gated methods when disabled must throw typed `RoleApiError` with deterministic code.

## 8) Stability rules

- This API spec is the semver contract.
- Any breaking signature/type behavior change requires major bump.
- Additions should be backward-compatible and default-safe.

## 9) Foundational shared types (planned)

```ts
type Id = string | number;

type RequestHookContext = {
  backend: "node" | "serverpod";
  module: string;
  method: string;
  requestId?: string;
  input: unknown;
};

type ResponseHookContext = {
  backend: "node" | "serverpod";
  module: string;
  method: string;
  requestId?: string;
  output: unknown;
  durationMs: number;
};

type ErrorHookContext = {
  backend: "node" | "serverpod";
  module: string;
  method: string;
  requestId?: string;
  error: RoleSdkError;
};

type TokenPair = {
  accessToken: string;
  refreshToken: string;
  accessTokenTtlSeconds?: number;
  refreshTokenTtlSeconds?: number;
};

interface TokenStore {
  get(): Promise<TokenPair | null> | TokenPair | null;
  set(tokens: TokenPair | null): Promise<void> | void;
  clear(): Promise<void> | void;
}
```

## 10) Behavioral consistency rules

- Methods should be pure async calls with no hidden global state.
- Auto-refresh must run at most once concurrently per client instance.
- Retries should never replay non-idempotent operations by default.
- All thrown errors should include `code`; HTTP-backed failures should include `status`.

## 11) Pagination and cursor conventions

Where backend endpoints expose paginated updates/job feeds, SDK models should prefer:

```ts
type CursorPage<T> = {
  items: T[];
  cursor?: {
    next?: string | number;
  };
};
```

If provider payload shape differs, provider mapper must adapt to this format.
