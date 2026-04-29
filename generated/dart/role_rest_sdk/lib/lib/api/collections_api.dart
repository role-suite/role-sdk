//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:role_rest_sdk/lib/api_util.dart';
import 'package:role_rest_sdk/lib/model/get_api_workspaces_by_workspace_id_collections200_response.dart';
import 'package:role_rest_sdk/lib/model/get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response.dart';
import 'package:role_rest_sdk/lib/model/get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_by_endpoint_id_examples200_response.dart';
import 'package:role_rest_sdk/lib/model/get_api_workspaces_by_workspace_id_collections_by_collection_id_folders200_response.dart';
import 'package:role_rest_sdk/lib/model/patch_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_by_endpoint_id_examples_by_example_id_request.dart';
import 'package:role_rest_sdk/lib/model/patch_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_by_endpoint_id_request.dart';
import 'package:role_rest_sdk/lib/model/patch_api_workspaces_by_workspace_id_collections_by_collection_id_folders_by_folder_id_request.dart';
import 'package:role_rest_sdk/lib/model/patch_api_workspaces_by_workspace_id_collections_by_collection_id_request.dart';
import 'package:role_rest_sdk/lib/model/post_api_auth_login400_response.dart';
import 'package:role_rest_sdk/lib/model/post_api_auth_login401_response.dart';
import 'package:role_rest_sdk/lib/model/post_api_auth_logout200_response.dart';
import 'package:role_rest_sdk/lib/model/post_api_workspaces_by_workspace_id_collections201_response.dart';
import 'package:role_rest_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints201_response.dart';
import 'package:role_rest_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_by_endpoint_id_examples201_response.dart';
import 'package:role_rest_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_by_endpoint_id_examples_request.dart';
import 'package:role_rest_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request.dart';
import 'package:role_rest_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_folders201_response.dart';
import 'package:role_rest_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_folders_request.dart';
import 'package:role_rest_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_request.dart';

class CollectionsApi {

  final Dio _dio;

  final Serializers _serializers;

  const CollectionsApi(this._dio, this._serializers);

