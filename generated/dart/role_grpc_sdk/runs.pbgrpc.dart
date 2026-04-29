// This is a generated file - do not edit.
//
// Generated from runs.proto.

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

import 'runs.pb.dart' as $0;

export 'runs.pb.dart';

@$pb.GrpcServiceName('role.v1.RunsService')
class RunsServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  RunsServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.RunResponse> create(
    $0.CreateRunRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.RunResponse> getById(
    $0.RunByIdRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getById, request, options: options);
  }

  $grpc.ResponseFuture<$0.RunResponse> cancel(
    $0.RunByIdRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$cancel, request, options: options);
  }

  // method descriptors

  static final _$create =
      $grpc.ClientMethod<$0.CreateRunRequest, $0.RunResponse>(
          '/role.v1.RunsService/Create',
          ($0.CreateRunRequest value) => value.writeToBuffer(),
          $0.RunResponse.fromBuffer);
  static final _$getById =
      $grpc.ClientMethod<$0.RunByIdRequest, $0.RunResponse>(
          '/role.v1.RunsService/GetById',
          ($0.RunByIdRequest value) => value.writeToBuffer(),
          $0.RunResponse.fromBuffer);
  static final _$cancel = $grpc.ClientMethod<$0.RunByIdRequest, $0.RunResponse>(
      '/role.v1.RunsService/Cancel',
      ($0.RunByIdRequest value) => value.writeToBuffer(),
      $0.RunResponse.fromBuffer);
}

@$pb.GrpcServiceName('role.v1.RunsService')
abstract class RunsServiceBase extends $grpc.Service {
  $core.String get $name => 'role.v1.RunsService';

  RunsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateRunRequest, $0.RunResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateRunRequest.fromBuffer(value),
        ($0.RunResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RunByIdRequest, $0.RunResponse>(
        'GetById',
        getById_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RunByIdRequest.fromBuffer(value),
        ($0.RunResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RunByIdRequest, $0.RunResponse>(
        'Cancel',
        cancel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RunByIdRequest.fromBuffer(value),
        ($0.RunResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.RunResponse> create_Pre($grpc.ServiceCall $call,
      $async.Future<$0.CreateRunRequest> $request) async {
    return create($call, await $request);
  }

  $async.Future<$0.RunResponse> create(
      $grpc.ServiceCall call, $0.CreateRunRequest request);

  $async.Future<$0.RunResponse> getById_Pre($grpc.ServiceCall $call,
      $async.Future<$0.RunByIdRequest> $request) async {
    return getById($call, await $request);
  }

  $async.Future<$0.RunResponse> getById(
      $grpc.ServiceCall call, $0.RunByIdRequest request);

  $async.Future<$0.RunResponse> cancel_Pre($grpc.ServiceCall $call,
      $async.Future<$0.RunByIdRequest> $request) async {
    return cancel($call, await $request);
  }

  $async.Future<$0.RunResponse> cancel(
      $grpc.ServiceCall call, $0.RunByIdRequest request);
}
