import type { BackendCapabilities } from "./capabilities.js";
import type { AuthSessionResult, CurrentUserResult, LogoutResult } from "../../modules/auth/types.js";
import type { WorkspaceSummary } from "../../modules/workspaces/types.js";

export type ProviderMethod<Input = unknown, Output = unknown> = (input: Input) => Promise<Output>;

export type AuthProvider = {
  register: ProviderMethod<unknown, AuthSessionResult>;
  login: ProviderMethod<unknown, AuthSessionResult>;
  refresh: ProviderMethod<unknown, AuthSessionResult>;
  logout: ProviderMethod<unknown, LogoutResult>;
  me: ProviderMethod<unknown, CurrentUserResult>;
};

export type WorkspacesProvider = {
  list: ProviderMethod<void, WorkspaceSummary[]>;
  get: ProviderMethod<{ workspaceId: string | number }, WorkspaceSummary>;
  create: ProviderMethod<unknown, WorkspaceSummary>;
};

export type CollectionsProvider = Record<string, ProviderMethod>;
export type EnvironmentsProvider = Record<string, ProviderMethod>;
export type RunsProvider = Record<string, ProviderMethod>;
export type ImportExportProvider = Record<string, ProviderMethod>;

export type BackendProvider = {
  auth: AuthProvider;
  workspaces: WorkspacesProvider;
  collections: CollectionsProvider;
  environments: EnvironmentsProvider;
  runs: RunsProvider;
  importExport: ImportExportProvider;
  capabilities: () => BackendCapabilities;
};
