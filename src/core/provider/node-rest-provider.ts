import { normalizeApiFailure } from "../errors/error-normalizer.js";
import { RoleApiError } from "../errors/sdk-error.js";
import {
  mapNodeAuthSession,
  mapNodeCurrentUser,
  mapNodeLogout,
  mapNodeWorkspaceList,
  mapNodeWorkspaceSummary
} from "../mappers/node/index.js";
import type { HttpClient } from "../transport/http-client.js";
import type { BackendProvider } from "./backend-provider.js";
import { defaultCapabilities } from "./capabilities.js";

type NodeEnvelope = {
  success: boolean;
  data?: unknown;
  message?: string;
  code?: string;
};

const unwrapEnvelope = (payload: unknown): unknown => {
  const envelope = payload as NodeEnvelope;

  if (envelope && typeof envelope === "object" && "success" in envelope) {
    if (envelope.success) {
      return envelope.data;
    }

    throw normalizeApiFailure({
      code: envelope.code ?? "ROLE_API_ERROR",
      message: envelope.message ?? "Backend returned an unsuccessful envelope."
    });
  }

  throw new RoleApiError("ROLE_NODE_ENVELOPE_INVALID", "Invalid node response envelope.", {
    details: { payloadType: typeof payload }
  });
};

export const createNodeRestProvider = (
  httpClient: HttpClient,
  getAuthHeaders: () => Promise<Record<string, string>>
): BackendProvider => {
  const request = async (params: {
    module: string;
    methodName: string;
    method: string;
    path: string;
    body?: unknown;
    authenticated?: boolean;
  }): Promise<unknown> => {
    const authHeaders = params.authenticated === false ? {} : await getAuthHeaders();

    const response = await httpClient.requestJson({
      backend: "node",
      module: params.module,
      methodName: params.methodName,
      method: params.method,
      path: params.path,
      body: params.body,
      headers: authHeaders,
      inputForHooks: params.body
    });

    return unwrapEnvelope(response);
  };

  return {
    auth: {
      register: (input) => {
        return request({
          module: "auth",
          methodName: "register",
          method: "POST",
          path: "/api/auth/register",
          body: input,
          authenticated: false
        }).then((result) => mapNodeAuthSession(result));
      },
      login: (input) => {
        return request({
          module: "auth",
          methodName: "login",
          method: "POST",
          path: "/api/auth/login",
          body: input,
          authenticated: false
        }).then((result) => mapNodeAuthSession(result));
      },
      refresh: (input) => {
        return request({
          module: "auth",
          methodName: "refresh",
          method: "POST",
          path: "/api/auth/refresh",
          body: input,
          authenticated: false
        }).then((result) => mapNodeAuthSession(result));
      },
      logout: (input) => {
        return request({
          module: "auth",
          methodName: "logout",
          method: "POST",
          path: "/api/auth/logout",
          body: input
        }).then((result) => mapNodeLogout(result));
      },
      me: () => {
        return request({
          module: "auth",
          methodName: "me",
          method: "GET",
          path: "/api/auth/me"
        }).then((result) => mapNodeCurrentUser(result));
      }
    },
    workspaces: {
      list: () => {
        return request({
          module: "workspaces",
          methodName: "list",
          method: "GET",
          path: "/api/workspaces"
        }).then((result) => mapNodeWorkspaceList(result));
      },
      get: (input) => {
        return request({
          module: "workspaces",
          methodName: "get",
          method: "GET",
          path: `/api/workspaces/${String(input.workspaceId)}`
        }).then((result) => mapNodeWorkspaceSummary(result));
      },
      create: (input) => {
        return request({
          module: "workspaces",
          methodName: "create",
          method: "POST",
          path: "/api/workspaces",
          body: input
        }).then((result) => mapNodeWorkspaceSummary(result));
      }
    },
    collections: {},
    environments: {},
    runs: {},
    importExport: {},
    capabilities: () => defaultCapabilities("node")
  };
};
