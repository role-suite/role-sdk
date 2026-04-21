import { normalizeApiFailure } from "../errors/error-normalizer.js";
import {
  mapServerpodAuthSession,
  mapServerpodCollectionEndpoint,
  mapServerpodCollectionEndpoints,
  mapServerpodCollectionFolder,
  mapServerpodCollectionFolders,
  mapServerpodCollectionList,
  mapServerpodCollectionSummary,
  mapServerpodCurrentUser,
  mapServerpodDeleted,
  mapServerpodEnvironmentList,
  mapServerpodEnvironmentSummary,
  mapServerpodEnvironmentVariable,
  mapServerpodEnvironmentVariables,
  mapServerpodEndpointExample,
  mapServerpodEndpointExamples,
  mapServerpodImportExportJob,
  mapServerpodImportExportJobs,
  mapServerpodLeave,
  mapServerpodLogout,
  mapServerpodRunExecutionResult,
  mapServerpodWorkspaceInvitation,
  mapServerpodWorkspaceList,
  mapServerpodWorkspaceMember,
  mapServerpodWorkspaceMembers,
  mapServerpodWorkspaceSummary,
  mapServerpodWorkspaceUpdates
} from "../mappers/serverpod/index.js";
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

    const requestParams: {
      backend: "serverpod";
      module: string;
      methodName: string;
      method: "POST";
      path: string;
      body?: unknown;
      headers: Record<string, string>;
      inputForHooks?: unknown;
    } = {
      backend: "serverpod",
      module: params.module,
      methodName: params.methodName,
      method: "POST",
      path: `/rpc/${params.module}/${params.methodName}`,
      headers: authHeaders
    };

    if (params.payload !== undefined) {
      requestParams.body = params.payload;
      requestParams.inputForHooks = params.payload;
    }

    const response = await httpClient.requestJson(requestParams);

    return unwrapRpcResult(response);
  };

  return {
    auth: {
      register: (input) =>
        callRpc({
          module: "auth",
          methodName: "register",
          payload: input,
          authenticated: false
        }).then((result) => mapServerpodAuthSession(result)),
      login: (input) =>
        callRpc({ module: "auth", methodName: "login", payload: input, authenticated: false }).then(
          (result) => mapServerpodAuthSession(result)
        ),
      refresh: (input) =>
        callRpc({
          module: "auth",
          methodName: "refresh",
          payload: input,
          authenticated: false
        }).then((result) => mapServerpodAuthSession(result)),
      logout: (input) =>
        callRpc({ module: "auth", methodName: "logout", payload: input }).then((result) =>
          mapServerpodLogout(result)
        ),
      me: () =>
        callRpc({ module: "auth", methodName: "me" }).then((result) =>
          mapServerpodCurrentUser(result)
        )
    },
    workspaces: {
      list: () =>
        callRpc({ module: "workspaces", methodName: "list" }).then((result) =>
          mapServerpodWorkspaceList(result)
        ),
      get: (input) =>
        callRpc({ module: "workspaces", methodName: "get", payload: input }).then((result) =>
          mapServerpodWorkspaceSummary(result)
        ),
      create: (input) =>
        callRpc({ module: "workspaces", methodName: "create", payload: input }).then((result) =>
          mapServerpodWorkspaceSummary(result)
        ),
      listMembers: (input) =>
        callRpc({ module: "workspaces", methodName: "listMembers", payload: input }).then(
          (result) => mapServerpodWorkspaceMembers(result)
        ),
      addMember: (input) =>
        callRpc({ module: "workspaces", methodName: "addMember", payload: input }).then((result) =>
          mapServerpodWorkspaceMember(result)
        ),
      updateMemberRole: (input) =>
        callRpc({ module: "workspaces", methodName: "updateMemberRole", payload: input }).then(
          (result) => mapServerpodWorkspaceMember(result)
        ),
      removeMember: (input) =>
        callRpc({ module: "workspaces", methodName: "removeMember", payload: input }).then(() =>
          mapServerpodDeleted()
        ),
      createInvitation: (input) =>
        callRpc({ module: "workspaces", methodName: "createInvitation", payload: input }).then(
          (result) => mapServerpodWorkspaceInvitation(result)
        ),
      joinWithInvitation: (input) =>
        callRpc({ module: "workspaces", methodName: "joinWithInvitation", payload: input }).then(
          (result) => mapServerpodWorkspaceSummary(result)
        ),
      leave: (input) =>
        callRpc({ module: "workspaces", methodName: "leave", payload: input }).then(() =>
          mapServerpodLeave()
        ),
      convertToTeam: (input) =>
        callRpc({ module: "workspaces", methodName: "convertToTeam", payload: input }).then(
          (result) => mapServerpodWorkspaceSummary(result)
        ),
      listUpdates: (input) =>
        callRpc({ module: "workspaces", methodName: "listUpdates", payload: input }).then(
          (result) => mapServerpodWorkspaceUpdates(result)
        )
    },
    collections: {
      list: (input) =>
        callRpc({ module: "collections", methodName: "list", payload: input }).then((result) =>
          mapServerpodCollectionList(result)
        ),
      get: (input) =>
        callRpc({ module: "collections", methodName: "get", payload: input }).then((result) =>
          mapServerpodCollectionSummary(result)
        ),
      create: (input) =>
        callRpc({ module: "collections", methodName: "create", payload: input }).then((result) =>
          mapServerpodCollectionSummary(result)
        ),
      update: (input) =>
        callRpc({ module: "collections", methodName: "update", payload: input }).then((result) =>
          mapServerpodCollectionSummary(result)
        ),
      remove: (input) =>
        callRpc({ module: "collections", methodName: "remove", payload: input }).then(() =>
          mapServerpodDeleted()
        ),
      listFolders: (input) =>
        callRpc({ module: "collections", methodName: "listFolders", payload: input }).then(
          (result) => mapServerpodCollectionFolders(result)
        ),
      createFolder: (input) =>
        callRpc({ module: "collections", methodName: "createFolder", payload: input }).then(
          (result) => mapServerpodCollectionFolder(result)
        ),
      updateFolder: (input) =>
        callRpc({ module: "collections", methodName: "updateFolder", payload: input }).then(
          (result) => mapServerpodCollectionFolder(result)
        ),
      removeFolder: (input) =>
        callRpc({ module: "collections", methodName: "removeFolder", payload: input }).then(() =>
          mapServerpodDeleted()
        ),
      listEndpoints: (input) =>
        callRpc({ module: "collections", methodName: "listEndpoints", payload: input }).then(
          (result) => mapServerpodCollectionEndpoints(result)
        ),
      getEndpoint: (input) =>
        callRpc({ module: "collections", methodName: "getEndpoint", payload: input }).then(
          (result) => mapServerpodCollectionEndpoint(result)
        ),
      createEndpoint: (input) =>
        callRpc({ module: "collections", methodName: "createEndpoint", payload: input }).then(
          (result) => mapServerpodCollectionEndpoint(result)
        ),
      updateEndpoint: (input) =>
        callRpc({ module: "collections", methodName: "updateEndpoint", payload: input }).then(
          (result) => mapServerpodCollectionEndpoint(result)
        ),
      removeEndpoint: (input) =>
        callRpc({ module: "collections", methodName: "removeEndpoint", payload: input }).then(() =>
          mapServerpodDeleted()
        ),
      listEndpointExamples: (input) =>
        callRpc({ module: "collections", methodName: "listEndpointExamples", payload: input }).then(
          (result) => mapServerpodEndpointExamples(result)
        ),
      createEndpointExample: (input) =>
        callRpc({
          module: "collections",
          methodName: "createEndpointExample",
          payload: input
        }).then((result) => mapServerpodEndpointExample(result)),
      updateEndpointExample: (input) =>
        callRpc({
          module: "collections",
          methodName: "updateEndpointExample",
          payload: input
        }).then((result) => mapServerpodEndpointExample(result)),
      removeEndpointExample: (input) =>
        callRpc({
          module: "collections",
          methodName: "removeEndpointExample",
          payload: input
        }).then(() => mapServerpodDeleted())
    },
    environments: {
      list: (input) =>
        callRpc({ module: "environments", methodName: "list", payload: input }).then((result) =>
          mapServerpodEnvironmentList(result)
        ),
      get: (input) =>
        callRpc({ module: "environments", methodName: "get", payload: input }).then((result) =>
          mapServerpodEnvironmentSummary(result)
        ),
      create: (input) =>
        callRpc({ module: "environments", methodName: "create", payload: input }).then((result) =>
          mapServerpodEnvironmentSummary(result)
        ),
      update: (input) =>
        callRpc({ module: "environments", methodName: "update", payload: input }).then((result) =>
          mapServerpodEnvironmentSummary(result)
        ),
      remove: (input) =>
        callRpc({ module: "environments", methodName: "remove", payload: input }).then(() =>
          mapServerpodDeleted()
        ),
      listVariables: (input) =>
        callRpc({ module: "environments", methodName: "listVariables", payload: input }).then(
          (result) => mapServerpodEnvironmentVariables(result)
        ),
      getVariable: (input) =>
        callRpc({ module: "environments", methodName: "getVariable", payload: input }).then(
          (result) => mapServerpodEnvironmentVariable(result)
        ),
      createVariable: (input) =>
        callRpc({ module: "environments", methodName: "createVariable", payload: input }).then(
          (result) => mapServerpodEnvironmentVariable(result)
        ),
      updateVariable: (input) =>
        callRpc({ module: "environments", methodName: "updateVariable", payload: input }).then(
          (result) => mapServerpodEnvironmentVariable(result)
        ),
      removeVariable: (input) =>
        callRpc({ module: "environments", methodName: "removeVariable", payload: input }).then(() =>
          mapServerpodDeleted()
        )
    },
    runs: {
      create: (input) =>
        callRpc({ module: "runs", methodName: "create", payload: input }).then((result) =>
          mapServerpodRunExecutionResult(result)
        ),
      get: (input) =>
        callRpc({ module: "runs", methodName: "get", payload: input }).then((result) =>
          mapServerpodRunExecutionResult(result)
        ),
      cancel: (input) =>
        callRpc({ module: "runs", methodName: "cancel", payload: input }).then((result) =>
          mapServerpodRunExecutionResult(result)
        )
    },
    importExport: {
      listJobs: (input) =>
        callRpc({ module: "importExport", methodName: "listJobs", payload: input }).then((result) =>
          mapServerpodImportExportJobs(result)
        ),
      getJob: (input) =>
        callRpc({ module: "importExport", methodName: "getJob", payload: input }).then((result) =>
          mapServerpodImportExportJob(result)
        ),
      createExport: (input) =>
        callRpc({ module: "importExport", methodName: "createExport", payload: input }).then(
          (result) => mapServerpodImportExportJob(result)
        ),
      createImport: (input) =>
        callRpc({ module: "importExport", methodName: "createImport", payload: input }).then(
          (result) => mapServerpodImportExportJob(result)
        )
    },
    capabilities: () => defaultCapabilities("serverpod")
  };
};
