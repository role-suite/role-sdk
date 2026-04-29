// This is a generated file - do not edit.
//
// Generated from collections.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'collections.pb.dart' as $0;

export 'collections.pb.dart';

@$pb.GrpcServiceName('role.v1.CollectionsService')
class CollectionsServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  CollectionsServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.CollectionItemsResponse> list(
    $0.CollectionsListRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$0.CollectionItemResponse> getById(
    $0.CollectionByIdRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getById, request, options: options);
  }

  $grpc.ResponseFuture<$0.CollectionItemResponse> create(
    $0.CollectionCreateRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.CollectionItemResponse> update(
    $0.CollectionUpdateRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$0.CollectionActionResponse> delete(
    $0.CollectionDeleteRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$0.CollectionEndpointItemsResponse> listEndpoints(
    $0.CollectionByIdRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$listEndpoints, request, options: options);
  }

  $grpc.ResponseFuture<$0.CollectionEndpointItemResponse> getEndpointById(
    $0.CollectionEndpointByIdRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getEndpointById, request, options: options);
  }

  $grpc.ResponseFuture<$0.CollectionEndpointItemResponse> createEndpoint(
    $0.CollectionEndpointCreateRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createEndpoint, request, options: options);
  }

  $grpc.ResponseFuture<$0.CollectionEndpointItemResponse> updateEndpoint(
    $0.CollectionEndpointUpdateRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateEndpoint, request, options: options);
  }

  $grpc.ResponseFuture<$0.CollectionActionResponse> deleteEndpoint(
    $0.CollectionEndpointByIdRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteEndpoint, request, options: options);
  }

  $grpc.ResponseFuture<$0.CollectionFolderItemsResponse> listFolders(
    $0.CollectionByIdRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$listFolders, request, options: options);
  }

  $grpc.ResponseFuture<$0.CollectionFolderItemResponse> createFolder(
    $0.CollectionFolderCreateRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createFolder, request, options: options);
  }

  $grpc.ResponseFuture<$0.CollectionFolderItemResponse> updateFolder(
    $0.CollectionFolderUpdateRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateFolder, request, options: options);
  }

  $grpc.ResponseFuture<$0.CollectionActionResponse> deleteFolder(
    $0.CollectionFolderByIdRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteFolder, request, options: options);
  }

  $grpc.ResponseFuture<$0.CollectionExampleItemsResponse> listEndpointExamples(
    $0.CollectionEndpointByIdRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$listEndpointExamples, request, options: options);
  }

  $grpc.ResponseFuture<$0.CollectionExampleItemResponse> createEndpointExample(
    $0.CollectionExampleCreateRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createEndpointExample, request, options: options);
  }

  $grpc.ResponseFuture<$0.CollectionExampleItemResponse> updateEndpointExample(
    $0.CollectionExampleUpdateRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateEndpointExample, request, options: options);
  }

  $grpc.ResponseFuture<$0.CollectionActionResponse> deleteEndpointExample(
    $0.CollectionExampleByIdRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteEndpointExample, request, options: options);
  }

  // method descriptors

  static final _$list =
      $grpc.ClientMethod<$0.CollectionsListRequest, $0.CollectionItemsResponse>(
          '/role.v1.CollectionsService/List',
          ($0.CollectionsListRequest value) => value.writeToBuffer(),
          $0.CollectionItemsResponse.fromBuffer);
  static final _$getById =
      $grpc.ClientMethod<$0.CollectionByIdRequest, $0.CollectionItemResponse>(
          '/role.v1.CollectionsService/GetById',
          ($0.CollectionByIdRequest value) => value.writeToBuffer(),
          $0.CollectionItemResponse.fromBuffer);
  static final _$create =
      $grpc.ClientMethod<$0.CollectionCreateRequest, $0.CollectionItemResponse>(
          '/role.v1.CollectionsService/Create',
          ($0.CollectionCreateRequest value) => value.writeToBuffer(),
          $0.CollectionItemResponse.fromBuffer);
  static final _$update =
      $grpc.ClientMethod<$0.CollectionUpdateRequest, $0.CollectionItemResponse>(
          '/role.v1.CollectionsService/Update',
          ($0.CollectionUpdateRequest value) => value.writeToBuffer(),
          $0.CollectionItemResponse.fromBuffer);
  static final _$delete = $grpc.ClientMethod<$0.CollectionDeleteRequest,
          $0.CollectionActionResponse>(
      '/role.v1.CollectionsService/Delete',
      ($0.CollectionDeleteRequest value) => value.writeToBuffer(),
      $0.CollectionActionResponse.fromBuffer);
  static final _$listEndpoints = $grpc.ClientMethod<$0.CollectionByIdRequest,
          $0.CollectionEndpointItemsResponse>(
      '/role.v1.CollectionsService/ListEndpoints',
      ($0.CollectionByIdRequest value) => value.writeToBuffer(),
      $0.CollectionEndpointItemsResponse.fromBuffer);
  static final _$getEndpointById = $grpc.ClientMethod<
          $0.CollectionEndpointByIdRequest, $0.CollectionEndpointItemResponse>(
      '/role.v1.CollectionsService/GetEndpointById',
      ($0.CollectionEndpointByIdRequest value) => value.writeToBuffer(),
      $0.CollectionEndpointItemResponse.fromBuffer);
  static final _$createEndpoint = $grpc.ClientMethod<
          $0.CollectionEndpointCreateRequest,
          $0.CollectionEndpointItemResponse>(
      '/role.v1.CollectionsService/CreateEndpoint',
      ($0.CollectionEndpointCreateRequest value) => value.writeToBuffer(),
      $0.CollectionEndpointItemResponse.fromBuffer);
  static final _$updateEndpoint = $grpc.ClientMethod<
          $0.CollectionEndpointUpdateRequest,
          $0.CollectionEndpointItemResponse>(
      '/role.v1.CollectionsService/UpdateEndpoint',
      ($0.CollectionEndpointUpdateRequest value) => value.writeToBuffer(),
      $0.CollectionEndpointItemResponse.fromBuffer);
  static final _$deleteEndpoint = $grpc.ClientMethod<
          $0.CollectionEndpointByIdRequest, $0.CollectionActionResponse>(
      '/role.v1.CollectionsService/DeleteEndpoint',
      ($0.CollectionEndpointByIdRequest value) => value.writeToBuffer(),
      $0.CollectionActionResponse.fromBuffer);
  static final _$listFolders = $grpc.ClientMethod<$0.CollectionByIdRequest,
          $0.CollectionFolderItemsResponse>(
      '/role.v1.CollectionsService/ListFolders',
      ($0.CollectionByIdRequest value) => value.writeToBuffer(),
      $0.CollectionFolderItemsResponse.fromBuffer);
  static final _$createFolder = $grpc.ClientMethod<
          $0.CollectionFolderCreateRequest, $0.CollectionFolderItemResponse>(
      '/role.v1.CollectionsService/CreateFolder',
      ($0.CollectionFolderCreateRequest value) => value.writeToBuffer(),
      $0.CollectionFolderItemResponse.fromBuffer);
  static final _$updateFolder = $grpc.ClientMethod<
          $0.CollectionFolderUpdateRequest, $0.CollectionFolderItemResponse>(
      '/role.v1.CollectionsService/UpdateFolder',
      ($0.CollectionFolderUpdateRequest value) => value.writeToBuffer(),
      $0.CollectionFolderItemResponse.fromBuffer);
  static final _$deleteFolder = $grpc.ClientMethod<
          $0.CollectionFolderByIdRequest, $0.CollectionActionResponse>(
      '/role.v1.CollectionsService/DeleteFolder',
      ($0.CollectionFolderByIdRequest value) => value.writeToBuffer(),
      $0.CollectionActionResponse.fromBuffer);
  static final _$listEndpointExamples = $grpc.ClientMethod<
          $0.CollectionEndpointByIdRequest, $0.CollectionExampleItemsResponse>(
      '/role.v1.CollectionsService/ListEndpointExamples',
      ($0.CollectionEndpointByIdRequest value) => value.writeToBuffer(),
      $0.CollectionExampleItemsResponse.fromBuffer);
  static final _$createEndpointExample = $grpc.ClientMethod<
          $0.CollectionExampleCreateRequest, $0.CollectionExampleItemResponse>(
      '/role.v1.CollectionsService/CreateEndpointExample',
      ($0.CollectionExampleCreateRequest value) => value.writeToBuffer(),
      $0.CollectionExampleItemResponse.fromBuffer);
  static final _$updateEndpointExample = $grpc.ClientMethod<
          $0.CollectionExampleUpdateRequest, $0.CollectionExampleItemResponse>(
      '/role.v1.CollectionsService/UpdateEndpointExample',
      ($0.CollectionExampleUpdateRequest value) => value.writeToBuffer(),
      $0.CollectionExampleItemResponse.fromBuffer);
  static final _$deleteEndpointExample = $grpc.ClientMethod<
          $0.CollectionExampleByIdRequest, $0.CollectionActionResponse>(
      '/role.v1.CollectionsService/DeleteEndpointExample',
      ($0.CollectionExampleByIdRequest value) => value.writeToBuffer(),
      $0.CollectionActionResponse.fromBuffer);
}

