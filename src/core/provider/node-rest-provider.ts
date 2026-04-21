import { normalizeApiFailure } from "../errors/error-normalizer.js";
import { RoleApiError } from "../errors/sdk-error.js";
import {
  mapNodeAuthSession,
  mapNodeCollectionEndpoint,
  mapNodeCollectionEndpoints,
  mapNodeCollectionFolder,
  mapNodeCollectionFolders,
  mapNodeCollectionList,
  mapNodeCollectionSummary,
  mapNodeCurrentUser,
  mapNodeDeleted,
  mapNodeEnvironmentList,
  mapNodeEnvironmentSummary,
  mapNodeEnvironmentVariable,
  mapNodeEnvironmentVariables,
  mapNodeEndpointExample,
  mapNodeEndpointExamples,
  mapNodeImportExportJob,
  mapNodeImportExportJobs,
  mapNodeLeave,
  mapNodeLogout,
  mapNodeRunExecutionResult,
  mapNodeWorkspaceInvitation,
  mapNodeWorkspaceList,
  mapNodeWorkspaceMember,
  mapNodeWorkspaceMembers,
  mapNodeWorkspaceSummary,
  mapNodeWorkspaceUpdates
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
    query?: Record<string, string | number | boolean | undefined>;
    authenticated?: boolean;
  }): Promise<unknown> => {
    const authHeaders = params.authenticated === false ? {} : await getAuthHeaders();

    const requestParams: {
      backend: "node";
      module: string;
      methodName: string;
      method: string;
      path: string;
      body?: unknown;
      query?: Record<string, string | number | boolean | undefined>;
      headers: Record<string, string>;
      inputForHooks?: unknown;
    } = {
      backend: "node",
      module: params.module,
      methodName: params.methodName,
      method: params.method,
      path: params.path,
      headers: authHeaders
    };

    if (params.body !== undefined) {
      requestParams.body = params.body;
      requestParams.inputForHooks = params.body;
    }

    if (params.query !== undefined) {
      requestParams.query = params.query;
    }

    const response = await httpClient.requestJson(requestParams);

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
      },
      listMembers: (input) => {
        return request({
          module: "workspaces",
          methodName: "listMembers",
          method: "GET",
          path: `/api/workspaces/${String(input.workspaceId)}/members`
        }).then((result) => mapNodeWorkspaceMembers(result));
      },
      addMember: (input) => {
        return request({
          module: "workspaces",
          methodName: "addMember",
          method: "POST",
          path: `/api/workspaces/${String(input.workspaceId)}/members`,
          body: {
            email: input.email,
            role: input.role
          }
        }).then((result) => mapNodeWorkspaceMember(result));
      },
      updateMemberRole: (input) => {
        return request({
          module: "workspaces",
          methodName: "updateMemberRole",
          method: "PATCH",
          path: `/api/workspaces/${String(input.workspaceId)}/members/${String(input.memberId)}`,
          body: {
            role: input.role
          }
        }).then((result) => mapNodeWorkspaceMember(result));
      },
      removeMember: (input) => {
        return request({
          module: "workspaces",
          methodName: "removeMember",
          method: "DELETE",
          path: `/api/workspaces/${String(input.workspaceId)}/members/${String(input.memberId)}`
        }).then(() => mapNodeDeleted());
      },
      createInvitation: (input) => {
        return request({
          module: "workspaces",
          methodName: "createInvitation",
          method: "POST",
          path: `/api/workspaces/${String(input.workspaceId)}/invitations`,
          body: {
            email: input.email,
            role: input.role,
            expiresAt: input.expiresAt
          }
        }).then((result) => mapNodeWorkspaceInvitation(result));
      },
      joinWithInvitation: (input) => {
        return request({
          module: "workspaces",
          methodName: "joinWithInvitation",
          method: "POST",
          path: "/api/workspaces/join",
          body: input
        }).then((result) => mapNodeWorkspaceSummary(result));
      },
      leave: (input) => {
        return request({
          module: "workspaces",
          methodName: "leave",
          method: "POST",
          path: `/api/workspaces/${String(input.workspaceId)}/leave`
        }).then(() => mapNodeLeave());
      },
      convertToTeam: (input) => {
        return request({
          module: "workspaces",
          methodName: "convertToTeam",
          method: "POST",
          path: `/api/workspaces/${String(input.workspaceId)}/convert-to-team`,
          body: {
            teamName: input.teamName
          }
        }).then((result) => mapNodeWorkspaceSummary(result));
      },
      listUpdates: (input) => {
        return request({
          module: "workspaces",
          methodName: "listUpdates",
          method: "GET",
          path: `/api/workspaces/${String(input.workspaceId)}/updates`,
          query: {
            cursor: input.cursor,
            limit: input.limit
          }
        }).then((result) => mapNodeWorkspaceUpdates(result));
      }
    },
    collections: {
      list: (input) => {
        return request({
          module: "collections",
          methodName: "list",
          method: "GET",
          path: `/api/workspaces/${String(input.workspaceId)}/collections`
        }).then((result) => mapNodeCollectionList(result));
      },
      get: (input) => {
        return request({
          module: "collections",
          methodName: "get",
          method: "GET",
          path: `/api/workspaces/${String(input.workspaceId)}/collections/${String(input.collectionId)}`
        }).then((result) => mapNodeCollectionSummary(result));
      },
      create: (input) => {
        return request({
          module: "collections",
          methodName: "create",
          method: "POST",
          path: `/api/workspaces/${String(input.workspaceId)}/collections`,
          body: {
            name: input.name,
            description: input.description
          }
        }).then((result) => mapNodeCollectionSummary(result));
      },
      update: (input) => {
        return request({
          module: "collections",
          methodName: "update",
          method: "PATCH",
          path: `/api/workspaces/${String(input.workspaceId)}/collections/${String(input.collectionId)}`,
          body: {
            name: input.name,
            description: input.description
          }
        }).then((result) => mapNodeCollectionSummary(result));
      },
      remove: (input) => {
        return request({
          module: "collections",
          methodName: "remove",
          method: "DELETE",
          path: `/api/workspaces/${String(input.workspaceId)}/collections/${String(input.collectionId)}`
        }).then(() => mapNodeDeleted());
      },
      listFolders: (input) => {
        return request({
          module: "collections",
          methodName: "listFolders",
          method: "GET",
          path: `/api/workspaces/${String(input.workspaceId)}/collections/${String(input.collectionId)}/folders`
        }).then((result) => mapNodeCollectionFolders(result));
      },
      createFolder: (input) => {
        return request({
          module: "collections",
          methodName: "createFolder",
          method: "POST",
          path: `/api/workspaces/${String(input.workspaceId)}/collections/${String(input.collectionId)}/folders`,
          body: {
            name: input.name,
            parentFolderId: input.parentFolderId,
            position: input.position
          }
        }).then((result) => mapNodeCollectionFolder(result));
      },
      updateFolder: (input) => {
        return request({
          module: "collections",
          methodName: "updateFolder",
          method: "PATCH",
          path: `/api/workspaces/${String(input.workspaceId)}/collections/${String(input.collectionId)}/folders/${String(input.folderId)}`,
          body: {
            name: input.name,
            parentFolderId: input.parentFolderId,
            position: input.position
          }
        }).then((result) => mapNodeCollectionFolder(result));
      },
      removeFolder: (input) => {
        return request({
          module: "collections",
          methodName: "removeFolder",
          method: "DELETE",
          path: `/api/workspaces/${String(input.workspaceId)}/collections/${String(input.collectionId)}/folders/${String(input.folderId)}`
        }).then(() => mapNodeDeleted());
      },
      listEndpoints: (input) => {
        return request({
          module: "collections",
          methodName: "listEndpoints",
          method: "GET",
          path: `/api/workspaces/${String(input.workspaceId)}/collections/${String(input.collectionId)}/endpoints`
        }).then((result) => mapNodeCollectionEndpoints(result));
      },
      getEndpoint: (input) => {
        return request({
          module: "collections",
          methodName: "getEndpoint",
          method: "GET",
          path: `/api/workspaces/${String(input.workspaceId)}/collections/${String(input.collectionId)}/endpoints/${String(input.endpointId)}`
        }).then((result) => mapNodeCollectionEndpoint(result));
      },
      createEndpoint: (input) => {
        return request({
          module: "collections",
          methodName: "createEndpoint",
          method: "POST",
          path: `/api/workspaces/${String(input.workspaceId)}/collections/${String(input.collectionId)}/endpoints`,
          body: {
            folderId: input.folderId,
            name: input.name,
            method: input.method,
            url: input.url,
            body: input.body,
            auth: input.auth
          }
        }).then((result) => mapNodeCollectionEndpoint(result));
      },
      updateEndpoint: (input) => {
        return request({
          module: "collections",
          methodName: "updateEndpoint",
          method: "PATCH",
          path: `/api/workspaces/${String(input.workspaceId)}/collections/${String(input.collectionId)}/endpoints/${String(input.endpointId)}`,
          body: {
            folderId: input.folderId,
            name: input.name,
            method: input.method,
            url: input.url,
            body: input.body,
            auth: input.auth
          }
        }).then((result) => mapNodeCollectionEndpoint(result));
      },
      removeEndpoint: (input) => {
        return request({
          module: "collections",
          methodName: "removeEndpoint",
          method: "DELETE",
          path: `/api/workspaces/${String(input.workspaceId)}/collections/${String(input.collectionId)}/endpoints/${String(input.endpointId)}`
        }).then(() => mapNodeDeleted());
      },
      listEndpointExamples: (input) => {
        return request({
          module: "collections",
          methodName: "listEndpointExamples",
          method: "GET",
          path: `/api/workspaces/${String(input.workspaceId)}/collections/${String(input.collectionId)}/endpoints/${String(input.endpointId)}/examples`
        }).then((result) => mapNodeEndpointExamples(result));
      },
      createEndpointExample: (input) => {
        return request({
          module: "collections",
          methodName: "createEndpointExample",
          method: "POST",
          path: `/api/workspaces/${String(input.workspaceId)}/collections/${String(input.collectionId)}/endpoints/${String(input.endpointId)}/examples`,
          body: {
            name: input.name,
            request: input.request,
            response: input.response
          }
        }).then((result) => mapNodeEndpointExample(result));
      },
      updateEndpointExample: (input) => {
        return request({
          module: "collections",
          methodName: "updateEndpointExample",
          method: "PATCH",
          path: `/api/workspaces/${String(input.workspaceId)}/collections/${String(input.collectionId)}/endpoints/${String(input.endpointId)}/examples/${String(input.exampleId)}`,
          body: {
            name: input.name,
            request: input.request,
            response: input.response
          }
        }).then((result) => mapNodeEndpointExample(result));
      },
      removeEndpointExample: (input) => {
        return request({
          module: "collections",
          methodName: "removeEndpointExample",
          method: "DELETE",
          path: `/api/workspaces/${String(input.workspaceId)}/collections/${String(input.collectionId)}/endpoints/${String(input.endpointId)}/examples/${String(input.exampleId)}`
        }).then(() => mapNodeDeleted());
      }
    },
    environments: {
      list: (input) => {
        return request({
          module: "environments",
          methodName: "list",
          method: "GET",
          path: `/api/workspaces/${String(input.workspaceId)}/environments`
        }).then((result) => mapNodeEnvironmentList(result));
      },
      get: (input) => {
        return request({
          module: "environments",
          methodName: "get",
          method: "GET",
          path: `/api/workspaces/${String(input.workspaceId)}/environments/${String(input.environmentId)}`
        }).then((result) => mapNodeEnvironmentSummary(result));
      },
      create: (input) => {
        return request({
          module: "environments",
          methodName: "create",
          method: "POST",
          path: `/api/workspaces/${String(input.workspaceId)}/environments`,
          body: {
            name: input.name,
            description: input.description
          }
        }).then((result) => mapNodeEnvironmentSummary(result));
      },
      update: (input) => {
        return request({
          module: "environments",
          methodName: "update",
          method: "PATCH",
          path: `/api/workspaces/${String(input.workspaceId)}/environments/${String(input.environmentId)}`,
          body: {
            name: input.name,
            description: input.description
          }
        }).then((result) => mapNodeEnvironmentSummary(result));
      },
      remove: (input) => {
        return request({
          module: "environments",
          methodName: "remove",
          method: "DELETE",
          path: `/api/workspaces/${String(input.workspaceId)}/environments/${String(input.environmentId)}`
        }).then(() => mapNodeDeleted());
      },
      listVariables: (input) => {
        return request({
          module: "environments",
          methodName: "listVariables",
          method: "GET",
          path: `/api/workspaces/${String(input.workspaceId)}/environments/${String(input.environmentId)}/variables`
        }).then((result) => mapNodeEnvironmentVariables(result));
      },
      getVariable: (input) => {
        return request({
          module: "environments",
          methodName: "getVariable",
          method: "GET",
          path: `/api/workspaces/${String(input.workspaceId)}/environments/${String(input.environmentId)}/variables/${String(input.variableId)}`
        }).then((result) => mapNodeEnvironmentVariable(result));
      },
      createVariable: (input) => {
        return request({
          module: "environments",
          methodName: "createVariable",
          method: "POST",
          path: `/api/workspaces/${String(input.workspaceId)}/environments/${String(input.environmentId)}/variables`,
          body: {
            key: input.key,
            value: input.value,
            enabled: input.enabled,
            isSecret: input.isSecret,
            position: input.position
          }
        }).then((result) => mapNodeEnvironmentVariable(result));
      },
      updateVariable: (input) => {
        return request({
          module: "environments",
          methodName: "updateVariable",
          method: "PATCH",
          path: `/api/workspaces/${String(input.workspaceId)}/environments/${String(input.environmentId)}/variables/${String(input.variableId)}`,
          body: {
            key: input.key,
            value: input.value,
            enabled: input.enabled,
            isSecret: input.isSecret,
            position: input.position
          }
        }).then((result) => mapNodeEnvironmentVariable(result));
      },
      removeVariable: (input) => {
        return request({
          module: "environments",
          methodName: "removeVariable",
          method: "DELETE",
          path: `/api/workspaces/${String(input.workspaceId)}/environments/${String(input.environmentId)}/variables/${String(input.variableId)}`
        }).then(() => mapNodeDeleted());
      }
    },
    runs: {
      create: (input) => {
        return request({
          module: "runs",
          methodName: "create",
          method: "POST",
          path: `/api/workspaces/${String(input.workspaceId)}/runs`,
          body: {
            source: input.source,
            environmentId: input.environmentId
          }
        }).then((result) => mapNodeRunExecutionResult(result));
      },
      get: (input) => {
        return request({
          module: "runs",
          methodName: "get",
          method: "GET",
          path: `/api/workspaces/${String(input.workspaceId)}/runs/${String(input.runId)}`
        }).then((result) => mapNodeRunExecutionResult(result));
      },
      cancel: (input) => {
        return request({
          module: "runs",
          methodName: "cancel",
          method: "POST",
          path: `/api/workspaces/${String(input.workspaceId)}/runs/${String(input.runId)}/cancel`
        }).then((result) => mapNodeRunExecutionResult(result));
      }
    },
    importExport: {
      listJobs: (input) => {
        return request({
          module: "importExport",
          methodName: "listJobs",
          method: "GET",
          path: `/api/workspaces/${String(input.workspaceId)}/import-export/jobs`
        }).then((result) => mapNodeImportExportJobs(result));
      },
      getJob: (input) => {
        return request({
          module: "importExport",
          methodName: "getJob",
          method: "GET",
          path: `/api/workspaces/${String(input.workspaceId)}/import-export/jobs/${String(input.jobId)}`
        }).then((result) => mapNodeImportExportJob(result));
      },
      createExport: (input) => {
        return request({
          module: "importExport",
          methodName: "createExport",
          method: "POST",
          path: `/api/workspaces/${String(input.workspaceId)}/import-export/export`,
          body: {
            collectionIds: input.collectionIds,
            includeEnvironments: input.includeEnvironments
          }
        }).then((result) => mapNodeImportExportJob(result));
      },
      createImport: (input) => {
        return request({
          module: "importExport",
          methodName: "createImport",
          method: "POST",
          path: `/api/workspaces/${String(input.workspaceId)}/import-export/import`,
          body: {
            sourceUrl: input.sourceUrl,
            payload: input.payload
          }
        }).then((result) => mapNodeImportExportJob(result));
      }
    },
    capabilities: () => defaultCapabilities("node")
  };
};
