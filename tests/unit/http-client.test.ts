import { describe, expect, it, vi } from "vitest";

import { RoleNetworkError } from "../../src/core/errors/sdk-error.js";
import { HttpClient } from "../../src/core/transport/http-client.js";

describe("HttpClient retry policy", () => {
  it("retries idempotent GET requests on network failures", async () => {
    let calls = 0;
    const fetchMock = vi.fn<typeof fetch>(() => {
      calls += 1;

      if (calls < 3) {
        return Promise.reject(new TypeError("network down"));
      }

      return Promise.resolve(
        new Response(JSON.stringify({ ok: true }), {
          status: 200,
          headers: {
            "content-type": "application/json"
          }
        })
      );
    });

    const client = new HttpClient({
      baseUrl: "https://api.example.com",
      fetchImplementation: fetchMock,
      timeoutMs: 2000,
      retry: {
        enabled: true,
        maxAttempts: 3,
        baseDelayMs: 1,
        maxDelayMs: 2,
        jitter: false
      }
    });

    const result = await client.requestJson({
      backend: "node",
      module: "workspaces",
      methodName: "list",
      method: "GET",
      path: "/api/workspaces"
    });

    expect(result).toEqual({ ok: true });
    expect(calls).toBe(3);
  });

  it("does not retry non-idempotent POST by default", async () => {
    let calls = 0;
    const fetchMock = vi.fn<typeof fetch>(() => {
      calls += 1;
      return Promise.reject(new TypeError("network down"));
    });

    const client = new HttpClient({
      baseUrl: "https://api.example.com",
      fetchImplementation: fetchMock,
      timeoutMs: 2000,
      retry: {
        enabled: true,
        maxAttempts: 3,
        baseDelayMs: 1,
        maxDelayMs: 2,
        jitter: false
      }
    });

    await expect(
      client.requestJson({
        backend: "node",
        module: "workspaces",
        methodName: "create",
        method: "POST",
        path: "/api/workspaces",
        body: { name: "new" }
      })
    ).rejects.toBeInstanceOf(RoleNetworkError);

    expect(calls).toBe(1);
  });
});
