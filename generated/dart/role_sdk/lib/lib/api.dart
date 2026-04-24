//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:role_sdk/lib/auth/api_key_auth.dart';
import 'package:role_sdk/lib/auth/basic_auth.dart';
import 'package:role_sdk/lib/auth/bearer_auth.dart';
import 'package:role_sdk/lib/auth/oauth.dart';
import 'package:role_sdk/lib/api/auth_api.dart';
import 'package:role_sdk/lib/api/collections_api.dart';
import 'package:role_sdk/lib/api/environments_api.dart';
import 'package:role_sdk/lib/api/import_export_api.dart';
import 'package:role_sdk/lib/api/runs_api.dart';
import 'package:role_sdk/lib/api/workspaces_api.dart';

class RoleSdk {
  static const String basePath = r'http://localhost';

  final Dio dio;
  RoleSdk({
    Dio? dio,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : 
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Get AuthApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AuthApi getAuthApi() {
    return AuthApi(dio);
  }

  /// Get CollectionsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CollectionsApi getCollectionsApi() {
    return CollectionsApi(dio);
  }

  /// Get EnvironmentsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  EnvironmentsApi getEnvironmentsApi() {
    return EnvironmentsApi(dio);
  }

  /// Get ImportExportApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ImportExportApi getImportExportApi() {
    return ImportExportApi(dio);
  }

  /// Get RunsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RunsApi getRunsApi() {
    return RunsApi(dio);
  }

  /// Get WorkspacesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  WorkspacesApi getWorkspacesApi() {
    return WorkspacesApi(dio);
  }
}
