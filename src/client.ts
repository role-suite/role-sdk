import { resolveConfig, type Id, type RoleSdkConfig, type TokenPair } from "./config.js";
import { AuthManager } from "./core/auth/auth-manager.js";
import { normalizeUnknownError } from "./core/errors/error-normalizer.js";
import { RoleApiError, RoleAuthError, RoleValidationError } from "./core/errors/sdk-error.js";
import type { BackendProvider } from "./core/provider/backend-provider.js";
import { createNodeRestProvider } from "./core/provider/node-rest-provider.js";
import { createServerpodRpcProvider } from "./core/provider/serverpod-rpc-provider.js";
import type { BackendCapabilities } from "./core/provider/capabilities.js";
import { HttpClient } from "./core/transport/http-client.js";
import type {
  AuthSessionResult,
  CurrentUserResult,
  LoginInput,
  LogoutInput,
  LogoutResult,
  RefreshInput,
  RegisterInput
} from "./modules/auth/types.js";
import type {
  AddWorkspaceMemberInput,
  ConvertWorkspaceToTeamInput,
  CreateWorkspaceInput,
  CreateWorkspaceInvitationInput,
  JoinWorkspaceInput,
  RemoveWorkspaceMemberInput,
  UpdateWorkspaceMemberRoleInput,
  WorkspaceInvitation,
  WorkspaceMember,
  WorkspaceSummary,
  WorkspaceUpdatesInput,
  WorkspaceUpdatesResult
} from "./modules/workspaces/types.js";
import type {
  CollectionEndpoint,
  CollectionFolder,
  CollectionSummary,
  CreateCollectionEndpointInput,
  CreateCollectionFolderInput,
  CreateCollectionInput,
  CreateEndpointExampleInput,
  EndpointExample,
  UpdateCollectionEndpointInput,
  UpdateCollectionFolderInput,
  UpdateCollectionInput,
  UpdateEndpointExampleInput
} from "./modules/collections/types.js";

export type ModuleClient = Record<string, (...args: unknown[]) => Promise<unknown>>;

export type WorkspaceScopedCollectionsClient = {
  list: () => Promise<CollectionSummary[]>;
  get: (collectionId: Id) => Promise<CollectionSummary>;
  create: (input: Omit<CreateCollectionInput, "workspaceId">) => Promise<CollectionSummary>;
  update: (
    collectionId: Id,
    input: Omit<UpdateCollectionInput, "workspaceId" | "collectionId">
  ) => Promise<CollectionSummary>;
  remove: (collectionId: Id) => Promise<{ deleted: true }>;
  listFolders: (collectionId: Id) => Promise<CollectionFolder[]>;
  createFolder: (
    collectionId: Id,
    input: Omit<CreateCollectionFolderInput, "workspaceId" | "collectionId">
  ) => Promise<CollectionFolder>;
  updateFolder: (
    collectionId: Id,
    folderId: Id,
    input: Omit<UpdateCollectionFolderInput, "workspaceId" | "collectionId" | "folderId">
  ) => Promise<CollectionFolder>;
  removeFolder: (collectionId: Id, folderId: Id) => Promise<{ deleted: true }>;
  listEndpoints: (collectionId: Id) => Promise<CollectionEndpoint[]>;
  getEndpoint: (collectionId: Id, endpointId: Id) => Promise<CollectionEndpoint>;
  createEndpoint: (
    collectionId: Id,
    input: Omit<CreateCollectionEndpointInput, "workspaceId" | "collectionId">
  ) => Promise<CollectionEndpoint>;
  updateEndpoint: (
    collectionId: Id,
    endpointId: Id,
    input: Omit<UpdateCollectionEndpointInput, "workspaceId" | "collectionId" | "endpointId">
  ) => Promise<CollectionEndpoint>;
  removeEndpoint: (collectionId: Id, endpointId: Id) => Promise<{ deleted: true }>;
  listEndpointExamples: (collectionId: Id, endpointId: Id) => Promise<EndpointExample[]>;
  createEndpointExample: (
    collectionId: Id,
    endpointId: Id,
    input: Omit<CreateEndpointExampleInput, "workspaceId" | "collectionId" | "endpointId">
  ) => Promise<EndpointExample>;
  updateEndpointExample: (
    collectionId: Id,
    endpointId: Id,
    exampleId: Id,
    input: Omit<
      UpdateEndpointExampleInput,
      "workspaceId" | "collectionId" | "endpointId" | "exampleId"
    >
  ) => Promise<EndpointExample>;
  removeEndpointExample: (
    collectionId: Id,
    endpointId: Id,
    exampleId: Id
  ) => Promise<{ deleted: true }>;
};

