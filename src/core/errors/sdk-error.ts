/**
 * @experimental Error codes may change before 1.0.0.
 */
export const ErrorCodes = {
  API_ERROR: "ROLE_API_ERROR",
  AUTH_INVALID_CREDENTIALS: "ROLE_AUTH_INVALID_CREDENTIALS",
  AUTH_TOKEN_EXPIRED: "ROLE_AUTH_TOKEN_EXPIRED",
  AUTH_TOKEN_INVALID: "ROLE_AUTH_TOKEN_INVALID",
  AUTH_REFRESH_FAILED: "ROLE_AUTH_REFRESH_FAILED",
  VALIDATION_ERROR: "ROLE_VALIDATION_ERROR",
  NETWORK_ERROR: "ROLE_NETWORK_ERROR",
  NETWORK_TIMEOUT: "ROLE_NETWORK_TIMEOUT",
  NETWORK_CONNECTION_REFUSED: "ROLE_NETWORK_CONNECTION_REFUSED",
  NETWORK_DNS_ERROR: "ROLE_NETWORK_DNS_ERROR",
  UNKNOWN_ERROR: "ROLE_UNKNOWN_ERROR"
} as const;

export type ErrorCode = (typeof ErrorCodes)[keyof typeof ErrorCodes];

export type RoleSdkErrorShape = Error & {
  code: string;
  status: number | undefined;
  requestId: string | undefined;
  details: Record<string, unknown> | undefined;
  retryable: boolean;
};

export class RoleSdkError extends Error implements RoleSdkErrorShape {
  code: string;
  status: number | undefined;
  requestId: string | undefined;
  details: Record<string, unknown> | undefined;
  retryable: boolean;

  constructor(
    code: string,
    message: string,
    options?: {
      status?: number;
      requestId?: string;
      details?: Record<string, unknown>;
      retryable?: boolean;
      cause?: unknown;
    }
  ) {
    super(message, { cause: options?.cause });
    this.name = "RoleSdkError";
    this.code = code;
    this.status = options?.status;
    this.requestId = options?.requestId;
    this.details = options?.details;
    this.retryable = options?.retryable ?? false;
  }
}

export class RoleApiError extends RoleSdkError {
  constructor(
    code: string,
    message: string,
    options?: {
      status?: number;
      requestId?: string;
      details?: Record<string, unknown>;
      retryable?: boolean;
      cause?: unknown;
    }
  ) {
    super(code, message, options);
    this.name = "RoleApiError";
  }
}

export class RoleAuthError extends RoleSdkError {
  static Retryable = ErrorCodes.AUTH_TOKEN_EXPIRED;

  constructor(
    code: string,
    message: string,
    options?: {
      status?: number;
      requestId?: string;
      details?: Record<string, unknown>;
      retryable?: boolean;
      cause?: unknown;
    }
  ) {
    super(code, message, options);
    this.name = "RoleAuthError";
  }
}

export class RoleNetworkError extends RoleSdkError {
  static Retryable = ErrorCodes.NETWORK_TIMEOUT;

  constructor(
    code: string,
    message: string,
    options?: {
      status?: number;
      requestId?: string;
      details?: Record<string, unknown>;
      retryable?: boolean;
      cause?: unknown;
    }
  ) {
    super(code, message, options);
    this.name = "RoleNetworkError";
    this.retryable = true;
  }
}

export class RoleValidationError extends RoleSdkError {
  constructor(
    code: string,
    message: string,
    options?: {
      status?: number;
      requestId?: string;
      details?: Record<string, unknown>;
      retryable?: boolean;
      cause?: unknown;
    }
  ) {
    super(code, message, options);
    this.name = "RoleValidationError";
  }
}

export class RoleUnknownError extends RoleSdkError {
  constructor(
    code: string,
    message: string,
    options?: {
      status?: number;
      requestId?: string;
      details?: Record<string, unknown>;
      retryable?: boolean;
      cause?: unknown;
    }
  ) {
    super(code, message, options);
    this.name = "RoleUnknownError";
  }
}
