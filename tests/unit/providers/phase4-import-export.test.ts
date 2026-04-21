import { describe, expect, it, vi } from "vitest";

import { createRoleSdk } from "../../../src/index.js";

const ISO_DATE = "2026-04-21T00:00:00.000Z";

const requestUrl = (input: Parameters<typeof fetch>[0]): string => {
  if (typeof input === "string") {
    return input;
  }

  if (input instanceof URL) {
    return input.toString();
  }

  return input.url;
};

const nodeEnvelope = (data: unknown): Response => {
  return new Response(JSON.stringify({ success: true, data }), {
    status: 200,
    headers: { "content-type": "application/json" }
  });
};

const serverpodResult = (result: unknown): Response => {
  return new Response(JSON.stringify({ result }), {
    status: 200,
    headers: { "content-type": "application/json" }
  });
};

describe("phase4 import-export module", () => {
  it("maps import-export job from node provider", async () => {
    const nodeFetch = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/api/workspaces/ws-1/import-export/jobs/job-1")) {
        return Promise.resolve(
          nodeEnvelope({
            id: "job-1",
            workspace_id: "ws-1",
            type: "export",
            status: "completed",
            summary: "Export completed successfully",
            created_at: ISO_DATE
          })
        );
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const sdk = createRoleSdk({
      backend: "node",
      baseUrl: "https://api.example.com",
      fetch: nodeFetch
    });

    const result = await sdk.importExport.getJob({ workspaceId: "ws-1", jobId: "job-1" });

    expect(result.id).toBe("job-1");
    expect(result.type).toBe("export");
    expect(result.status).toBe("completed");
    expect(result.summary).toBe("Export completed successfully");
  });

  it("maps import-export job from serverpod provider", async () => {
    const serverpodFetch = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/rpc/importExport/getJob")) {
        return Promise.resolve(
          serverpodResult({
            jobId: "job-1",
            workspaceId: "ws-1",
            type: "import",
            status: "processing",
            summary: "Import in progress"
          })
        );
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const sdk = createRoleSdk({
      backend: "serverpod",
      baseUrl: "https://api.example.com",
      fetch: serverpodFetch
    });

    const result = await sdk.importExport.getJob({ workspaceId: "ws-1", jobId: "job-1" });

    expect(result.id).toBe("job-1");
    expect(result.type).toBe("import");
    expect(result.status).toBe("processing");
  });

  it("lists import-export jobs from node provider", async () => {
    const nodeFetch = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/api/workspaces/ws-1/import-export/jobs")) {
        return Promise.resolve(
          nodeEnvelope({
            items: [
              { id: "job-1", workspace_id: "ws-1", type: "export", status: "completed" },
              { id: "job-2", workspace_id: "ws-1", type: "import", status: "pending" }
            ]
          })
        );
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const sdk = createRoleSdk({
      backend: "node",
      baseUrl: "https://api.example.com",
      fetch: nodeFetch
    });

    const result = await sdk.importExport.listJobs({ workspaceId: "ws-1" });

    expect(result).toHaveLength(2);
    expect(result[0]!.type).toBe("export");
    expect(result[1]!.type).toBe("import");
  });

  it("creates export job on node provider", async () => {
    const nodeFetch = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/api/workspaces/ws-1/import-export/export")) {
        return Promise.resolve(
          nodeEnvelope({
            id: "job-3",
            workspace_id: "ws-1",
            type: "export",
            status: "pending"
          })
        );
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const sdk = createRoleSdk({
      backend: "node",
      baseUrl: "https://api.example.com",
      fetch: nodeFetch
    });

    const result = await sdk.importExport.createExport({
      workspaceId: "ws-1",
      collectionIds: ["col-1", "col-2"],
      includeEnvironments: true
    });

    expect(result.id).toBe("job-3");
    expect(result.type).toBe("export");
    expect(nodeFetch).toHaveBeenCalledWith(
      "https://api.example.com/api/workspaces/ws-1/import-export/export",
      expect.objectContaining({
        method: "POST",
        body: JSON.stringify({
          collectionIds: ["col-1", "col-2"],
          includeEnvironments: true
        })
      })
    );
  });

  it("creates import job on serverpod provider", async () => {
    const serverpodFetch = vi.fn<typeof fetch>((input) => {
      const url = requestUrl(input);

      if (url.endsWith("/rpc/importExport/createImport")) {
        return Promise.resolve(
          serverpodResult({
            jobId: "job-4",
            workspaceId: "ws-1",
            type: "import",
            status: "pending"
          })
        );
      }

      return Promise.resolve(new Response("not found", { status: 404 }));
    });

    const sdk = createRoleSdk({
      backend: "serverpod",
      baseUrl: "https://api.example.com",
      fetch: serverpodFetch
    });

    const result = await sdk.importExport.createImport({
      workspaceId: "ws-1",
      sourceUrl: "https://example.com/export.zip"
    });

    expect(result.id).toBe("job-4");
    expect(result.type).toBe("import");
    expect(serverpodFetch).toHaveBeenCalledWith(
      "https://api.example.com/rpc/importExport/createImport",
      expect.objectContaining({
        method: "POST",
        body: JSON.stringify({
          workspaceId: "ws-1",
          sourceUrl: "https://example.com/export.zip"
        })
      })
    );
  });
});
