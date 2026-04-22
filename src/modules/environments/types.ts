import type { Id } from "../../config.js";

/**
 * @experimental This type may change before 1.0.0.
 */
export type EnvironmentSummary = {
  id: Id;
  workspaceId: Id;
  name?: string;
  description?: string;
  createdAt?: string;
  updatedAt?: string;
};

/**
 * @experimental This type may change before 1.0.0.
 */
export type CreateEnvironmentInput = {
  workspaceId: Id;
  name: string;
  description?: string;
};

/**
 * @experimental This type may change before 1.0.0.
 */
export type UpdateEnvironmentInput = {
  workspaceId: Id;
  environmentId: Id;
  name?: string;
  description?: string;
};

/**
 * @experimental This type may change before 1.0.0.
 */
export type EnvironmentVariable = {
  id: Id;
  workspaceId: Id;
  environmentId: Id;
  key?: string;
  value?: string;
  enabled?: boolean;
  isSecret?: boolean;
  position?: number;
  createdAt?: string;
  updatedAt?: string;
};

/**
 * @experimental This type may change before 1.0.0.
 */
export type CreateEnvironmentVariableInput = {
  workspaceId: Id;
  environmentId: Id;
  key: string;
  value?: string;
  enabled?: boolean;
  isSecret?: boolean;
  position?: number;
};

/**
 * @experimental This type may change before 1.0.0.
 */
export type UpdateEnvironmentVariableInput = {
  workspaceId: Id;
  environmentId: Id;
  variableId: Id;
  key?: string;
  value?: string;
  enabled?: boolean;
  isSecret?: boolean;
  position?: number;
};
