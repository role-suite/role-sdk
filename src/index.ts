export { createRoleSdk } from "./client.js";

export type {
  ErrorHookContext,
  Id,
  RequestHookContext,
  ResponseHookContext,
  RoleSdkConfig,
  TokenPair,
  TokenStore
} from "./config.js";

export type { RoleSdkClient, WorkspaceScopedClient } from "./client.js";
export type { BackendCapabilities } from "./core/provider/capabilities.js";
export type { BackendProvider } from "./core/provider/backend-provider.js";
export type {
  AuthSessionResult,
  LoginInput,
  CurrentUserMembership,
  CurrentUserResult,
  LogoutInput,
  LogoutResult,
  RefreshInput,
  RegisterInput
} from "./modules/auth/types.js";
export type {
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
  WorkspaceUpdate,
  WorkspaceUpdatesInput,
  WorkspaceUpdatesResult
} from "./modules/workspaces/types.js";
export type {
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
} from "./modules/collections/types.js";
export {
  RoleApiError,
  RoleAuthError,
  RoleNetworkError,
  RoleSdkError,
  RoleUnknownError,
  RoleValidationError
} from "./core/errors/sdk-error.js";
