import type { Id } from "../../config.js";

/**
 * @experimental This type may change before 1.0.0.
 */
export type ImportExportJob = {
  id: Id;
  workspaceId: Id;
  type?: "import" | "export";
  status?: string;
  summary?: string;
  createdAt?: string;
  updatedAt?: string;
};

/**
 * @experimental This type may change before 1.0.0.
 */
export type CreateExportJobInput = {
  workspaceId: Id;
  collectionIds?: Id[];
  includeEnvironments?: boolean;
};

/**
 * @experimental This type may change before 1.0.0.
 */
export type CreateImportJobInput = {
  workspaceId: Id;
  sourceUrl?: string;
  payload?: Record<string, unknown>;
};
