import type { Id } from "../../config.js";

/**
 * @experimental This type may change before 1.0.0.
 */
export type RunSource =
  | {
      kind: "adhoc";
      request: {
        method: string;
        url: string;
        headers?: Record<string, string>;
        body?: unknown;
      };
    }
  | {
      kind: "collection";
      collectionId: Id;
      endpointId: Id;
      exampleId?: Id;
      variables?: Record<string, string | number | boolean>;
    };

/**
 * @experimental This type may change before 1.0.0.
 */
export type CreateRunInput = {
  workspaceId: Id;
  source: RunSource;
  environmentId?: Id;
};

/**
 * @experimental This type may change before 1.0.0.
 */
export type RunExecutionResult = {
  id: Id;
  workspaceId: Id;
  status?: string;
  source?: RunSource;
  request?: Record<string, unknown>;
  response?: Record<string, unknown>;
  error?: Record<string, unknown>;
  createdAt?: string;
  updatedAt?: string;
};