  /// deleteApiWorkspacesByWorkspaceIdCollectionsByCollectionId
  /// 
  ///
  /// Parameters:
  /// * [workspaceId] 
  /// * [collectionId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PostApiAuthLogout200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PostApiAuthLogout200Response>> deleteApiWorkspacesByWorkspaceIdCollectionsByCollectionId({ 
    required int workspaceId,
    required int collectionId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/workspaces/{workspaceId}/collections/{collectionId}'.replaceAll('{' r'workspaceId' '}', encodeQueryParameter(_serializers, workspaceId, const FullType(int)).toString()).replaceAll('{' r'collectionId' '}', encodeQueryParameter(_serializers, collectionId, const FullType(int)).toString());
    final _options = Options(
      method: r'DELETE',
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

    PostApiAuthLogout200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(PostApiAuthLogout200Response),
      ) as PostApiAuthLogout200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PostApiAuthLogout200Response>(
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

  /// deleteApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointId
  /// 
  ///
  /// Parameters:
  /// * [workspaceId] 
  /// * [collectionId] 
  /// * [endpointId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PostApiAuthLogout200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PostApiAuthLogout200Response>> deleteApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointId({ 
    required int workspaceId,
    required int collectionId,
    required int endpointId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/workspaces/{workspaceId}/collections/{collectionId}/endpoints/{endpointId}'.replaceAll('{' r'workspaceId' '}', encodeQueryParameter(_serializers, workspaceId, const FullType(int)).toString()).replaceAll('{' r'collectionId' '}', encodeQueryParameter(_serializers, collectionId, const FullType(int)).toString()).replaceAll('{' r'endpointId' '}', encodeQueryParameter(_serializers, endpointId, const FullType(int)).toString());
    final _options = Options(
      method: r'DELETE',
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

    PostApiAuthLogout200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(PostApiAuthLogout200Response),
      ) as PostApiAuthLogout200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PostApiAuthLogout200Response>(
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

  /// deleteApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleId
  /// 
  ///
  /// Parameters:
  /// * [workspaceId] 
  /// * [collectionId] 
  /// * [endpointId] 
  /// * [exampleId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PostApiAuthLogout200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PostApiAuthLogout200Response>> deleteApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleId({ 
    required int workspaceId,
    required int collectionId,
    required int endpointId,
    required int exampleId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/workspaces/{workspaceId}/collections/{collectionId}/endpoints/{endpointId}/examples/{exampleId}'.replaceAll('{' r'workspaceId' '}', encodeQueryParameter(_serializers, workspaceId, const FullType(int)).toString()).replaceAll('{' r'collectionId' '}', encodeQueryParameter(_serializers, collectionId, const FullType(int)).toString()).replaceAll('{' r'endpointId' '}', encodeQueryParameter(_serializers, endpointId, const FullType(int)).toString()).replaceAll('{' r'exampleId' '}', encodeQueryParameter(_serializers, exampleId, const FullType(int)).toString());
    final _options = Options(
      method: r'DELETE',
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

    PostApiAuthLogout200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(PostApiAuthLogout200Response),
      ) as PostApiAuthLogout200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PostApiAuthLogout200Response>(
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

  /// deleteApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderId
  /// 
  ///
  /// Parameters:
  /// * [workspaceId] 
  /// * [collectionId] 
  /// * [folderId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PostApiAuthLogout200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PostApiAuthLogout200Response>> deleteApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderId({ 
    required int workspaceId,
    required int collectionId,
    required int folderId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/workspaces/{workspaceId}/collections/{collectionId}/folders/{folderId}'.replaceAll('{' r'workspaceId' '}', encodeQueryParameter(_serializers, workspaceId, const FullType(int)).toString()).replaceAll('{' r'collectionId' '}', encodeQueryParameter(_serializers, collectionId, const FullType(int)).toString()).replaceAll('{' r'folderId' '}', encodeQueryParameter(_serializers, folderId, const FullType(int)).toString());
    final _options = Options(
      method: r'DELETE',
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

    PostApiAuthLogout200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(PostApiAuthLogout200Response),
      ) as PostApiAuthLogout200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PostApiAuthLogout200Response>(
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

  /// getApiWorkspacesByWorkspaceIdCollections
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
  /// Returns a [Future] containing a [Response] with a [GetApiWorkspacesByWorkspaceIdCollections200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<GetApiWorkspacesByWorkspaceIdCollections200Response>> getApiWorkspacesByWorkspaceIdCollections({ 
    required int workspaceId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/workspaces/{workspaceId}/collections'.replaceAll('{' r'workspaceId' '}', encodeQueryParameter(_serializers, workspaceId, const FullType(int)).toString());
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

    GetApiWorkspacesByWorkspaceIdCollections200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdCollections200Response),
      ) as GetApiWorkspacesByWorkspaceIdCollections200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<GetApiWorkspacesByWorkspaceIdCollections200Response>(
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

  /// getApiWorkspacesByWorkspaceIdCollectionsByCollectionId
  /// 
  ///
  /// Parameters:
  /// * [workspaceId] 
  /// * [collectionId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PostApiWorkspacesByWorkspaceIdCollections201Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PostApiWorkspacesByWorkspaceIdCollections201Response>> getApiWorkspacesByWorkspaceIdCollectionsByCollectionId({ 
    required int workspaceId,
    required int collectionId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/workspaces/{workspaceId}/collections/{collectionId}'.replaceAll('{' r'workspaceId' '}', encodeQueryParameter(_serializers, workspaceId, const FullType(int)).toString()).replaceAll('{' r'collectionId' '}', encodeQueryParameter(_serializers, collectionId, const FullType(int)).toString());
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

    PostApiWorkspacesByWorkspaceIdCollections201Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdCollections201Response),
      ) as PostApiWorkspacesByWorkspaceIdCollections201Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PostApiWorkspacesByWorkspaceIdCollections201Response>(
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

  /// getApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints
  /// 
  ///
  /// Parameters:
  /// * [workspaceId] 
  /// * [collectionId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200Response>> getApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints({ 
    required int workspaceId,
    required int collectionId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/workspaces/{workspaceId}/collections/{collectionId}/endpoints'.replaceAll('{' r'workspaceId' '}', encodeQueryParameter(_serializers, workspaceId, const FullType(int)).toString()).replaceAll('{' r'collectionId' '}', encodeQueryParameter(_serializers, collectionId, const FullType(int)).toString());
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

    GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200Response),
      ) as GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200Response>(
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

  /// getApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointId
  /// 
  ///
  /// Parameters:
  /// * [workspaceId] 
  /// * [collectionId] 
  /// * [endpointId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response>> getApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointId({ 
    required int workspaceId,
    required int collectionId,
    required int endpointId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/workspaces/{workspaceId}/collections/{collectionId}/endpoints/{endpointId}'.replaceAll('{' r'workspaceId' '}', encodeQueryParameter(_serializers, workspaceId, const FullType(int)).toString()).replaceAll('{' r'collectionId' '}', encodeQueryParameter(_serializers, collectionId, const FullType(int)).toString()).replaceAll('{' r'endpointId' '}', encodeQueryParameter(_serializers, endpointId, const FullType(int)).toString());
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

    PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response),
      ) as PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response>(
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

  /// getApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples
  /// 
  ///
  /// Parameters:
  /// * [workspaceId] 
  /// * [collectionId] 
  /// * [endpointId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples200Response>> getApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples({ 
    required int workspaceId,
    required int collectionId,
    required int endpointId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/workspaces/{workspaceId}/collections/{collectionId}/endpoints/{endpointId}/examples'.replaceAll('{' r'workspaceId' '}', encodeQueryParameter(_serializers, workspaceId, const FullType(int)).toString()).replaceAll('{' r'collectionId' '}', encodeQueryParameter(_serializers, collectionId, const FullType(int)).toString()).replaceAll('{' r'endpointId' '}', encodeQueryParameter(_serializers, endpointId, const FullType(int)).toString());
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

    GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples200Response),
      ) as GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples200Response>(
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

  /// getApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders
  /// 
  ///
  /// Parameters:
  /// * [workspaceId] 
  /// * [collectionId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200Response>> getApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders({ 
    required int workspaceId,
    required int collectionId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/workspaces/{workspaceId}/collections/{collectionId}/folders'.replaceAll('{' r'workspaceId' '}', encodeQueryParameter(_serializers, workspaceId, const FullType(int)).toString()).replaceAll('{' r'collectionId' '}', encodeQueryParameter(_serializers, collectionId, const FullType(int)).toString());
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

    GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200Response),
      ) as GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200Response>(
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

  /// patchApiWorkspacesByWorkspaceIdCollectionsByCollectionId
  /// 
  ///
  /// Parameters:
  /// * [workspaceId] 
  /// * [collectionId] 
  /// * [patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PostApiWorkspacesByWorkspaceIdCollections201Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PostApiWorkspacesByWorkspaceIdCollections201Response>> patchApiWorkspacesByWorkspaceIdCollectionsByCollectionId({ 
    required int workspaceId,
    required int collectionId,
    required PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/workspaces/{workspaceId}/collections/{collectionId}'.replaceAll('{' r'workspaceId' '}', encodeQueryParameter(_serializers, workspaceId, const FullType(int)).toString()).replaceAll('{' r'collectionId' '}', encodeQueryParameter(_serializers, collectionId, const FullType(int)).toString());
    final _options = Options(
      method: r'PATCH',
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
      const _type = FullType(PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest);
      _bodyData = _serializers.serialize(patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest, specifiedType: _type);

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

    PostApiWorkspacesByWorkspaceIdCollections201Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdCollections201Response),
      ) as PostApiWorkspacesByWorkspaceIdCollections201Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PostApiWorkspacesByWorkspaceIdCollections201Response>(
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

  /// patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointId
  /// 
  ///
  /// Parameters:
  /// * [workspaceId] 
  /// * [collectionId] 
  /// * [endpointId] 
  /// * [patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response>> patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointId({ 
    required int workspaceId,
    required int collectionId,
    required int endpointId,
    required PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequest patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/workspaces/{workspaceId}/collections/{collectionId}/endpoints/{endpointId}'.replaceAll('{' r'workspaceId' '}', encodeQueryParameter(_serializers, workspaceId, const FullType(int)).toString()).replaceAll('{' r'collectionId' '}', encodeQueryParameter(_serializers, collectionId, const FullType(int)).toString()).replaceAll('{' r'endpointId' '}', encodeQueryParameter(_serializers, endpointId, const FullType(int)).toString());
    final _options = Options(
      method: r'PATCH',
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
      const _type = FullType(PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequest);
      _bodyData = _serializers.serialize(patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequest, specifiedType: _type);

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

    PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response),
      ) as PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response>(
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

  /// patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleId
  /// 
  ///
  /// Parameters:
  /// * [workspaceId] 
  /// * [collectionId] 
  /// * [endpointId] 
  /// * [exampleId] 
  /// * [patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples201Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples201Response>> patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleId({ 
    required int workspaceId,
    required int collectionId,
    required int endpointId,
    required int exampleId,
    required PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/workspaces/{workspaceId}/collections/{collectionId}/endpoints/{endpointId}/examples/{exampleId}'.replaceAll('{' r'workspaceId' '}', encodeQueryParameter(_serializers, workspaceId, const FullType(int)).toString()).replaceAll('{' r'collectionId' '}', encodeQueryParameter(_serializers, collectionId, const FullType(int)).toString()).replaceAll('{' r'endpointId' '}', encodeQueryParameter(_serializers, endpointId, const FullType(int)).toString()).replaceAll('{' r'exampleId' '}', encodeQueryParameter(_serializers, exampleId, const FullType(int)).toString());
    final _options = Options(
      method: r'PATCH',
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
      const _type = FullType(PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest);
      _bodyData = _serializers.serialize(patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest, specifiedType: _type);

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

    PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples201Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples201Response),
      ) as PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples201Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples201Response>(
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

  /// patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderId
  /// 
  ///
  /// Parameters:
  /// * [workspaceId] 
  /// * [collectionId] 
  /// * [folderId] 
  /// * [patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders201Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders201Response>> patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderId({ 
    required int workspaceId,
    required int collectionId,
    required int folderId,
    required PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/workspaces/{workspaceId}/collections/{collectionId}/folders/{folderId}'.replaceAll('{' r'workspaceId' '}', encodeQueryParameter(_serializers, workspaceId, const FullType(int)).toString()).replaceAll('{' r'collectionId' '}', encodeQueryParameter(_serializers, collectionId, const FullType(int)).toString()).replaceAll('{' r'folderId' '}', encodeQueryParameter(_serializers, folderId, const FullType(int)).toString());
    final _options = Options(
      method: r'PATCH',
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
      const _type = FullType(PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest);
      _bodyData = _serializers.serialize(patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest, specifiedType: _type);

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

    PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders201Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders201Response),
      ) as PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders201Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders201Response>(
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

  /// postApiWorkspacesByWorkspaceIdCollections
  /// 
  ///
  /// Parameters:
  /// * [workspaceId] 
  /// * [postApiWorkspacesByWorkspaceIdCollectionsRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PostApiWorkspacesByWorkspaceIdCollections201Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PostApiWorkspacesByWorkspaceIdCollections201Response>> postApiWorkspacesByWorkspaceIdCollections({ 
    required int workspaceId,
    required PostApiWorkspacesByWorkspaceIdCollectionsRequest postApiWorkspacesByWorkspaceIdCollectionsRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/workspaces/{workspaceId}/collections'.replaceAll('{' r'workspaceId' '}', encodeQueryParameter(_serializers, workspaceId, const FullType(int)).toString());
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
      const _type = FullType(PostApiWorkspacesByWorkspaceIdCollectionsRequest);
      _bodyData = _serializers.serialize(postApiWorkspacesByWorkspaceIdCollectionsRequest, specifiedType: _type);

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

    PostApiWorkspacesByWorkspaceIdCollections201Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdCollections201Response),
      ) as PostApiWorkspacesByWorkspaceIdCollections201Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PostApiWorkspacesByWorkspaceIdCollections201Response>(
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

  /// postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints
  /// 
  ///
  /// Parameters:
  /// * [workspaceId] 
  /// * [collectionId] 
  /// * [postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response>> postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints({ 
    required int workspaceId,
    required int collectionId,
    required PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/workspaces/{workspaceId}/collections/{collectionId}/endpoints'.replaceAll('{' r'workspaceId' '}', encodeQueryParameter(_serializers, workspaceId, const FullType(int)).toString()).replaceAll('{' r'collectionId' '}', encodeQueryParameter(_serializers, collectionId, const FullType(int)).toString());
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
      const _type = FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest);
      _bodyData = _serializers.serialize(postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest, specifiedType: _type);

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

    PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response),
      ) as PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response>(
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

  /// postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples
  /// 
  ///
  /// Parameters:
  /// * [workspaceId] 
  /// * [collectionId] 
  /// * [endpointId] 
  /// * [postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples201Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples201Response>> postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples({ 
    required int workspaceId,
    required int collectionId,
    required int endpointId,
    required PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesRequest postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/workspaces/{workspaceId}/collections/{collectionId}/endpoints/{endpointId}/examples'.replaceAll('{' r'workspaceId' '}', encodeQueryParameter(_serializers, workspaceId, const FullType(int)).toString()).replaceAll('{' r'collectionId' '}', encodeQueryParameter(_serializers, collectionId, const FullType(int)).toString()).replaceAll('{' r'endpointId' '}', encodeQueryParameter(_serializers, endpointId, const FullType(int)).toString());
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
      const _type = FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesRequest);
      _bodyData = _serializers.serialize(postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesRequest, specifiedType: _type);

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

    PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples201Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples201Response),
      ) as PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples201Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples201Response>(
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

  /// postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders
  /// 
  ///
  /// Parameters:
  /// * [workspaceId] 
  /// * [collectionId] 
  /// * [postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders201Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders201Response>> postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders({ 
    required int workspaceId,
    required int collectionId,
    required PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/workspaces/{workspaceId}/collections/{collectionId}/folders'.replaceAll('{' r'workspaceId' '}', encodeQueryParameter(_serializers, workspaceId, const FullType(int)).toString()).replaceAll('{' r'collectionId' '}', encodeQueryParameter(_serializers, collectionId, const FullType(int)).toString());
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
      const _type = FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest);
      _bodyData = _serializers.serialize(postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest, specifiedType: _type);

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

    PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders201Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders201Response),
      ) as PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders201Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders201Response>(
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
