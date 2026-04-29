// This is a generated file - do not edit.
//
// Generated from environments.proto.

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

import 'environments.pb.dart' as $0;

export 'environments.pb.dart';

@$pb.GrpcServiceName('role.v1.EnvironmentsService')
class EnvironmentsServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  EnvironmentsServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.EnvironmentItemsResponse> list(
    $0.EnvironmentListRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$0.EnvironmentItemResponse> getById(
    $0.EnvironmentByIdRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getById, request, options: options);
  }

  $grpc.ResponseFuture<$0.EnvironmentItemResponse> create(
    $0.EnvironmentCreateRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.EnvironmentItemResponse> update(
    $0.EnvironmentUpdateRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$0.EnvironmentActionResponse> delete(
    $0.EnvironmentByIdRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$0.EnvironmentVariableItemsResponse> listVariables(
    $0.EnvironmentByIdRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$listVariables, request, options: options);
  }

  $grpc.ResponseFuture<$0.EnvironmentVariableItemResponse> getVariableById(
    $0.EnvironmentVariableByIdRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getVariableById, request, options: options);
  }

  $grpc.ResponseFuture<$0.EnvironmentVariableItemResponse> createVariable(
    $0.EnvironmentVariableCreateRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createVariable, request, options: options);
  }

  $grpc.ResponseFuture<$0.EnvironmentVariableItemResponse> updateVariable(
    $0.EnvironmentVariableUpdateRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateVariable, request, options: options);
  }

  $grpc.ResponseFuture<$0.EnvironmentActionResponse> deleteVariable(
    $0.EnvironmentVariableByIdRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteVariable, request, options: options);
  }

  // method descriptors

  static final _$list = $grpc.ClientMethod<$0.EnvironmentListRequest,
          $0.EnvironmentItemsResponse>(
      '/role.v1.EnvironmentsService/List',
      ($0.EnvironmentListRequest value) => value.writeToBuffer(),
      $0.EnvironmentItemsResponse.fromBuffer);
  static final _$getById =
      $grpc.ClientMethod<$0.EnvironmentByIdRequest, $0.EnvironmentItemResponse>(
          '/role.v1.EnvironmentsService/GetById',
          ($0.EnvironmentByIdRequest value) => value.writeToBuffer(),
          $0.EnvironmentItemResponse.fromBuffer);
  static final _$create = $grpc.ClientMethod<$0.EnvironmentCreateRequest,
          $0.EnvironmentItemResponse>(
      '/role.v1.EnvironmentsService/Create',
      ($0.EnvironmentCreateRequest value) => value.writeToBuffer(),
      $0.EnvironmentItemResponse.fromBuffer);
  static final _$update = $grpc.ClientMethod<$0.EnvironmentUpdateRequest,
          $0.EnvironmentItemResponse>(
      '/role.v1.EnvironmentsService/Update',
      ($0.EnvironmentUpdateRequest value) => value.writeToBuffer(),
      $0.EnvironmentItemResponse.fromBuffer);
  static final _$delete = $grpc.ClientMethod<$0.EnvironmentByIdRequest,
          $0.EnvironmentActionResponse>(
      '/role.v1.EnvironmentsService/Delete',
      ($0.EnvironmentByIdRequest value) => value.writeToBuffer(),
      $0.EnvironmentActionResponse.fromBuffer);
  static final _$listVariables = $grpc.ClientMethod<$0.EnvironmentByIdRequest,
          $0.EnvironmentVariableItemsResponse>(
      '/role.v1.EnvironmentsService/ListVariables',
      ($0.EnvironmentByIdRequest value) => value.writeToBuffer(),
      $0.EnvironmentVariableItemsResponse.fromBuffer);
  static final _$getVariableById = $grpc.ClientMethod<
          $0.EnvironmentVariableByIdRequest,
          $0.EnvironmentVariableItemResponse>(
      '/role.v1.EnvironmentsService/GetVariableById',
      ($0.EnvironmentVariableByIdRequest value) => value.writeToBuffer(),
      $0.EnvironmentVariableItemResponse.fromBuffer);
  static final _$createVariable = $grpc.ClientMethod<
          $0.EnvironmentVariableCreateRequest,
          $0.EnvironmentVariableItemResponse>(
      '/role.v1.EnvironmentsService/CreateVariable',
      ($0.EnvironmentVariableCreateRequest value) => value.writeToBuffer(),
      $0.EnvironmentVariableItemResponse.fromBuffer);
  static final _$updateVariable = $grpc.ClientMethod<
          $0.EnvironmentVariableUpdateRequest,
          $0.EnvironmentVariableItemResponse>(
      '/role.v1.EnvironmentsService/UpdateVariable',
      ($0.EnvironmentVariableUpdateRequest value) => value.writeToBuffer(),
      $0.EnvironmentVariableItemResponse.fromBuffer);
  static final _$deleteVariable = $grpc.ClientMethod<
          $0.EnvironmentVariableByIdRequest, $0.EnvironmentActionResponse>(
      '/role.v1.EnvironmentsService/DeleteVariable',
      ($0.EnvironmentVariableByIdRequest value) => value.writeToBuffer(),
      $0.EnvironmentActionResponse.fromBuffer);
}

@$pb.GrpcServiceName('role.v1.EnvironmentsService')
abstract class EnvironmentsServiceBase extends $grpc.Service {
  $core.String get $name => 'role.v1.EnvironmentsService';

  EnvironmentsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.EnvironmentListRequest,
            $0.EnvironmentItemsResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.EnvironmentListRequest.fromBuffer(value),
        ($0.EnvironmentItemsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EnvironmentByIdRequest,
            $0.EnvironmentItemResponse>(
        'GetById',
        getById_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.EnvironmentByIdRequest.fromBuffer(value),
        ($0.EnvironmentItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EnvironmentCreateRequest,
            $0.EnvironmentItemResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.EnvironmentCreateRequest.fromBuffer(value),
        ($0.EnvironmentItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EnvironmentUpdateRequest,
            $0.EnvironmentItemResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.EnvironmentUpdateRequest.fromBuffer(value),
        ($0.EnvironmentItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EnvironmentByIdRequest,
            $0.EnvironmentActionResponse>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.EnvironmentByIdRequest.fromBuffer(value),
        ($0.EnvironmentActionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EnvironmentByIdRequest,
            $0.EnvironmentVariableItemsResponse>(
        'ListVariables',
        listVariables_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.EnvironmentByIdRequest.fromBuffer(value),
        ($0.EnvironmentVariableItemsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EnvironmentVariableByIdRequest,
            $0.EnvironmentVariableItemResponse>(
        'GetVariableById',
        getVariableById_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.EnvironmentVariableByIdRequest.fromBuffer(value),
        ($0.EnvironmentVariableItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EnvironmentVariableCreateRequest,
            $0.EnvironmentVariableItemResponse>(
        'CreateVariable',
        createVariable_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.EnvironmentVariableCreateRequest.fromBuffer(value),
        ($0.EnvironmentVariableItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EnvironmentVariableUpdateRequest,
            $0.EnvironmentVariableItemResponse>(
        'UpdateVariable',
        updateVariable_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.EnvironmentVariableUpdateRequest.fromBuffer(value),
        ($0.EnvironmentVariableItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EnvironmentVariableByIdRequest,
            $0.EnvironmentActionResponse>(
        'DeleteVariable',
        deleteVariable_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.EnvironmentVariableByIdRequest.fromBuffer(value),
        ($0.EnvironmentActionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.EnvironmentItemsResponse> list_Pre($grpc.ServiceCall $call,
      $async.Future<$0.EnvironmentListRequest> $request) async {
    return list($call, await $request);
  }

  $async.Future<$0.EnvironmentItemsResponse> list(
      $grpc.ServiceCall call, $0.EnvironmentListRequest request);

  $async.Future<$0.EnvironmentItemResponse> getById_Pre($grpc.ServiceCall $call,
      $async.Future<$0.EnvironmentByIdRequest> $request) async {
    return getById($call, await $request);
  }

  $async.Future<$0.EnvironmentItemResponse> getById(
      $grpc.ServiceCall call, $0.EnvironmentByIdRequest request);

  $async.Future<$0.EnvironmentItemResponse> create_Pre($grpc.ServiceCall $call,
      $async.Future<$0.EnvironmentCreateRequest> $request) async {
    return create($call, await $request);
  }

  $async.Future<$0.EnvironmentItemResponse> create(
      $grpc.ServiceCall call, $0.EnvironmentCreateRequest request);

  $async.Future<$0.EnvironmentItemResponse> update_Pre($grpc.ServiceCall $call,
      $async.Future<$0.EnvironmentUpdateRequest> $request) async {
    return update($call, await $request);
  }

  $async.Future<$0.EnvironmentItemResponse> update(
      $grpc.ServiceCall call, $0.EnvironmentUpdateRequest request);

  $async.Future<$0.EnvironmentActionResponse> delete_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.EnvironmentByIdRequest> $request) async {
    return delete($call, await $request);
  }

  $async.Future<$0.EnvironmentActionResponse> delete(
      $grpc.ServiceCall call, $0.EnvironmentByIdRequest request);

  $async.Future<$0.EnvironmentVariableItemsResponse> listVariables_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.EnvironmentByIdRequest> $request) async {
    return listVariables($call, await $request);
  }

  $async.Future<$0.EnvironmentVariableItemsResponse> listVariables(
      $grpc.ServiceCall call, $0.EnvironmentByIdRequest request);

  $async.Future<$0.EnvironmentVariableItemResponse> getVariableById_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.EnvironmentVariableByIdRequest> $request) async {
    return getVariableById($call, await $request);
  }

  $async.Future<$0.EnvironmentVariableItemResponse> getVariableById(
      $grpc.ServiceCall call, $0.EnvironmentVariableByIdRequest request);

  $async.Future<$0.EnvironmentVariableItemResponse> createVariable_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.EnvironmentVariableCreateRequest> $request) async {
    return createVariable($call, await $request);
  }

  $async.Future<$0.EnvironmentVariableItemResponse> createVariable(
      $grpc.ServiceCall call, $0.EnvironmentVariableCreateRequest request);

  $async.Future<$0.EnvironmentVariableItemResponse> updateVariable_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.EnvironmentVariableUpdateRequest> $request) async {
    return updateVariable($call, await $request);
  }

  $async.Future<$0.EnvironmentVariableItemResponse> updateVariable(
      $grpc.ServiceCall call, $0.EnvironmentVariableUpdateRequest request);

  $async.Future<$0.EnvironmentActionResponse> deleteVariable_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.EnvironmentVariableByIdRequest> $request) async {
    return deleteVariable($call, await $request);
  }

  $async.Future<$0.EnvironmentActionResponse> deleteVariable(
      $grpc.ServiceCall call, $0.EnvironmentVariableByIdRequest request);
}
