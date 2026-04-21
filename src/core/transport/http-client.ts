import type { ErrorHookContext, RequestHookContext, ResponseHookContext } from "../../config.js";
import { normalizeApiFailure, normalizeUnknownError } from "../errors/error-normalizer.js";
import { computeBackoffDelay, wait } from "../retry/backoff.js";
import { shouldRetry } from "../retry/retry-policy.js";
import { buildUrl } from "./request-builder.js";

export type JsonRequestParams = {
  module: string;
  methodName: string;
  method: string;
  path: string;
  backend: "node" | "serverpod";
  headers?: Record<string, string>;
  body?: unknown;
  query?: Record<string, string | number | boolean | undefined>;
  retryable?: boolean;
  requestIdHeader?: string;
  inputForHooks?: unknown;
};

export type TransportConfig = {
  baseUrl: string;
  fetchImplementation: typeof globalThis.fetch;
  timeoutMs: number;
  retry: {
    enabled: boolean;
    maxAttempts: number;
    baseDelayMs: number;
    maxDelayMs: number;
    jitter: boolean;
  };
  hooks?: {
    onRequest?: (ctx: RequestHookContext) => void | Promise<void>;
    onResponse?: (ctx: ResponseHookContext) => void | Promise<void>;
    onError?: (ctx: ErrorHookContext) => void | Promise<void>;
  };
};

const withTimeout = (timeoutMs: number, upstreamSignal?: AbortSignal): AbortSignal => {
  const controller = new AbortController();
  const timer = setTimeout(() => {
    controller.abort();
  }, timeoutMs);

  const cancel = () => {
    clearTimeout(timer);
    upstreamSignal?.removeEventListener("abort", cancel);
  };

  controller.signal.addEventListener("abort", cancel, { once: true });
  upstreamSignal?.addEventListener("abort", () => controller.abort(), { once: true });

  return controller.signal;
};

export class HttpClient {
  private readonly config: TransportConfig;

  constructor(config: TransportConfig) {
    this.config = config;
  }

  async requestJson(params: JsonRequestParams): Promise<unknown> {
    const url =
      params.query === undefined
        ? buildUrl({
            baseUrl: this.config.baseUrl,
            path: params.path
          })
        : buildUrl({
            baseUrl: this.config.baseUrl,
            path: params.path,
            query: params.query
          });

    const requestContext: RequestHookContext = {
      backend: params.backend,
      module: params.module,
      method: params.methodName,
      requestId: undefined,
      input: params.inputForHooks ?? params.body
    };

    await this.config.hooks?.onRequest?.(requestContext);

    let attempt = 1;

    while (true) {
      const start = Date.now();

      try {
        const requestInit: RequestInit = {
          method: params.method,
          headers: {
            "content-type": "application/json",
            ...params.headers
          },
          signal: withTimeout(this.config.timeoutMs)
        };

        if (params.body !== undefined) {
          requestInit.body = JSON.stringify(params.body);
        }

        const response = await this.config.fetchImplementation(url, requestInit);

        const requestId =
          response.headers.get(params.requestIdHeader ?? "x-request-id") ?? undefined;

        if (!response.ok) {
          const payload = await this.parseErrorPayload(response);
          const apiErrorPayload: {
            status: number;
            code?: string;
            message?: string;
            requestId?: string;
            details?: Record<string, unknown>;
          } = {
            status: response.status,
            message: payload.message
          };

          if (requestId !== undefined) {
            apiErrorPayload.requestId = requestId;
          }
          if (payload.code !== undefined) {
            apiErrorPayload.code = payload.code;
          }
          if (payload.details !== undefined) {
            apiErrorPayload.details = payload.details;
          }

          throw normalizeApiFailure(apiErrorPayload);
        }

        const output: unknown = await response.json();

        await this.config.hooks?.onResponse?.({
          backend: params.backend,
          module: params.module,
          method: params.methodName,
          requestId,
          output,
          durationMs: Date.now() - start
        });

        return output;
      } catch (error) {
        const normalized = normalizeUnknownError(error);
        await this.config.hooks?.onError?.({
          backend: params.backend,
          module: params.module,
          method: params.methodName,
          requestId: normalized.requestId,
          error: normalized
        });

        const canRetry =
          this.config.retry.enabled &&
          shouldRetry({
            attempt,
            maxAttempts: this.config.retry.maxAttempts,
            method: params.method,
            error: normalized,
            forceRetry: params.retryable ?? false
          });

        if (!canRetry) {
          throw normalized;
        }

        const delay = computeBackoffDelay({
          attempt,
          baseDelayMs: this.config.retry.baseDelayMs,
          maxDelayMs: this.config.retry.maxDelayMs,
          jitter: this.config.retry.jitter
        });

        attempt += 1;
        await wait(delay);
      }
    }
  }

  private async parseErrorPayload(response: Response): Promise<{
    code: string | undefined;
    message: string;
    details: Record<string, unknown> | undefined;
  }> {
    try {
      const payload = (await response.json()) as Record<string, unknown>;
      const code = typeof payload.code === "string" ? payload.code : undefined;
      const message = typeof payload.message === "string" ? payload.message : response.statusText;
      const details =
        payload.details && typeof payload.details === "object"
          ? (payload.details as Record<string, unknown>)
          : undefined;

      return { code, message, details };
    } catch {
      return {
        code: undefined,
        message: response.statusText,
        details: undefined
      };
    }
  }
}
