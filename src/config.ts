import type { RoleSdkErrorShape } from "./core/errors/sdk-error.js";

export type Id = string | number;

export type TokenPair = {
  accessToken: string;
  refreshToken?: string;
  accessTokenTtlSeconds?: number;
  refreshTokenTtlSeconds?: number;
};

export type TokenStore = {
  get: () => Promise<TokenPair | null> | TokenPair | null;
  set: (tokens: TokenPair | null) => Promise<void> | void;
  clear: () => Promise<void> | void;
};

export type RequestHookContext = {
  backend: "node" | "serverpod";
  module: string;
  method: string;
  requestId: string | undefined;
  input: unknown;
};

export type ResponseHookContext = {
  backend: "node" | "serverpod";
  module: string;
  method: string;
  requestId: string | undefined;
  output: unknown;
  durationMs: number;
};

export type ErrorHookContext = {
  backend: "node" | "serverpod";
  module: string;
  method: string;
  requestId: string | undefined;
  error: RoleSdkErrorShape;
};

export type RoleSdkConfig = {
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

export type ResolvedRoleSdkConfig = RoleSdkConfig & {
  timeoutMs: number;
  retry: {
    enabled: boolean;
    maxAttempts: number;
    baseDelayMs: number;
    maxDelayMs: number;
    jitter: boolean;
  };
  auth: {
    mode: "none" | "token";
    accessToken?: string;
    refreshToken?: string;
    autoRefresh: boolean;
    tokenStore: TokenStore;
  };
};

const inMemoryTokenStore = (): TokenStore => {
  let current: TokenPair | null = null;

  return {
    get: () => current,
    set: (tokens) => {
      current = tokens;
    },
    clear: () => {
      current = null;
    }
  };
};

export const resolveConfig = (config: RoleSdkConfig): ResolvedRoleSdkConfig => {
  const auth: ResolvedRoleSdkConfig["auth"] = {
    mode: config.auth?.mode ?? "token",
    autoRefresh: config.auth?.autoRefresh ?? true,
    tokenStore: config.auth?.tokenStore ?? inMemoryTokenStore()
  };

  if (config.auth?.accessToken !== undefined) {
    auth.accessToken = config.auth.accessToken;
  }

  if (config.auth?.refreshToken !== undefined) {
    auth.refreshToken = config.auth.refreshToken;
  }

  return {
    ...config,
    timeoutMs: config.timeoutMs ?? 30000,
    retry: {
      enabled: config.retry?.enabled ?? true,
      maxAttempts: config.retry?.maxAttempts ?? 3,
      baseDelayMs: config.retry?.baseDelayMs ?? 200,
      maxDelayMs: config.retry?.maxDelayMs ?? 2000,
      jitter: config.retry?.jitter ?? true
    },
    auth
  };
};
