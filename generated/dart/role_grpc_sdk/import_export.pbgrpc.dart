// This is a generated file - do not edit.
//
// Generated from import_export.proto.

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

import 'import_export.pb.dart' as $0;

export 'import_export.pb.dart';

@$pb.GrpcServiceName('role.v1.ImportExportService')
class ImportExportServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  ImportExportServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.ImportExportJobsResponse> listJobs(
    $0.ImportExportWorkspaceRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$listJobs, request, options: options);
  }

  $grpc.ResponseFuture<$0.ImportExportJobResponse> getJobById(
    $0.ImportExportJobByIdRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getJobById, request, options: options);
  }

  $grpc.ResponseFuture<$0.ImportExportJobResponse> createExportJob(
    $0.CreateExportJobRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createExportJob, request, options: options);
  }

  $grpc.ResponseFuture<$0.ImportExportJobResponse> createImportJob(
    $0.CreateImportJobRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createImportJob, request, options: options);
  }

  // method descriptors

  static final _$listJobs = $grpc.ClientMethod<$0.ImportExportWorkspaceRequest,
          $0.ImportExportJobsResponse>(
      '/role.v1.ImportExportService/ListJobs',
      ($0.ImportExportWorkspaceRequest value) => value.writeToBuffer(),
      $0.ImportExportJobsResponse.fromBuffer);
  static final _$getJobById = $grpc.ClientMethod<$0.ImportExportJobByIdRequest,
          $0.ImportExportJobResponse>(
      '/role.v1.ImportExportService/GetJobById',
      ($0.ImportExportJobByIdRequest value) => value.writeToBuffer(),
      $0.ImportExportJobResponse.fromBuffer);
  static final _$createExportJob =
      $grpc.ClientMethod<$0.CreateExportJobRequest, $0.ImportExportJobResponse>(
          '/role.v1.ImportExportService/CreateExportJob',
          ($0.CreateExportJobRequest value) => value.writeToBuffer(),
          $0.ImportExportJobResponse.fromBuffer);
  static final _$createImportJob =
      $grpc.ClientMethod<$0.CreateImportJobRequest, $0.ImportExportJobResponse>(
          '/role.v1.ImportExportService/CreateImportJob',
          ($0.CreateImportJobRequest value) => value.writeToBuffer(),
          $0.ImportExportJobResponse.fromBuffer);
}

@$pb.GrpcServiceName('role.v1.ImportExportService')
abstract class ImportExportServiceBase extends $grpc.Service {
  $core.String get $name => 'role.v1.ImportExportService';

  ImportExportServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ImportExportWorkspaceRequest,
            $0.ImportExportJobsResponse>(
        'ListJobs',
        listJobs_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ImportExportWorkspaceRequest.fromBuffer(value),
        ($0.ImportExportJobsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ImportExportJobByIdRequest,
            $0.ImportExportJobResponse>(
        'GetJobById',
        getJobById_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ImportExportJobByIdRequest.fromBuffer(value),
        ($0.ImportExportJobResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateExportJobRequest,
            $0.ImportExportJobResponse>(
        'CreateExportJob',
        createExportJob_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateExportJobRequest.fromBuffer(value),
        ($0.ImportExportJobResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateImportJobRequest,
            $0.ImportExportJobResponse>(
        'CreateImportJob',
        createImportJob_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateImportJobRequest.fromBuffer(value),
        ($0.ImportExportJobResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ImportExportJobsResponse> listJobs_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.ImportExportWorkspaceRequest> $request) async {
    return listJobs($call, await $request);
  }

  $async.Future<$0.ImportExportJobsResponse> listJobs(
      $grpc.ServiceCall call, $0.ImportExportWorkspaceRequest request);

  $async.Future<$0.ImportExportJobResponse> getJobById_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.ImportExportJobByIdRequest> $request) async {
    return getJobById($call, await $request);
  }

  $async.Future<$0.ImportExportJobResponse> getJobById(
      $grpc.ServiceCall call, $0.ImportExportJobByIdRequest request);

  $async.Future<$0.ImportExportJobResponse> createExportJob_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.CreateExportJobRequest> $request) async {
    return createExportJob($call, await $request);
  }

  $async.Future<$0.ImportExportJobResponse> createExportJob(
      $grpc.ServiceCall call, $0.CreateExportJobRequest request);

  $async.Future<$0.ImportExportJobResponse> createImportJob_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.CreateImportJobRequest> $request) async {
    return createImportJob($call, await $request);
  }

  $async.Future<$0.ImportExportJobResponse> createImportJob(
      $grpc.ServiceCall call, $0.CreateImportJobRequest request);
}
