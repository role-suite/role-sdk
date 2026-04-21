import { normalizeApiFailure } from "../errors/error-normalizer.js";
import type { HttpClient } from "../transport/http-client.js";
import type { BackendProvider } from "./backend-provider.js";
import { defaultCapabilities } from "./capabilities.js";

type ServerpodRpcResult = {
  result?: unknown;
  error?: {
    code?: string;
    message?: string;
    details?: Record<string, unknown>;
  };
};

const unwrapRpcResult = (payload: unknown): unknown => {
  const result = payload as ServerpodRpcResult;

  if (result.error) {
    const params: {
      code?: string;
      message?: string;
      details?: Record<string, unknown>;
    } = {
      code: result.error.code ?? "ROLE_RPC_ERROR",
      message: result.error.message ?? "RPC call failed."
    };

    if (result.error.details !== undefined) {
      params.details = result.error.details;
    }

    throw normalizeApiFailure({
      ...params
    });
  }

  return result.result;
};

export const createServerpodRpcProvider = (
  httpClient: HttpClient,
  getAuthHeaders: () => Promise<Record<string, string>>
): BackendProvider => {
  const callRpc = async (params: {
    module: string;
    methodName: string;
    payload?: unknown;
    authenticated?: boolean;
  }): Promise<unknown> => {
    const authHeaders = params.authenticated === false ? {} : await getAuthHeaders();

    const response = await httpClient.requestJson({
      backend: "serverpod",
      module: params.module,
      methodName: params.methodName,
      method: "POST",
      path: `/rpc/${params.module}/${params.methodName}`,
      body: params.payload,
      headers: authHeaders,
      inputForHooks: params.payload
    });

    return unwrapRpcResult(response);
  };

  return {
    auth: {
      register: (input) =>
        callRpc({ module: "auth", methodName: "register", payload: input, authenticated: false }),
      login: (input) =>
        callRpc({ module: "auth", methodName: "login", payload: input, authenticated: false }),
      refresh: (input) =>
        callRpc({ module: "auth", methodName: "refresh", payload: input, authenticated: false }),
      logout: (input) => callRpc({ module: "auth", methodName: "logout", payload: input }),
      me: () => callRpc({ module: "auth", methodName: "me" })
    },
    workspaces: {
      list: () => callRpc({ module: "workspaces", methodName: "list" }),
      get: (input) => callRpc({ module: "workspaces", methodName: "get", payload: input }),
      create: (input) => callRpc({ module: "workspaces", methodName: "create", payload: input })
    },
    collections: {},
    environments: {},
    runs: {},
    importExport: {},
    capabilities: () => defaultCapabilities("serverpod")
  };
};
