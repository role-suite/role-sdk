import 'package:test/test.dart';
import 'package:role_sdk/role_sdk.dart';


/// tests for RunsApi
void main() {
  final instance = RoleSdk().getRunsApi();

  group(RunsApi, () {
    //Future<PostApiWorkspacesByWorkspaceIdRuns201Response> getApiWorkspacesByWorkspaceIdRunsByRunId(int workspaceId, int runId) async
    test('test getApiWorkspacesByWorkspaceIdRunsByRunId', () async {
      // TODO
    });

    //Future<PostApiWorkspacesByWorkspaceIdRuns201Response> postApiWorkspacesByWorkspaceIdRuns(int workspaceId, PostApiWorkspacesByWorkspaceIdRunsRequest postApiWorkspacesByWorkspaceIdRunsRequest) async
    test('test postApiWorkspacesByWorkspaceIdRuns', () async {
      // TODO
    });

    //Future<PostApiWorkspacesByWorkspaceIdRuns201Response> postApiWorkspacesByWorkspaceIdRunsByRunIdCancel(int workspaceId, int runId) async
    test('test postApiWorkspacesByWorkspaceIdRunsByRunIdCancel', () async {
      // TODO
    });

  });
}
