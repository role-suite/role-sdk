export type RoleSdkErrorShape = Error & {
  code: string;
  status: number | undefined;
  requestId: string | undefined;
  details: Record<string, unknown> | undefined;
};

export class RoleSdkError extends Error implements RoleSdkErrorShape {
  code: string;
  status: number | undefined;
  requestId: string | undefined;
  details: Record<string, unknown> | undefined;

  constructor(
    code: string,
    message: string,
    options?: {
      status?: number;
      requestId?: string;
      details?: Record<string, unknown>;
      cause?: unknown;
    }
  ) {
    super(message, { cause: options?.cause });
    this.name = "RoleSdkError";
    this.code = code;
    this.status = options?.status;
    this.requestId = options?.requestId;
    this.details = options?.details;
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
      cause?: unknown;
    }
  ) {
    super(code, message, options);
    this.name = "RoleApiError";
  }
}

export class RoleAuthError extends RoleSdkError {
  constructor(
    code: string,
    message: string,
    options?: {
      status?: number;
      requestId?: string;
      details?: Record<string, unknown>;
      cause?: unknown;
    }
  ) {
    super(code, message, options);
    this.name = "RoleAuthError";
  }
}

export class RoleNetworkError extends RoleSdkError {
  constructor(
    code: string,
    message: string,
    options?: {
      status?: number;
      requestId?: string;
      details?: Record<string, unknown>;
      cause?: unknown;
    }
  ) {
    super(code, message, options);
    this.name = "RoleNetworkError";
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
      cause?: unknown;
    }
  ) {
    super(code, message, options);
    this.name = "RoleUnknownError";
  }
}
