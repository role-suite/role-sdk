import type { BackendCapabilities } from "./capabilities.js";

export type ProviderMethod<Input = unknown, Output = unknown> = (input: Input) => Promise<Output>;

export type AuthProvider = {
  register: ProviderMethod;
  login: ProviderMethod;
  refresh: ProviderMethod;
  logout: ProviderMethod;
  me: ProviderMethod;
};

export type WorkspacesProvider = Record<string, ProviderMethod>;
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
