//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:role_sdk/lib/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:role_sdk/lib/model/post_api_auth_login400_response.dart';
import 'package:role_sdk/lib/model/post_api_auth_login401_response.dart';
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs201_response.dart';
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs_request.dart';

class RunsApi {

  final Dio _dio;

  const RunsApi(this._dio);

  /// getApiWorkspacesByWorkspaceIdRunsByRunId
  /// 
  ///
  /// Parameters:
  /// * [workspaceId] 
  /// * [runId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PostApiWorkspacesByWorkspaceIdRuns201Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PostApiWorkspacesByWorkspaceIdRuns201Response>> getApiWorkspacesByWorkspaceIdRunsByRunId({ 
    required int workspaceId,
    required int runId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/workspaces/{workspaceId}/runs/{runId}'.replaceAll('{' r'workspaceId' '}', workspaceId.toString()).replaceAll('{' r'runId' '}', runId.toString());
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

    PostApiWorkspacesByWorkspaceIdRuns201Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PostApiWorkspacesByWorkspaceIdRuns201Response, PostApiWorkspacesByWorkspaceIdRuns201Response>(rawData, 'PostApiWorkspacesByWorkspaceIdRuns201Response', growable: true);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PostApiWorkspacesByWorkspaceIdRuns201Response>(
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

  /// postApiWorkspacesByWorkspaceIdRuns
  /// 
  ///
  /// Parameters:
  /// * [workspaceId] 
  /// * [postApiWorkspacesByWorkspaceIdRunsRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PostApiWorkspacesByWorkspaceIdRuns201Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PostApiWorkspacesByWorkspaceIdRuns201Response>> postApiWorkspacesByWorkspaceIdRuns({ 
    required int workspaceId,
    required PostApiWorkspacesByWorkspaceIdRunsRequest postApiWorkspacesByWorkspaceIdRunsRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/workspaces/{workspaceId}/runs'.replaceAll('{' r'workspaceId' '}', workspaceId.toString());
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
_bodyData=jsonEncode(postApiWorkspacesByWorkspaceIdRunsRequest);
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

    PostApiWorkspacesByWorkspaceIdRuns201Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PostApiWorkspacesByWorkspaceIdRuns201Response, PostApiWorkspacesByWorkspaceIdRuns201Response>(rawData, 'PostApiWorkspacesByWorkspaceIdRuns201Response', growable: true);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PostApiWorkspacesByWorkspaceIdRuns201Response>(
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

  /// postApiWorkspacesByWorkspaceIdRunsByRunIdCancel
  /// 
  ///
  /// Parameters:
  /// * [workspaceId] 
  /// * [runId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PostApiWorkspacesByWorkspaceIdRuns201Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PostApiWorkspacesByWorkspaceIdRuns201Response>> postApiWorkspacesByWorkspaceIdRunsByRunIdCancel({ 
    required int workspaceId,
    required int runId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/workspaces/{workspaceId}/runs/{runId}/cancel'.replaceAll('{' r'workspaceId' '}', workspaceId.toString()).replaceAll('{' r'runId' '}', runId.toString());
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
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PostApiWorkspacesByWorkspaceIdRuns201Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PostApiWorkspacesByWorkspaceIdRuns201Response, PostApiWorkspacesByWorkspaceIdRuns201Response>(rawData, 'PostApiWorkspacesByWorkspaceIdRuns201Response', growable: true);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PostApiWorkspacesByWorkspaceIdRuns201Response>(
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
