import 'package:test/test.dart';
import 'package:role_rest_sdk/role_rest_sdk.dart';


/// tests for ImportExportApi
void main() {
  final instance = RoleRestSdk().getImportExportApi();

  group(ImportExportApi, () {
    //Future<GetApiWorkspacesByWorkspaceIdImportExportJobs200Response> getApiWorkspacesByWorkspaceIdImportExportJobs(int workspaceId) async
    test('test getApiWorkspacesByWorkspaceIdImportExportJobs', () async {
      // TODO
    });

    //Future<PostApiWorkspacesByWorkspaceIdImportExportExports201Response> getApiWorkspacesByWorkspaceIdImportExportJobsByJobId(int workspaceId, int jobId) async
    test('test getApiWorkspacesByWorkspaceIdImportExportJobsByJobId', () async {
      // TODO
    });

    //Future<PostApiWorkspacesByWorkspaceIdImportExportExports201Response> postApiWorkspacesByWorkspaceIdImportExportExports(int workspaceId, PostApiWorkspacesByWorkspaceIdImportExportExportsRequest postApiWorkspacesByWorkspaceIdImportExportExportsRequest) async
    test('test postApiWorkspacesByWorkspaceIdImportExportExports', () async {
      // TODO
    });

    //Future<PostApiWorkspacesByWorkspaceIdImportExportExports201Response> postApiWorkspacesByWorkspaceIdImportExportImports(int workspaceId, PostApiWorkspacesByWorkspaceIdImportExportImportsRequest postApiWorkspacesByWorkspaceIdImportExportImportsRequest) async
    test('test postApiWorkspacesByWorkspaceIdImportExportImports', () async {
      // TODO
    });

  });
}
