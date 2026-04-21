import type { Id } from "../../config.js";

export type EnvironmentSummary = {
  id: Id;
  workspaceId: Id;
  name?: string;
  description?: string;
  createdAt?: string;
  updatedAt?: string;
};

export type CreateEnvironmentInput = {
  workspaceId: Id;
  name: string;
  description?: string;
};

export type UpdateEnvironmentInput = {
  workspaceId: Id;
  environmentId: Id;
  name?: string;
  description?: string;
};

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

export type CreateEnvironmentVariableInput = {
  workspaceId: Id;
  environmentId: Id;
  key: string;
  value?: string;
  enabled?: boolean;
  isSecret?: boolean;
  position?: number;
};

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
