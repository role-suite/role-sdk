import { resolveConfig, type RoleSdkConfig, type TokenPair } from "./config.js";
import { RoleSdkError } from "./core/errors/sdk-error.js";
import { defaultCapabilities, type BackendCapabilities } from "./core/provider/capabilities.js";

export type ModuleClient = Record<string, (...args: unknown[]) => Promise<unknown>>;

export type WorkspaceScopedClient = {
  collections: ModuleClient;
  environments: ModuleClient;
  runs: ModuleClient;
  importExport: ModuleClient;
};

export type RoleSdkClient = {
  auth: ModuleClient;
  workspaces: ModuleClient;
  collections: ModuleClient;
  environments: ModuleClient;
  runs: ModuleClient;
  importExport: ModuleClient;
  inWorkspace: (workspaceId: string | number) => WorkspaceScopedClient;
  capabilities: () => BackendCapabilities;
  setTokens: (tokens: Partial<TokenPair>) => Promise<void>;
  clearTokens: () => Promise<void>;
};

const notImplemented = (): Promise<never> => {
  return Promise.reject(
    new RoleSdkError("ROLE_NOT_IMPLEMENTED", "Module implementation starts in Phase 1.")
  );
};

const createStubModule = (): ModuleClient => {
  const moduleClient: ModuleClient = new Proxy(
    {},
    {
      get: () => notImplemented
    }
  );

  return moduleClient;
};

export const createRoleSdk = (config: RoleSdkConfig): RoleSdkClient => {
  if (!config.baseUrl) {
    throw new RoleSdkError("ROLE_INVALID_CONFIG", "baseUrl is required.");
  }

  if (config.backend !== "node" && config.backend !== "serverpod") {
    throw new RoleSdkError("ROLE_INVALID_CONFIG", "backend must be either 'node' or 'serverpod'.");
  }

  const resolved = resolveConfig(config);
  const capabilities = defaultCapabilities(resolved.backend);

  const setTokens = async (tokens: Partial<TokenPair>): Promise<void> => {
    const existing = await resolved.auth.tokenStore.get();
    const accessToken = tokens.accessToken ?? existing?.accessToken;

    if (!accessToken) {
      throw new RoleSdkError("ROLE_VALIDATION_ERROR", "setTokens requires accessToken.");
    }

    const merged: TokenPair = {
      accessToken
    };

    const refreshToken = tokens.refreshToken ?? existing?.refreshToken;
    if (refreshToken !== undefined) {
      merged.refreshToken = refreshToken;
    }

    const accessTokenTtlSeconds =
      tokens.accessTokenTtlSeconds ?? existing?.accessTokenTtlSeconds;
    if (accessTokenTtlSeconds !== undefined) {
      merged.accessTokenTtlSeconds = accessTokenTtlSeconds;
    }

    const refreshTokenTtlSeconds =
      tokens.refreshTokenTtlSeconds ?? existing?.refreshTokenTtlSeconds;
    if (refreshTokenTtlSeconds !== undefined) {
      merged.refreshTokenTtlSeconds = refreshTokenTtlSeconds;
    }

    try {
      await resolved.auth.tokenStore.set(merged);
    } catch (error) {
      throw new RoleSdkError("ROLE_TOKEN_STORE_ERROR", "Failed to persist tokens.", {
        cause: error
      });
    }
  };

  const clearTokens = async (): Promise<void> => {
    try {
      await resolved.auth.tokenStore.clear();
    } catch (error) {
      throw new RoleSdkError("ROLE_TOKEN_STORE_ERROR", "Failed to clear tokens.", {
        cause: error
      });
    }
  };

  const collections = createStubModule();
  const environments = createStubModule();
  const runs = createStubModule();
  const importExport = createStubModule();

  return {
    auth: createStubModule(),
    workspaces: createStubModule(),
    collections,
    environments,
    runs,
    importExport,
    inWorkspace: (workspaceId) => {
      void workspaceId;
      return {
        collections,
        environments,
        runs,
        importExport
      };
    },
    capabilities: () => capabilities,
    setTokens,
    clearTokens
  };
};
