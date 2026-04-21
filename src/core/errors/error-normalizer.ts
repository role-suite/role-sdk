import {
  RoleApiError,
  RoleAuthError,
  RoleNetworkError,
  RoleSdkError,
  RoleUnknownError,
  RoleValidationError
} from "./sdk-error.js";

export const normalizeUnknownError = (
  error: unknown,
  fallbackCode = "ROLE_UNKNOWN_ERROR",
  fallbackMessage = "Unexpected SDK error."
): RoleSdkError => {
  if (error instanceof RoleSdkError) {
    return error;
  }

  if (error instanceof DOMException && error.name === "AbortError") {
    return new RoleNetworkError("ROLE_TIMEOUT", "Request timed out.", { cause: error });
  }

  if (error instanceof TypeError) {
    return new RoleNetworkError("ROLE_NETWORK_ERROR", "Network request failed.", { cause: error });
  }

  if (error instanceof Error) {
    return new RoleUnknownError(fallbackCode, error.message || fallbackMessage, { cause: error });
  }

  return new RoleUnknownError(fallbackCode, fallbackMessage, {
    details: { originalError: String(error) }
  });
};

export const normalizeApiFailure = (params: {
  status?: number;
  code?: string;
  message?: string;
  requestId?: string;
  details?: Record<string, unknown>;
  cause?: unknown;
}): RoleSdkError => {
  const status = params.status;
  const code = params.code ?? "ROLE_API_ERROR";
  const message = params.message ?? "Backend request failed.";

  if (status === 401 || code === "ROLE_AUTH_ERROR") {
    const options: {
      status?: number;
      requestId?: string;
      details?: Record<string, unknown>;
      cause?: unknown;
    } = {};

    if (status !== undefined) {
      options.status = status;
    }
    if (params.requestId !== undefined) {
      options.requestId = params.requestId;
    }
    if (params.details !== undefined) {
      options.details = params.details;
    }
    if (params.cause !== undefined) {
      options.cause = params.cause;
    }

    return new RoleAuthError(code, message, {
      ...options
    });
  }

  if (status === 400 || status === 422 || code.startsWith("ROLE_VALIDATION")) {
    const options: {
      status?: number;
      requestId?: string;
      details?: Record<string, unknown>;
      cause?: unknown;
    } = {};

    if (status !== undefined) {
      options.status = status;
    }
    if (params.requestId !== undefined) {
      options.requestId = params.requestId;
    }
    if (params.details !== undefined) {
      options.details = params.details;
    }
    if (params.cause !== undefined) {
      options.cause = params.cause;
    }

    return new RoleValidationError(code, message, {
      ...options
    });
  }

  const options: {
    status?: number;
    requestId?: string;
    details?: Record<string, unknown>;
    cause?: unknown;
  } = {};

  if (status !== undefined) {
    options.status = status;
  }
  if (params.requestId !== undefined) {
    options.requestId = params.requestId;
  }
  if (params.details !== undefined) {
    options.details = params.details;
  }
  if (params.cause !== undefined) {
    options.cause = params.cause;
  }

  return new RoleApiError(code, message, {
    ...options
  });
};
