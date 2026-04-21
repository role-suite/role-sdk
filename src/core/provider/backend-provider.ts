import type { BackendCapabilities } from "./capabilities.js";
import type {
  AuthSessionResult,
  CurrentUserResult,
  LoginInput,
  LogoutInput,
  LogoutResult,
  RefreshInput,
  RegisterInput
} from "../../modules/auth/types.js";
import type {
  AddWorkspaceMemberInput,
  ConvertWorkspaceToTeamInput,
  CreateWorkspaceInput,
  CreateWorkspaceInvitationInput,
  JoinWorkspaceInput,
  RemoveWorkspaceMemberInput,
  UpdateWorkspaceMemberRoleInput,
  WorkspaceInvitation,
  WorkspaceMember,
  WorkspaceSummary,
  WorkspaceUpdatesInput,
  WorkspaceUpdatesResult
} from "../../modules/workspaces/types.js";
import type {
  CollectionEndpoint,
  CollectionFolder,
  CollectionSummary,
  CreateCollectionEndpointInput,
  CreateCollectionFolderInput,
  CreateCollectionInput,
  CreateEndpointExampleInput,
  EndpointExample,
  UpdateCollectionEndpointInput,
  UpdateCollectionFolderInput,
  UpdateCollectionInput,
  UpdateEndpointExampleInput
} from "../../modules/collections/types.js";
import type { Id } from "../../config.js";

export type ProviderMethod<Input = unknown, Output = unknown> = (input: Input) => Promise<Output>;

export type AuthProvider = {
  register: ProviderMethod<RegisterInput, AuthSessionResult>;
  login: ProviderMethod<LoginInput, AuthSessionResult>;
  refresh: ProviderMethod<RefreshInput, AuthSessionResult>;
  logout: ProviderMethod<LogoutInput, LogoutResult>;
  me: ProviderMethod<unknown, CurrentUserResult>;
};

export type WorkspacesProvider = {
  list: ProviderMethod<void, WorkspaceSummary[]>;
  get: ProviderMethod<{ workspaceId: Id }, WorkspaceSummary>;
  create: ProviderMethod<CreateWorkspaceInput, WorkspaceSummary>;
  listMembers: ProviderMethod<{ workspaceId: Id }, WorkspaceMember[]>;
  addMember: ProviderMethod<AddWorkspaceMemberInput, WorkspaceMember>;
  updateMemberRole: ProviderMethod<UpdateWorkspaceMemberRoleInput, WorkspaceMember>;
  removeMember: ProviderMethod<RemoveWorkspaceMemberInput, { deleted: true }>;
  createInvitation: ProviderMethod<CreateWorkspaceInvitationInput, WorkspaceInvitation>;
  joinWithInvitation: ProviderMethod<JoinWorkspaceInput, WorkspaceSummary>;
  leave: ProviderMethod<{ workspaceId: Id }, { left: true }>;
  convertToTeam: ProviderMethod<ConvertWorkspaceToTeamInput, WorkspaceSummary>;
  listUpdates: ProviderMethod<WorkspaceUpdatesInput, WorkspaceUpdatesResult>;
};

export type CollectionsProvider = {
  list: ProviderMethod<{ workspaceId: Id }, CollectionSummary[]>;
  get: ProviderMethod<{ workspaceId: Id; collectionId: Id }, CollectionSummary>;
  create: ProviderMethod<CreateCollectionInput, CollectionSummary>;
  update: ProviderMethod<UpdateCollectionInput, CollectionSummary>;
  remove: ProviderMethod<{ workspaceId: Id; collectionId: Id }, { deleted: true }>;
  listFolders: ProviderMethod<{ workspaceId: Id; collectionId: Id }, CollectionFolder[]>;
  createFolder: ProviderMethod<CreateCollectionFolderInput, CollectionFolder>;
  updateFolder: ProviderMethod<UpdateCollectionFolderInput, CollectionFolder>;
  removeFolder: ProviderMethod<
    { workspaceId: Id; collectionId: Id; folderId: Id },
    { deleted: true }
  >;
  listEndpoints: ProviderMethod<{ workspaceId: Id; collectionId: Id }, CollectionEndpoint[]>;
  getEndpoint: ProviderMethod<
    { workspaceId: Id; collectionId: Id; endpointId: Id },
    CollectionEndpoint
  >;
  createEndpoint: ProviderMethod<CreateCollectionEndpointInput, CollectionEndpoint>;
  updateEndpoint: ProviderMethod<UpdateCollectionEndpointInput, CollectionEndpoint>;
  removeEndpoint: ProviderMethod<
    { workspaceId: Id; collectionId: Id; endpointId: Id },
    { deleted: true }
  >;
  listEndpointExamples: ProviderMethod<
    { workspaceId: Id; collectionId: Id; endpointId: Id },
    EndpointExample[]
  >;
  createEndpointExample: ProviderMethod<CreateEndpointExampleInput, EndpointExample>;
  updateEndpointExample: ProviderMethod<UpdateEndpointExampleInput, EndpointExample>;
  removeEndpointExample: ProviderMethod<
    {
      workspaceId: Id;
      collectionId: Id;
      endpointId: Id;
      exampleId: Id;
    },
    { deleted: true }
  >;
};
export type EnvironmentsProvider = Record<string, ProviderMethod>;
export type RunsProvider = Record<string, ProviderMethod>;
export type ImportExportProvider = Record<string, ProviderMethod>;

export type BackendProvider = {
  auth: AuthProvider;
  workspaces: WorkspacesProvider;
  collections: CollectionsProvider;
  environments: EnvironmentsProvider;
  runs: RunsProvider;
  importExport: ImportExportProvider;
  capabilities: () => BackendCapabilities;
};
