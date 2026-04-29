import 'package:test/test.dart';
import 'package:role_rest_sdk/role_rest_sdk.dart';


/// tests for WorkspacesApi
void main() {
  final instance = RoleRestSdk().getWorkspacesApi();

  group(WorkspacesApi, () {
    //Future<PostApiAuthLogout200Response> deleteApiWorkspacesByWorkspaceIdMembersByMemberUserId(int workspaceId, int memberUserId) async
    test('test deleteApiWorkspacesByWorkspaceIdMembersByMemberUserId', () async {
      // TODO
    });

    //Future<GetApiWorkspaces200Response> getApiWorkspaces() async
    test('test getApiWorkspaces', () async {
      // TODO
    });

    //Future<PostApiWorkspaces201Response> getApiWorkspacesByWorkspaceId(int workspaceId) async
    test('test getApiWorkspacesByWorkspaceId', () async {
      // TODO
    });

    //Future<GetApiWorkspacesByWorkspaceIdMembers200Response> getApiWorkspacesByWorkspaceIdMembers(int workspaceId) async
    test('test getApiWorkspacesByWorkspaceIdMembers', () async {
      // TODO
    });

    //Future<GetApiWorkspacesByWorkspaceIdUpdates200Response> getApiWorkspacesByWorkspaceIdUpdates(int workspaceId, { int limit, int since }) async
    test('test getApiWorkspacesByWorkspaceIdUpdates', () async {
      // TODO
    });

    //Future<PostApiWorkspacesByWorkspaceIdMembers201Response> patchApiWorkspacesByWorkspaceIdMembersByMemberUserId(int workspaceId, int memberUserId, PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest patchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest) async
    test('test patchApiWorkspacesByWorkspaceIdMembersByMemberUserId', () async {
      // TODO
    });

    //Future<PostApiWorkspaces201Response> postApiWorkspaces(PostApiWorkspacesRequest postApiWorkspacesRequest) async
    test('test postApiWorkspaces', () async {
      // TODO
    });

    //Future<PostApiWorkspaces201Response> postApiWorkspacesByWorkspaceIdConvertToTeam(int workspaceId, PostApiWorkspacesByWorkspaceIdConvertToTeamRequest postApiWorkspacesByWorkspaceIdConvertToTeamRequest) async
    test('test postApiWorkspacesByWorkspaceIdConvertToTeam', () async {
      // TODO
    });

    //Future<PostApiWorkspacesByWorkspaceIdInvitations201Response> postApiWorkspacesByWorkspaceIdInvitations(int workspaceId, PostApiWorkspacesByWorkspaceIdInvitationsRequest postApiWorkspacesByWorkspaceIdInvitationsRequest) async
    test('test postApiWorkspacesByWorkspaceIdInvitations', () async {
      // TODO
    });

    //Future<PostApiAuthLogout200Response> postApiWorkspacesByWorkspaceIdLeave(int workspaceId) async
    test('test postApiWorkspacesByWorkspaceIdLeave', () async {
      // TODO
    });

    //Future<PostApiWorkspacesByWorkspaceIdMembers201Response> postApiWorkspacesByWorkspaceIdMembers(int workspaceId, PostApiWorkspacesByWorkspaceIdInvitationsRequest postApiWorkspacesByWorkspaceIdInvitationsRequest) async
    test('test postApiWorkspacesByWorkspaceIdMembers', () async {
      // TODO
    });

    //Future<PostApiWorkspaces201Response> postApiWorkspacesJoin(PostApiWorkspacesJoinRequest postApiWorkspacesJoinRequest) async
    test('test postApiWorkspacesJoin', () async {
      // TODO
    });

  });
}