export type WorkspaceScopedClient = {
  collections: WorkspaceScopedCollectionsClient;
  environments: ModuleClient;
  runs: ModuleClient;
  importExport: ModuleClient;
};

export type RoleSdkClient = {
  auth: {
    register: (input: RegisterInput) => Promise<AuthSessionResult>;
    login: (input: LoginInput) => Promise<AuthSessionResult>;
    refresh: (input?: RefreshInput) => Promise<AuthSessionResult>;
    logout: (input?: LogoutInput) => Promise<LogoutResult>;
    me: () => Promise<CurrentUserResult>;
  };
  workspaces: {
    list: () => Promise<WorkspaceSummary[]>;
    get: (input: { workspaceId: Id }) => Promise<WorkspaceSummary>;
    create: (input: CreateWorkspaceInput) => Promise<WorkspaceSummary>;
    listMembers: (input: { workspaceId: Id }) => Promise<WorkspaceMember[]>;
    addMember: (input: AddWorkspaceMemberInput) => Promise<WorkspaceMember>;
    updateMemberRole: (input: UpdateWorkspaceMemberRoleInput) => Promise<WorkspaceMember>;
    removeMember: (input: RemoveWorkspaceMemberInput) => Promise<{ deleted: true }>;
    createInvitation: (input: CreateWorkspaceInvitationInput) => Promise<WorkspaceInvitation>;
    joinWithInvitation: (input: JoinWorkspaceInput) => Promise<WorkspaceSummary>;
    leave: (input: { workspaceId: Id }) => Promise<{ left: true }>;
    convertToTeam: (input: ConvertWorkspaceToTeamInput) => Promise<WorkspaceSummary>;
    listUpdates: (input: WorkspaceUpdatesInput) => Promise<WorkspaceUpdatesResult>;
  };
  collections: {
    list: (input: { workspaceId: Id }) => Promise<CollectionSummary[]>;
    get: (input: { workspaceId: Id; collectionId: Id }) => Promise<CollectionSummary>;
    create: (input: CreateCollectionInput) => Promise<CollectionSummary>;
    update: (input: UpdateCollectionInput) => Promise<CollectionSummary>;
    remove: (input: { workspaceId: Id; collectionId: Id }) => Promise<{ deleted: true }>;
    listFolders: (input: { workspaceId: Id; collectionId: Id }) => Promise<CollectionFolder[]>;
    createFolder: (input: CreateCollectionFolderInput) => Promise<CollectionFolder>;
    updateFolder: (input: UpdateCollectionFolderInput) => Promise<CollectionFolder>;
    removeFolder: (input: {
      workspaceId: Id;
      collectionId: Id;
      folderId: Id;
    }) => Promise<{ deleted: true }>;
    listEndpoints: (input: { workspaceId: Id; collectionId: Id }) => Promise<CollectionEndpoint[]>;
    getEndpoint: (input: {
      workspaceId: Id;
      collectionId: Id;
      endpointId: Id;
    }) => Promise<CollectionEndpoint>;
    createEndpoint: (input: CreateCollectionEndpointInput) => Promise<CollectionEndpoint>;
    updateEndpoint: (input: UpdateCollectionEndpointInput) => Promise<CollectionEndpoint>;
    removeEndpoint: (input: {
      workspaceId: Id;
      collectionId: Id;
      endpointId: Id;
    }) => Promise<{ deleted: true }>;
    listEndpointExamples: (input: {
      workspaceId: Id;
      collectionId: Id;
      endpointId: Id;
    }) => Promise<EndpointExample[]>;
    createEndpointExample: (input: CreateEndpointExampleInput) => Promise<EndpointExample>;
    updateEndpointExample: (input: UpdateEndpointExampleInput) => Promise<EndpointExample>;
    removeEndpointExample: (input: {
      workspaceId: Id;
      collectionId: Id;
      endpointId: Id;
      exampleId: Id;
    }) => Promise<{ deleted: true }>;
  };
  environments: ModuleClient;
  runs: ModuleClient;
  importExport: ModuleClient;
  inWorkspace: (workspaceId: Id) => WorkspaceScopedClient;
  capabilities: () => BackendCapabilities;
  setTokens: (tokens: Partial<TokenPair>) => Promise<void>;
  clearTokens: () => Promise<void>;
};

