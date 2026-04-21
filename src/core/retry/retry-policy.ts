import { RoleNetworkError, RoleSdkError } from "../errors/sdk-error.js";

const IDEMPOTENT_METHODS = new Set(["GET", "HEAD", "OPTIONS"]);

export type RetryContext = {
  attempt: number;
  maxAttempts: number;
  method: string;
  error: RoleSdkError;
  forceRetry: boolean;
};

export const isDefaultRetryableMethod = (method: string): boolean => {
  return IDEMPOTENT_METHODS.has(method.toUpperCase());
};

export const shouldRetry = (context: RetryContext): boolean => {
  if (context.attempt >= context.maxAttempts) {
    return false;
  }

  if (!context.forceRetry && !isDefaultRetryableMethod(context.method)) {
    return false;
  }

  if (context.error instanceof RoleNetworkError) {
    return true;
  }

  if (context.error.status === 429) {
    return true;
  }

  if (context.error.status !== undefined && context.error.status >= 500) {
    return true;
  }

  return false;
};
