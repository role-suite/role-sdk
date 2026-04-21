import { describe, expect, it, vi } from "vitest";

import { RoleApiError } from "../../src/core/errors/sdk-error.js";
import { HttpClient } from "../../src/core/transport/http-client.js";

describe("HttpClient hooks", () => {
  it("calls onRequest and onResponse with normalized metadata", async () => {
    const onRequest = vi.fn<(ctx: { module: string; method: string; input: unknown }) => void>();
    const onResponse = vi.fn<
      (ctx: { module: string; method: string; requestId: string | undefined; output: unknown }) => void
    >();

    const client = new HttpClient({
      baseUrl: "https://api.example.com",
      fetchImplementation: vi.fn<typeof fetch>(() => {
        return Promise.resolve(
          new Response(JSON.stringify({ ok: true }), {
            status: 200,
            headers: {
              "content-type": "application/json",
              "x-request-id": "req-hook-1"
            }
          })
        );
      }),
      timeoutMs: 2000,
      retry: {
        enabled: true,
        maxAttempts: 3,
        baseDelayMs: 1,
        maxDelayMs: 2,
        jitter: false
      },
      hooks: {
        onRequest,
        onResponse
      }
    });

    const output = await client.requestJson({
      backend: "node",
      module: "workspaces",
      methodName: "create",
      method: "POST",
      path: "/api/workspaces",
      body: { name: "workspace-a" },
      inputForHooks: { name: "workspace-a" }
    });

    expect(output).toEqual({ ok: true });
    expect(onRequest).toHaveBeenCalledTimes(1);
    expect(onResponse).toHaveBeenCalledTimes(1);

    expect(onRequest).toHaveBeenCalledWith(
      expect.objectContaining({
        backend: "node",
        module: "workspaces",
        method: "create",
        input: { name: "workspace-a" }
      })
    );

    expect(onResponse).toHaveBeenCalledWith(
      expect.objectContaining({
        backend: "node",
        module: "workspaces",
        method: "create",
        requestId: "req-hook-1",
        output: { ok: true }
      })
    );
  });

  it("calls onError for API failures", async () => {
    const onError = vi.fn<(ctx: { method: string; error: unknown }) => void>();

    const client = new HttpClient({
      baseUrl: "https://api.example.com",
      fetchImplementation: vi.fn<typeof fetch>(() => {
        return Promise.resolve(
          new Response(JSON.stringify({ code: "ROLE_API_ERROR", message: "boom" }), {
            status: 500,
            headers: {
              "content-type": "application/json",
              "x-request-id": "req-hook-2"
            }
          })
        );
      }),
      timeoutMs: 2000,
      retry: {
        enabled: false,
        maxAttempts: 1,
        baseDelayMs: 1,
        maxDelayMs: 2,
        jitter: false
      },
      hooks: {
        onError
      }
    });

    await expect(
      client.requestJson({
        backend: "node",
        module: "auth",
        methodName: "me",
        method: "GET",
        path: "/api/auth/me"
      })
    ).rejects.toBeInstanceOf(RoleApiError);

    expect(onError).toHaveBeenCalledTimes(1);
    expect(onError).toHaveBeenCalledWith(
      expect.objectContaining({
        backend: "node",
        module: "auth",
        method: "me",
        requestId: "req-hook-2"
      })
    );
  });
});