@$pb.GrpcServiceName('role.v1.CollectionsService')
abstract class CollectionsServiceBase extends $grpc.Service {
  $core.String get $name => 'role.v1.CollectionsService';

  CollectionsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CollectionsListRequest,
            $0.CollectionItemsResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CollectionsListRequest.fromBuffer(value),
        ($0.CollectionItemsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CollectionByIdRequest,
            $0.CollectionItemResponse>(
        'GetById',
        getById_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CollectionByIdRequest.fromBuffer(value),
        ($0.CollectionItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CollectionCreateRequest,
            $0.CollectionItemResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CollectionCreateRequest.fromBuffer(value),
        ($0.CollectionItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CollectionUpdateRequest,
            $0.CollectionItemResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CollectionUpdateRequest.fromBuffer(value),
        ($0.CollectionItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CollectionDeleteRequest,
            $0.CollectionActionResponse>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CollectionDeleteRequest.fromBuffer(value),
        ($0.CollectionActionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CollectionByIdRequest,
            $0.CollectionEndpointItemsResponse>(
        'ListEndpoints',
        listEndpoints_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CollectionByIdRequest.fromBuffer(value),
        ($0.CollectionEndpointItemsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CollectionEndpointByIdRequest,
            $0.CollectionEndpointItemResponse>(
        'GetEndpointById',
        getEndpointById_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CollectionEndpointByIdRequest.fromBuffer(value),
        ($0.CollectionEndpointItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CollectionEndpointCreateRequest,
            $0.CollectionEndpointItemResponse>(
        'CreateEndpoint',
        createEndpoint_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CollectionEndpointCreateRequest.fromBuffer(value),
        ($0.CollectionEndpointItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CollectionEndpointUpdateRequest,
            $0.CollectionEndpointItemResponse>(
        'UpdateEndpoint',
        updateEndpoint_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CollectionEndpointUpdateRequest.fromBuffer(value),
        ($0.CollectionEndpointItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CollectionEndpointByIdRequest,
            $0.CollectionActionResponse>(
        'DeleteEndpoint',
        deleteEndpoint_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CollectionEndpointByIdRequest.fromBuffer(value),
        ($0.CollectionActionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CollectionByIdRequest,
            $0.CollectionFolderItemsResponse>(
        'ListFolders',
        listFolders_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CollectionByIdRequest.fromBuffer(value),
        ($0.CollectionFolderItemsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CollectionFolderCreateRequest,
            $0.CollectionFolderItemResponse>(
        'CreateFolder',
        createFolder_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CollectionFolderCreateRequest.fromBuffer(value),
        ($0.CollectionFolderItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CollectionFolderUpdateRequest,
            $0.CollectionFolderItemResponse>(
        'UpdateFolder',
        updateFolder_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CollectionFolderUpdateRequest.fromBuffer(value),
        ($0.CollectionFolderItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CollectionFolderByIdRequest,
            $0.CollectionActionResponse>(
        'DeleteFolder',
        deleteFolder_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CollectionFolderByIdRequest.fromBuffer(value),
        ($0.CollectionActionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CollectionEndpointByIdRequest,
            $0.CollectionExampleItemsResponse>(
        'ListEndpointExamples',
        listEndpointExamples_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CollectionEndpointByIdRequest.fromBuffer(value),
        ($0.CollectionExampleItemsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CollectionExampleCreateRequest,
            $0.CollectionExampleItemResponse>(
        'CreateEndpointExample',
        createEndpointExample_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CollectionExampleCreateRequest.fromBuffer(value),
        ($0.CollectionExampleItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CollectionExampleUpdateRequest,
            $0.CollectionExampleItemResponse>(
        'UpdateEndpointExample',
        updateEndpointExample_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CollectionExampleUpdateRequest.fromBuffer(value),
        ($0.CollectionExampleItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CollectionExampleByIdRequest,
            $0.CollectionActionResponse>(
        'DeleteEndpointExample',
        deleteEndpointExample_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CollectionExampleByIdRequest.fromBuffer(value),
        ($0.CollectionActionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CollectionItemsResponse> list_Pre($grpc.ServiceCall $call,
      $async.Future<$0.CollectionsListRequest> $request) async {
    return list($call, await $request);
  }

  $async.Future<$0.CollectionItemsResponse> list(
      $grpc.ServiceCall call, $0.CollectionsListRequest request);

  $async.Future<$0.CollectionItemResponse> getById_Pre($grpc.ServiceCall $call,
      $async.Future<$0.CollectionByIdRequest> $request) async {
    return getById($call, await $request);
  }

  $async.Future<$0.CollectionItemResponse> getById(
      $grpc.ServiceCall call, $0.CollectionByIdRequest request);

  $async.Future<$0.CollectionItemResponse> create_Pre($grpc.ServiceCall $call,
      $async.Future<$0.CollectionCreateRequest> $request) async {
    return create($call, await $request);
  }

  $async.Future<$0.CollectionItemResponse> create(
      $grpc.ServiceCall call, $0.CollectionCreateRequest request);

  $async.Future<$0.CollectionItemResponse> update_Pre($grpc.ServiceCall $call,
      $async.Future<$0.CollectionUpdateRequest> $request) async {
    return update($call, await $request);
  }

  $async.Future<$0.CollectionItemResponse> update(
      $grpc.ServiceCall call, $0.CollectionUpdateRequest request);

  $async.Future<$0.CollectionActionResponse> delete_Pre($grpc.ServiceCall $call,
      $async.Future<$0.CollectionDeleteRequest> $request) async {
    return delete($call, await $request);
  }

  $async.Future<$0.CollectionActionResponse> delete(
      $grpc.ServiceCall call, $0.CollectionDeleteRequest request);

  $async.Future<$0.CollectionEndpointItemsResponse> listEndpoints_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.CollectionByIdRequest> $request) async {
    return listEndpoints($call, await $request);
  }

  $async.Future<$0.CollectionEndpointItemsResponse> listEndpoints(
      $grpc.ServiceCall call, $0.CollectionByIdRequest request);

  $async.Future<$0.CollectionEndpointItemResponse> getEndpointById_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.CollectionEndpointByIdRequest> $request) async {
    return getEndpointById($call, await $request);
  }

  $async.Future<$0.CollectionEndpointItemResponse> getEndpointById(
      $grpc.ServiceCall call, $0.CollectionEndpointByIdRequest request);

  $async.Future<$0.CollectionEndpointItemResponse> createEndpoint_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.CollectionEndpointCreateRequest> $request) async {
    return createEndpoint($call, await $request);
  }

  $async.Future<$0.CollectionEndpointItemResponse> createEndpoint(
      $grpc.ServiceCall call, $0.CollectionEndpointCreateRequest request);

  $async.Future<$0.CollectionEndpointItemResponse> updateEndpoint_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.CollectionEndpointUpdateRequest> $request) async {
    return updateEndpoint($call, await $request);
  }

  $async.Future<$0.CollectionEndpointItemResponse> updateEndpoint(
      $grpc.ServiceCall call, $0.CollectionEndpointUpdateRequest request);

  $async.Future<$0.CollectionActionResponse> deleteEndpoint_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.CollectionEndpointByIdRequest> $request) async {
    return deleteEndpoint($call, await $request);
  }

  $async.Future<$0.CollectionActionResponse> deleteEndpoint(
      $grpc.ServiceCall call, $0.CollectionEndpointByIdRequest request);

  $async.Future<$0.CollectionFolderItemsResponse> listFolders_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.CollectionByIdRequest> $request) async {
    return listFolders($call, await $request);
  }

  $async.Future<$0.CollectionFolderItemsResponse> listFolders(
      $grpc.ServiceCall call, $0.CollectionByIdRequest request);

  $async.Future<$0.CollectionFolderItemResponse> createFolder_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.CollectionFolderCreateRequest> $request) async {
    return createFolder($call, await $request);
  }

  $async.Future<$0.CollectionFolderItemResponse> createFolder(
      $grpc.ServiceCall call, $0.CollectionFolderCreateRequest request);

  $async.Future<$0.CollectionFolderItemResponse> updateFolder_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.CollectionFolderUpdateRequest> $request) async {
    return updateFolder($call, await $request);
  }

  $async.Future<$0.CollectionFolderItemResponse> updateFolder(
      $grpc.ServiceCall call, $0.CollectionFolderUpdateRequest request);

  $async.Future<$0.CollectionActionResponse> deleteFolder_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.CollectionFolderByIdRequest> $request) async {
    return deleteFolder($call, await $request);
  }

  $async.Future<$0.CollectionActionResponse> deleteFolder(
      $grpc.ServiceCall call, $0.CollectionFolderByIdRequest request);

  $async.Future<$0.CollectionExampleItemsResponse> listEndpointExamples_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.CollectionEndpointByIdRequest> $request) async {
    return listEndpointExamples($call, await $request);
  }

  $async.Future<$0.CollectionExampleItemsResponse> listEndpointExamples(
      $grpc.ServiceCall call, $0.CollectionEndpointByIdRequest request);

  $async.Future<$0.CollectionExampleItemResponse> createEndpointExample_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.CollectionExampleCreateRequest> $request) async {
    return createEndpointExample($call, await $request);
  }

  $async.Future<$0.CollectionExampleItemResponse> createEndpointExample(
      $grpc.ServiceCall call, $0.CollectionExampleCreateRequest request);

  $async.Future<$0.CollectionExampleItemResponse> updateEndpointExample_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.CollectionExampleUpdateRequest> $request) async {
    return updateEndpointExample($call, await $request);
  }

  $async.Future<$0.CollectionExampleItemResponse> updateEndpointExample(
      $grpc.ServiceCall call, $0.CollectionExampleUpdateRequest request);

  $async.Future<$0.CollectionActionResponse> deleteEndpointExample_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.CollectionExampleByIdRequest> $request) async {
    return deleteEndpointExample($call, await $request);
  }

  $async.Future<$0.CollectionActionResponse> deleteEndpointExample(
      $grpc.ServiceCall call, $0.CollectionExampleByIdRequest request);
}
