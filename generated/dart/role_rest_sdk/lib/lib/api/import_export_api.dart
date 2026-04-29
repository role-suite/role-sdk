//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:role_rest_sdk/lib/api_util.dart';
import 'package:role_rest_sdk/lib/model/get_api_workspaces_by_workspace_id_import_export_jobs200_response.dart';
import 'package:role_rest_sdk/lib/model/post_api_auth_login400_response.dart';
import 'package:role_rest_sdk/lib/model/post_api_auth_login401_response.dart';
import 'package:role_rest_sdk/lib/model/post_api_workspaces_by_workspace_id_import_export_exports201_response.dart';
import 'package:role_rest_sdk/lib/model/post_api_workspaces_by_workspace_id_import_export_exports_request.dart';
import 'package:role_rest_sdk/lib/model/post_api_workspaces_by_workspace_id_import_export_imports_request.dart';

class ImportExportApi {

  final Dio _dio;

  final Serializers _serializers;

  const ImportExportApi(this._dio, this._serializers);

  /// getApiWorkspacesByWorkspaceIdImportExportJobs
  /// 
  ///
  /// Parameters:
  /// * [workspaceId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GetApiWorkspacesByWorkspaceIdImportExportJobs200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<GetApiWorkspacesByWorkspaceIdImportExportJobs200Response>> getApiWorkspacesByWorkspaceIdImportExportJobs({ 
    required int workspaceId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/workspaces/{workspaceId}/import-export/jobs'.replaceAll('{' r'workspaceId' '}', encodeQueryParameter(_serializers, workspaceId, const FullType(int)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'bearerAuth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    GetApiWorkspacesByWorkspaceIdImportExportJobs200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdImportExportJobs200Response),
      ) as GetApiWorkspacesByWorkspaceIdImportExportJobs200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<GetApiWorkspacesByWorkspaceIdImportExportJobs200Response>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// getApiWorkspacesByWorkspaceIdImportExportJobsByJobId
  /// 
  ///
  /// Parameters:
  /// * [workspaceId] 
  /// * [jobId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PostApiWorkspacesByWorkspaceIdImportExportExports201Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PostApiWorkspacesByWorkspaceIdImportExportExports201Response>> getApiWorkspacesByWorkspaceIdImportExportJobsByJobId({ 
    required int workspaceId,
    required int jobId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/workspaces/{workspaceId}/import-export/jobs/{jobId}'.replaceAll('{' r'workspaceId' '}', encodeQueryParameter(_serializers, workspaceId, const FullType(int)).toString()).replaceAll('{' r'jobId' '}', encodeQueryParameter(_serializers, jobId, const FullType(int)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'bearerAuth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PostApiWorkspacesByWorkspaceIdImportExportExports201Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdImportExportExports201Response),
      ) as PostApiWorkspacesByWorkspaceIdImportExportExports201Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PostApiWorkspacesByWorkspaceIdImportExportExports201Response>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// postApiWorkspacesByWorkspaceIdImportExportExports
  /// 
  ///
  /// Parameters:
  /// * [workspaceId] 
  /// * [postApiWorkspacesByWorkspaceIdImportExportExportsRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PostApiWorkspacesByWorkspaceIdImportExportExports201Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PostApiWorkspacesByWorkspaceIdImportExportExports201Response>> postApiWorkspacesByWorkspaceIdImportExportExports({ 
    required int workspaceId,
    required PostApiWorkspacesByWorkspaceIdImportExportExportsRequest postApiWorkspacesByWorkspaceIdImportExportExportsRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/workspaces/{workspaceId}/import-export/exports'.replaceAll('{' r'workspaceId' '}', encodeQueryParameter(_serializers, workspaceId, const FullType(int)).toString());
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'bearerAuth',
          },
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(PostApiWorkspacesByWorkspaceIdImportExportExportsRequest);
      _bodyData = _serializers.serialize(postApiWorkspacesByWorkspaceIdImportExportExportsRequest, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PostApiWorkspacesByWorkspaceIdImportExportExports201Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdImportExportExports201Response),
      ) as PostApiWorkspacesByWorkspaceIdImportExportExports201Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PostApiWorkspacesByWorkspaceIdImportExportExports201Response>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// postApiWorkspacesByWorkspaceIdImportExportImports
  /// 
  ///
  /// Parameters:
  /// * [workspaceId] 
  /// * [postApiWorkspacesByWorkspaceIdImportExportImportsRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PostApiWorkspacesByWorkspaceIdImportExportExports201Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PostApiWorkspacesByWorkspaceIdImportExportExports201Response>> postApiWorkspacesByWorkspaceIdImportExportImports({ 
    required int workspaceId,
    required PostApiWorkspacesByWorkspaceIdImportExportImportsRequest postApiWorkspacesByWorkspaceIdImportExportImportsRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/workspaces/{workspaceId}/import-export/imports'.replaceAll('{' r'workspaceId' '}', encodeQueryParameter(_serializers, workspaceId, const FullType(int)).toString());
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'bearerAuth',
          },
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(PostApiWorkspacesByWorkspaceIdImportExportImportsRequest);
      _bodyData = _serializers.serialize(postApiWorkspacesByWorkspaceIdImportExportImportsRequest, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PostApiWorkspacesByWorkspaceIdImportExportExports201Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdImportExportExports201Response),
      ) as PostApiWorkspacesByWorkspaceIdImportExportExports201Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PostApiWorkspacesByWorkspaceIdImportExportExports201Response>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