const createUnsupportedModule = (moduleName: string): ModuleClient => {
  const moduleClient: ModuleClient = new Proxy(
    {},
    {
      get: (_, methodName) => {
        return () => {
          return Promise.reject(
            new RoleApiError(
              "ROLE_UNSUPPORTED_CAPABILITY",
              `Module '${moduleName}.${String(methodName)}' is not implemented yet in this phase.`
            )
          );
        };
      }
    }
  );

  return moduleClient;
};

const validateConfig = (config: RoleSdkConfig): void => {
  if (!config.baseUrl) {
    throw new RoleValidationError("ROLE_INVALID_CONFIG", "baseUrl is required.");
  }

  if (config.fetch === undefined && typeof globalThis.fetch !== "function") {
    throw new RoleValidationError(
      "ROLE_INVALID_CONFIG",
      "No fetch implementation available. Provide config.fetch in this runtime."
    );
  }

  if (config.backend !== "node" && config.backend !== "serverpod") {
    throw new RoleValidationError(
      "ROLE_INVALID_CONFIG",
      "backend must be either 'node' or 'serverpod'."
    );
  }
};

const createProvider = (
  backend: "node" | "serverpod",
  httpClient: HttpClient,
  getAuthHeaders: () => Promise<Record<string, string>>
): BackendProvider => {
  if (backend === "node") {
    return createNodeRestProvider(httpClient, getAuthHeaders);
  }

  return createServerpodRpcProvider(httpClient, getAuthHeaders);
};

