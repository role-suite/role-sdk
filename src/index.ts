export { createRoleSdk } from "./client.js";

export type {
  ErrorHookContext,
  Id,
  RequestHookContext,
  ResponseHookContext,
  RoleSdkConfig,
  TokenPair,
  TokenStore
} from "./config.js";

export type { RoleSdkClient, WorkspaceScopedClient } from "./client.js";
export type { BackendCapabilities } from "./core/provider/capabilities.js";
export type { BackendProvider } from "./core/provider/backend-provider.js";
export { RoleSdkError } from "./core/errors/sdk-error.js";
