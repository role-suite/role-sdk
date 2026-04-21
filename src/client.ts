import { resolveConfig, type Id, type RoleSdkConfig, type TokenPair } from "./config.js";
import { AuthManager } from "./core/auth/auth-manager.js";
import { normalizeUnknownError } from "./core/errors/error-normalizer.js";
import {
  RoleApiError,
  RoleAuthError,
  RoleValidationError
} from "./core/errors/sdk-error.js";
import type { BackendProvider } from "./core/provider/backend-provider.js";
import { createNodeRestProvider } from "./core/provider/node-rest-provider.js";
import { createServerpodRpcProvider } from "./core/provider/serverpod-rpc-provider.js";
import type { BackendCapabilities } from "./core/provider/capabilities.js";
import { HttpClient } from "./core/transport/http-client.js";
import type { AuthSessionResult, CurrentUserResult, LogoutResult } from "./modules/auth/types.js";
import type { WorkspaceSummary } from "./modules/workspaces/types.js";

export type ModuleClient = Record<string, (...args: unknown[]) => Promise<unknown>>;

export type WorkspaceScopedClient = {
  collections: ModuleClient;
  environments: ModuleClient;
  runs: ModuleClient;
  importExport: ModuleClient;
};

export type RoleSdkClient = {
  auth: {
    register: (input: unknown) => Promise<AuthSessionResult>;
    login: (input: unknown) => Promise<AuthSessionResult>;
    refresh: (input?: unknown) => Promise<AuthSessionResult>;
    logout: (input?: unknown) => Promise<LogoutResult>;
    me: () => Promise<CurrentUserResult>;
  };
  workspaces: {
    list: () => Promise<WorkspaceSummary[]>;
    get: (input: { workspaceId: Id }) => Promise<WorkspaceSummary>;
    create: (input: unknown) => Promise<WorkspaceSummary>;
  };
  collections: ModuleClient;
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
    register: async (input: unknown): Promise<AuthSessionResult> => {
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
    login: async (input: unknown): Promise<AuthSessionResult> => {
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
    refresh: async (input?: unknown): Promise<AuthSessionResult> => {
      await initialization;
      const refreshed = await provider.auth.refresh(input ?? {});
      await authManager.setTokens(extractTokenPair(refreshed));
      return refreshed;
    },
    logout: async (input?: unknown): Promise<LogoutResult> => {
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
    create: async (input: unknown): Promise<WorkspaceSummary> => {
      await initialization;
      return invokeWithOptionalRefresh(() => provider.workspaces.create(input), refreshAuth);
    }
  };

  const collections = createUnsupportedModule("collections");
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
      void workspaceId;
      return {
        collections,
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