export const createRoleSdk = (config: RoleSdkConfig): RoleSdkClient => {
  validateConfig(config);
  const resolved = resolveConfig(config);

  const authManager = new AuthManager(resolved.auth.tokenStore);
  let initialization: Promise<void> = Promise.resolve();

  if (resolved.auth.mode === "token" && resolved.auth.accessToken !== undefined) {
    const initialTokens: TokenPair = {
      accessToken: resolved.auth.accessToken
    };

    if (resolved.auth.refreshToken !== undefined) {
      initialTokens.refreshToken = resolved.auth.refreshToken;
    }

    initialization = authManager.setTokens(initialTokens);
  }

  const transportConfig: ConstructorParameters<typeof HttpClient>[0] = {
    baseUrl: resolved.baseUrl,
    fetchImplementation: resolved.fetch ?? globalThis.fetch,
    timeoutMs: resolved.timeoutMs,
    retry: resolved.retry
  };

  if (resolved.hooks !== undefined) {
    transportConfig.hooks = resolved.hooks;
  }

  const httpClient = new HttpClient(transportConfig);

  const getAuthHeaders = async (): Promise<Record<string, string>> => {
    await initialization;

    if (resolved.auth.mode === "none") {
      return {};
    }

    const accessToken = await authManager.getAccessToken();
    if (!accessToken) {
      return {};
    }

    return {
      Authorization: `Bearer ${accessToken}`
    };
  };

  const provider = createProvider(resolved.backend, httpClient, getAuthHeaders);

  const invokeWithOptionalRefresh = async <T>(
    run: () => Promise<T>,
    refresh: () => Promise<TokenPair>
  ): Promise<T> => {
    try {
      return await run();
    } catch (error) {
      const normalized = normalizeUnknownError(error);

      if (
        !(normalized instanceof RoleAuthError) &&
        !(normalized instanceof RoleApiError && normalized.status === 401)
      ) {
        throw normalized;
      }

      if (resolved.auth.mode === "none" || !resolved.auth.autoRefresh) {
        throw normalized;
      }

      await authManager.refreshWithSingleFlight(refresh);
      return run();
    }
  };

  const extractTokenPair = (result: AuthSessionResult): TokenPair => {
    if (!result.accessToken) {
      throw new RoleAuthError(
        "ROLE_AUTH_REFRESH_INVALID",
        "Refresh response is missing accessToken."
      );
    }

    const tokens: TokenPair = { accessToken: result.accessToken };
    if (result.refreshToken !== undefined) {
      tokens.refreshToken = result.refreshToken;
    }

    return tokens;
  };

  const refreshAuth = async (): Promise<TokenPair> => {
    await initialization;

    const refreshToken = await authManager.getRefreshToken();
    const refreshed = await provider.auth.refresh(refreshToken ? { refreshToken } : {});
    return extractTokenPair(refreshed);
  };

  const setTokens = async (tokens: Partial<TokenPair>): Promise<void> => {
    await initialization;

    const existing = await authManager.getTokens();
    const accessToken = tokens.accessToken ?? existing?.accessToken;

    if (!accessToken) {
      throw new RoleValidationError("ROLE_VALIDATION_ERROR", "setTokens requires accessToken.");
    }

    const next: TokenPair = { accessToken };

    const refreshToken = tokens.refreshToken ?? existing?.refreshToken;
    if (refreshToken !== undefined) {
      next.refreshToken = refreshToken;
    }

    const accessTokenTtlSeconds = tokens.accessTokenTtlSeconds ?? existing?.accessTokenTtlSeconds;
    if (accessTokenTtlSeconds !== undefined) {
      next.accessTokenTtlSeconds = accessTokenTtlSeconds;
    }

    const refreshTokenTtlSeconds =
      tokens.refreshTokenTtlSeconds ?? existing?.refreshTokenTtlSeconds;
    if (refreshTokenTtlSeconds !== undefined) {
      next.refreshTokenTtlSeconds = refreshTokenTtlSeconds;
    }

    initialization = authManager.setTokens(next);
    await initialization;
  };

  const clearTokens = async (): Promise<void> => {
    await initialization;
    initialization = authManager.clearTokens();
    await initialization;
  };

  const auth = {
    register: async (input: RegisterInput): Promise<AuthSessionResult> => {
      await initialization;
      const result = await provider.auth.register(input);

      if (resolved.auth.mode === "token") {
        try {
          const tokenPair = extractTokenPair(result);
          await authManager.setTokens(tokenPair);
        } catch {
          // token extraction is best-effort for register/login
        }
      }

      return result;
    },
    login: async (input: LoginInput): Promise<AuthSessionResult> => {
      await initialization;
      const result = await provider.auth.login(input);

      if (resolved.auth.mode === "token") {
        try {
          const tokenPair = extractTokenPair(result);
          await authManager.setTokens(tokenPair);
        } catch {
          // token extraction is best-effort for register/login
        }
      }

      return result;
    },
    refresh: async (input?: RefreshInput): Promise<AuthSessionResult> => {
      await initialization;
      const refreshed = await provider.auth.refresh(input ?? {});
      await authManager.setTokens(extractTokenPair(refreshed));
      return refreshed;
    },
    logout: async (input?: LogoutInput): Promise<LogoutResult> => {
      await initialization;
      const result = await provider.auth.logout(input ?? {});
      await authManager.clearTokens();
      return result;
    },
    me: async (): Promise<CurrentUserResult> => {
      await initialization;
      return invokeWithOptionalRefresh(() => provider.auth.me({}), refreshAuth);
    }
  };

  const workspaces = {
    list: async (): Promise<WorkspaceSummary[]> => {
      await initialization;
      return invokeWithOptionalRefresh(() => provider.workspaces.list(), refreshAuth);
    },
    get: async (input: { workspaceId: Id }): Promise<WorkspaceSummary> => {
      await initialization;
      return invokeWithOptionalRefresh(() => provider.workspaces.get(input), refreshAuth);
    },
    create: async (input: CreateWorkspaceInput): Promise<WorkspaceSummary> => {
      await initialization;
      return invokeWithOptionalRefresh(() => provider.workspaces.create(input), refreshAuth);
    },
    listMembers: async (input: { workspaceId: Id }): Promise<WorkspaceMember[]> => {
      await initialization;
      return invokeWithOptionalRefresh(() => provider.workspaces.listMembers(input), refreshAuth);
    },
    addMember: async (input: AddWorkspaceMemberInput): Promise<WorkspaceMember> => {
      await initialization;
      return invokeWithOptionalRefresh(() => provider.workspaces.addMember(input), refreshAuth);
    },
    updateMemberRole: async (input: UpdateWorkspaceMemberRoleInput): Promise<WorkspaceMember> => {
      await initialization;
      return invokeWithOptionalRefresh(
        () => provider.workspaces.updateMemberRole(input),
        refreshAuth
      );
    },
    removeMember: async (input: RemoveWorkspaceMemberInput): Promise<{ deleted: true }> => {
      await initialization;
      return invokeWithOptionalRefresh(() => provider.workspaces.removeMember(input), refreshAuth);
    },
    createInvitation: async (
      input: CreateWorkspaceInvitationInput
    ): Promise<WorkspaceInvitation> => {
      await initialization;
      return invokeWithOptionalRefresh(
        () => provider.workspaces.createInvitation(input),
        refreshAuth
      );
    },
    joinWithInvitation: async (input: JoinWorkspaceInput): Promise<WorkspaceSummary> => {
      await initialization;
      return invokeWithOptionalRefresh(
        () => provider.workspaces.joinWithInvitation(input),
        refreshAuth
      );
    },
    leave: async (input: { workspaceId: Id }): Promise<{ left: true }> => {
      await initialization;
      return invokeWithOptionalRefresh(() => provider.workspaces.leave(input), refreshAuth);
    },
    convertToTeam: async (input: ConvertWorkspaceToTeamInput): Promise<WorkspaceSummary> => {
      await initialization;
      return invokeWithOptionalRefresh(() => provider.workspaces.convertToTeam(input), refreshAuth);
    },
    listUpdates: async (input: WorkspaceUpdatesInput): Promise<WorkspaceUpdatesResult> => {
      await initialization;
      return invokeWithOptionalRefresh(() => provider.workspaces.listUpdates(input), refreshAuth);
    }
  };

  const collections = {
    list: async (input: { workspaceId: Id }): Promise<CollectionSummary[]> => {
      await initialization;
      return invokeWithOptionalRefresh(() => provider.collections.list(input), refreshAuth);
    },
    get: async (input: { workspaceId: Id; collectionId: Id }): Promise<CollectionSummary> => {
      await initialization;
      return invokeWithOptionalRefresh(() => provider.collections.get(input), refreshAuth);
    },
    create: async (input: CreateCollectionInput): Promise<CollectionSummary> => {
      await initialization;
      return invokeWithOptionalRefresh(() => provider.collections.create(input), refreshAuth);
    },
    update: async (input: UpdateCollectionInput): Promise<CollectionSummary> => {
      await initialization;
      return invokeWithOptionalRefresh(() => provider.collections.update(input), refreshAuth);
    },
    remove: async (input: { workspaceId: Id; collectionId: Id }): Promise<{ deleted: true }> => {
      await initialization;
      return invokeWithOptionalRefresh(() => provider.collections.remove(input), refreshAuth);
    },
    listFolders: async (input: {
      workspaceId: Id;
      collectionId: Id;
    }): Promise<CollectionFolder[]> => {
      await initialization;
      return invokeWithOptionalRefresh(() => provider.collections.listFolders(input), refreshAuth);
    },
    createFolder: async (input: CreateCollectionFolderInput): Promise<CollectionFolder> => {
      await initialization;
      return invokeWithOptionalRefresh(() => provider.collections.createFolder(input), refreshAuth);
    },
    updateFolder: async (input: UpdateCollectionFolderInput): Promise<CollectionFolder> => {
      await initialization;
      return invokeWithOptionalRefresh(() => provider.collections.updateFolder(input), refreshAuth);
    },
    removeFolder: async (input: {
      workspaceId: Id;
      collectionId: Id;
      folderId: Id;
    }): Promise<{ deleted: true }> => {
      await initialization;
      return invokeWithOptionalRefresh(() => provider.collections.removeFolder(input), refreshAuth);
    },
    listEndpoints: async (input: {
      workspaceId: Id;
      collectionId: Id;
    }): Promise<CollectionEndpoint[]> => {
      await initialization;
      return invokeWithOptionalRefresh(
        () => provider.collections.listEndpoints(input),
        refreshAuth
      );
    },
    getEndpoint: async (input: {
      workspaceId: Id;
      collectionId: Id;
      endpointId: Id;
    }): Promise<CollectionEndpoint> => {
      await initialization;
      return invokeWithOptionalRefresh(() => provider.collections.getEndpoint(input), refreshAuth);
    },
    createEndpoint: async (input: CreateCollectionEndpointInput): Promise<CollectionEndpoint> => {
      await initialization;
      return invokeWithOptionalRefresh(
        () => provider.collections.createEndpoint(input),
        refreshAuth
      );
    },
    updateEndpoint: async (input: UpdateCollectionEndpointInput): Promise<CollectionEndpoint> => {
      await initialization;
      return invokeWithOptionalRefresh(
        () => provider.collections.updateEndpoint(input),
        refreshAuth
      );
    },
    removeEndpoint: async (input: {
      workspaceId: Id;
      collectionId: Id;
      endpointId: Id;
    }): Promise<{ deleted: true }> => {
      await initialization;
      return invokeWithOptionalRefresh(
        () => provider.collections.removeEndpoint(input),
        refreshAuth
      );
    },
    listEndpointExamples: async (input: {
      workspaceId: Id;
      collectionId: Id;
      endpointId: Id;
    }): Promise<EndpointExample[]> => {
      await initialization;
      return invokeWithOptionalRefresh(
        () => provider.collections.listEndpointExamples(input),
        refreshAuth
      );
    },
    createEndpointExample: async (input: CreateEndpointExampleInput): Promise<EndpointExample> => {
      await initialization;
      return invokeWithOptionalRefresh(
        () => provider.collections.createEndpointExample(input),
        refreshAuth
      );
    },
    updateEndpointExample: async (input: UpdateEndpointExampleInput): Promise<EndpointExample> => {
      await initialization;
      return invokeWithOptionalRefresh(
        () => provider.collections.updateEndpointExample(input),
        refreshAuth
      );
    },
    removeEndpointExample: async (input: {
      workspaceId: Id;
      collectionId: Id;
      endpointId: Id;
      exampleId: Id;
    }): Promise<{ deleted: true }> => {
      await initialization;
      return invokeWithOptionalRefresh(
        () => provider.collections.removeEndpointExample(input),
        refreshAuth
      );
    }
  };
  const environments = createUnsupportedModule("environments");
  const runs = createUnsupportedModule("runs");
  const importExport = createUnsupportedModule("importExport");

  return {
    auth,
    workspaces,
    collections,
    environments,
    runs,
    importExport,
    inWorkspace: (workspaceId) => {
      const scopedCollections: WorkspaceScopedCollectionsClient = {
        list: () => collections.list({ workspaceId }),
        get: (collectionId) => collections.get({ workspaceId, collectionId }),
        create: (input) => collections.create({ workspaceId, ...input }),
        update: (collectionId, input) =>
          collections.update({ workspaceId, collectionId, ...input }),
        remove: (collectionId) => collections.remove({ workspaceId, collectionId }),
        listFolders: (collectionId) => collections.listFolders({ workspaceId, collectionId }),
        createFolder: (collectionId, input) =>
          collections.createFolder({ workspaceId, collectionId, ...input }),
        updateFolder: (collectionId, folderId, input) =>
          collections.updateFolder({ workspaceId, collectionId, folderId, ...input }),
        removeFolder: (collectionId, folderId) =>
          collections.removeFolder({ workspaceId, collectionId, folderId }),
        listEndpoints: (collectionId) => collections.listEndpoints({ workspaceId, collectionId }),
        getEndpoint: (collectionId, endpointId) =>
          collections.getEndpoint({ workspaceId, collectionId, endpointId }),
        createEndpoint: (collectionId, input) =>
          collections.createEndpoint({ workspaceId, collectionId, ...input }),
        updateEndpoint: (collectionId, endpointId, input) =>
          collections.updateEndpoint({ workspaceId, collectionId, endpointId, ...input }),
        removeEndpoint: (collectionId, endpointId) =>
          collections.removeEndpoint({ workspaceId, collectionId, endpointId }),
        listEndpointExamples: (collectionId, endpointId) =>
          collections.listEndpointExamples({ workspaceId, collectionId, endpointId }),
        createEndpointExample: (collectionId, endpointId, input) =>
          collections.createEndpointExample({ workspaceId, collectionId, endpointId, ...input }),
        updateEndpointExample: (collectionId, endpointId, exampleId, input) =>
          collections.updateEndpointExample({
            workspaceId,
            collectionId,
            endpointId,
            exampleId,
            ...input
          }),
        removeEndpointExample: (collectionId, endpointId, exampleId) =>
          collections.removeEndpointExample({ workspaceId, collectionId, endpointId, exampleId })
      };

      return {
        collections: scopedCollections,
        environments,
        runs,
        importExport
      };
    },
    capabilities: () => provider.capabilities(),
    setTokens,
    clearTokens
  };
};
