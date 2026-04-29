// This is a generated file - do not edit.
//
// Generated from import_export.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ImportExportWorkspaceRequest extends $pb.GeneratedMessage {
  factory ImportExportWorkspaceRequest({
    $fixnum.Int64? workspaceId,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    return result;
  }

  ImportExportWorkspaceRequest._();

  factory ImportExportWorkspaceRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ImportExportWorkspaceRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ImportExportWorkspaceRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ImportExportWorkspaceRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ImportExportWorkspaceRequest copyWith(
          void Function(ImportExportWorkspaceRequest) updates) =>
      super.copyWith(
              (message) => updates(message as ImportExportWorkspaceRequest))
          as ImportExportWorkspaceRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImportExportWorkspaceRequest create() =>
      ImportExportWorkspaceRequest._();
  @$core.override
  ImportExportWorkspaceRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ImportExportWorkspaceRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ImportExportWorkspaceRequest>(create);
  static ImportExportWorkspaceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get workspaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set workspaceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWorkspaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkspaceId() => $_clearField(1);
}

class ImportExportJobByIdRequest extends $pb.GeneratedMessage {
  factory ImportExportJobByIdRequest({
    $fixnum.Int64? workspaceId,
    $fixnum.Int64? jobId,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    if (jobId != null) result.jobId = jobId;
    return result;
  }

  ImportExportJobByIdRequest._();

  factory ImportExportJobByIdRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ImportExportJobByIdRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ImportExportJobByIdRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..aInt64(2, _omitFieldNames ? '' : 'jobId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ImportExportJobByIdRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ImportExportJobByIdRequest copyWith(
          void Function(ImportExportJobByIdRequest) updates) =>
      super.copyWith(
              (message) => updates(message as ImportExportJobByIdRequest))
          as ImportExportJobByIdRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImportExportJobByIdRequest create() => ImportExportJobByIdRequest._();
  @$core.override
  ImportExportJobByIdRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ImportExportJobByIdRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ImportExportJobByIdRequest>(create);
  static ImportExportJobByIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get workspaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set workspaceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWorkspaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkspaceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get jobId => $_getI64(1);
  @$pb.TagNumber(2)
  set jobId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasJobId() => $_has(1);
  @$pb.TagNumber(2)
  void clearJobId() => $_clearField(2);
}

class CreateExportJobRequest extends $pb.GeneratedMessage {
  factory CreateExportJobRequest({
    $fixnum.Int64? workspaceId,
    $core.String? payloadJson,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    if (payloadJson != null) result.payloadJson = payloadJson;
    return result;
  }

  CreateExportJobRequest._();

  factory CreateExportJobRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateExportJobRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateExportJobRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..aOS(2, _omitFieldNames ? '' : 'payloadJson')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateExportJobRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateExportJobRequest copyWith(
          void Function(CreateExportJobRequest) updates) =>
      super.copyWith((message) => updates(message as CreateExportJobRequest))
          as CreateExportJobRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateExportJobRequest create() => CreateExportJobRequest._();
  @$core.override
  CreateExportJobRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateExportJobRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateExportJobRequest>(create);
  static CreateExportJobRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get workspaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set workspaceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWorkspaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkspaceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get payloadJson => $_getSZ(1);
  @$pb.TagNumber(2)
  set payloadJson($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPayloadJson() => $_has(1);
  @$pb.TagNumber(2)
  void clearPayloadJson() => $_clearField(2);
}

class CreateImportJobRequest extends $pb.GeneratedMessage {
  factory CreateImportJobRequest({
    $fixnum.Int64? workspaceId,
    $core.String? payloadJson,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    if (payloadJson != null) result.payloadJson = payloadJson;
    return result;
  }

  CreateImportJobRequest._();

  factory CreateImportJobRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateImportJobRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateImportJobRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..aOS(2, _omitFieldNames ? '' : 'payloadJson')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateImportJobRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateImportJobRequest copyWith(
          void Function(CreateImportJobRequest) updates) =>
      super.copyWith((message) => updates(message as CreateImportJobRequest))
          as CreateImportJobRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateImportJobRequest create() => CreateImportJobRequest._();
  @$core.override
  CreateImportJobRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateImportJobRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateImportJobRequest>(create);
  static CreateImportJobRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get workspaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set workspaceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWorkspaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkspaceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get payloadJson => $_getSZ(1);
  @$pb.TagNumber(2)
  set payloadJson($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPayloadJson() => $_has(1);
  @$pb.TagNumber(2)
  void clearPayloadJson() => $_clearField(2);
}

class ImportExportJobResponse extends $pb.GeneratedMessage {
  factory ImportExportJobResponse({
    $core.String? jobJson,
  }) {
    final result = create();
    if (jobJson != null) result.jobJson = jobJson;
    return result;
  }

  ImportExportJobResponse._();

  factory ImportExportJobResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ImportExportJobResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ImportExportJobResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'jobJson')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ImportExportJobResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ImportExportJobResponse copyWith(
          void Function(ImportExportJobResponse) updates) =>
      super.copyWith((message) => updates(message as ImportExportJobResponse))
          as ImportExportJobResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImportExportJobResponse create() => ImportExportJobResponse._();
  @$core.override
  ImportExportJobResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ImportExportJobResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ImportExportJobResponse>(create);
  static ImportExportJobResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get jobJson => $_getSZ(0);
  @$pb.TagNumber(1)
  set jobJson($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasJobJson() => $_has(0);
  @$pb.TagNumber(1)
  void clearJobJson() => $_clearField(1);
}

class ImportExportJobsResponse extends $pb.GeneratedMessage {
  factory ImportExportJobsResponse({
    $core.Iterable<$core.String>? jobsJson,
  }) {
    final result = create();
    if (jobsJson != null) result.jobsJson.addAll(jobsJson);
    return result;
  }

  ImportExportJobsResponse._();

  factory ImportExportJobsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ImportExportJobsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ImportExportJobsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'jobsJson')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ImportExportJobsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ImportExportJobsResponse copyWith(
          void Function(ImportExportJobsResponse) updates) =>
      super.copyWith((message) => updates(message as ImportExportJobsResponse))
          as ImportExportJobsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImportExportJobsResponse create() => ImportExportJobsResponse._();
  @$core.override
  ImportExportJobsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ImportExportJobsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ImportExportJobsResponse>(create);
  static ImportExportJobsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get jobsJson => $_getList(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
