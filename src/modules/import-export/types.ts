import type { Id } from "../../config.js";

export type ImportExportJob = {
  id: Id;
  workspaceId: Id;
  type?: "import" | "export";
  status?: string;
  summary?: string;
  createdAt?: string;
  updatedAt?: string;
};

export type CreateExportJobInput = {
  workspaceId: Id;
  collectionIds?: Id[];
  includeEnvironments?: boolean;
};

export type CreateImportJobInput = {
  workspaceId: Id;
  sourceUrl?: string;
  payload?: Record<string, unknown>;
};
