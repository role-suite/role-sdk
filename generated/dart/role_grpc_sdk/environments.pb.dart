// This is a generated file - do not edit.
//
// Generated from environments.proto.

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

class EnvironmentItem extends $pb.GeneratedMessage {
  factory EnvironmentItem({
    $fixnum.Int64? id,
    $fixnum.Int64? workspaceId,
    $core.String? name,
    $fixnum.Int64? createdByUserId,
    $core.String? createdAt,
    $core.String? updatedAt,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (workspaceId != null) result.workspaceId = workspaceId;
    if (name != null) result.name = name;
    if (createdByUserId != null) result.createdByUserId = createdByUserId;
    if (createdAt != null) result.createdAt = createdAt;
    if (updatedAt != null) result.updatedAt = updatedAt;
    return result;
  }

  EnvironmentItem._();

  factory EnvironmentItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnvironmentItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnvironmentItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'workspaceId')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aInt64(4, _omitFieldNames ? '' : 'createdByUserId')
    ..aOS(5, _omitFieldNames ? '' : 'createdAt')
    ..aOS(6, _omitFieldNames ? '' : 'updatedAt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnvironmentItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnvironmentItem copyWith(void Function(EnvironmentItem) updates) =>
      super.copyWith((message) => updates(message as EnvironmentItem))
          as EnvironmentItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnvironmentItem create() => EnvironmentItem._();
  @$core.override
  EnvironmentItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnvironmentItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnvironmentItem>(create);
  static EnvironmentItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get workspaceId => $_getI64(1);
  @$pb.TagNumber(2)
  set workspaceId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasWorkspaceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearWorkspaceId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get createdByUserId => $_getI64(3);
  @$pb.TagNumber(4)
  set createdByUserId($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCreatedByUserId() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreatedByUserId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get createdAt => $_getSZ(4);
  @$pb.TagNumber(5)
  set createdAt($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get updatedAt => $_getSZ(5);
  @$pb.TagNumber(6)
  set updatedAt($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasUpdatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdatedAt() => $_clearField(6);
}

class EnvironmentVariableItem extends $pb.GeneratedMessage {
  factory EnvironmentVariableItem({
    $fixnum.Int64? id,
    $fixnum.Int64? environmentId,
    $core.String? key,
    $core.String? value,
    $core.bool? enabled,
    $core.bool? isSecret,
    $core.int? position,
    $fixnum.Int64? createdByUserId,
    $core.String? createdAt,
    $core.String? updatedAt,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (environmentId != null) result.environmentId = environmentId;
    if (key != null) result.key = key;
    if (value != null) result.value = value;
    if (enabled != null) result.enabled = enabled;
    if (isSecret != null) result.isSecret = isSecret;
    if (position != null) result.position = position;
    if (createdByUserId != null) result.createdByUserId = createdByUserId;
    if (createdAt != null) result.createdAt = createdAt;
    if (updatedAt != null) result.updatedAt = updatedAt;
    return result;
  }

  EnvironmentVariableItem._();

  factory EnvironmentVariableItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnvironmentVariableItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnvironmentVariableItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'environmentId')
    ..aOS(3, _omitFieldNames ? '' : 'key')
    ..aOS(4, _omitFieldNames ? '' : 'value')
    ..aOB(5, _omitFieldNames ? '' : 'enabled')
    ..aOB(6, _omitFieldNames ? '' : 'isSecret')
    ..aI(7, _omitFieldNames ? '' : 'position')
    ..aInt64(8, _omitFieldNames ? '' : 'createdByUserId')
    ..aOS(9, _omitFieldNames ? '' : 'createdAt')
    ..aOS(10, _omitFieldNames ? '' : 'updatedAt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnvironmentVariableItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnvironmentVariableItem copyWith(
          void Function(EnvironmentVariableItem) updates) =>
      super.copyWith((message) => updates(message as EnvironmentVariableItem))
          as EnvironmentVariableItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnvironmentVariableItem create() => EnvironmentVariableItem._();
  @$core.override
  EnvironmentVariableItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnvironmentVariableItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnvironmentVariableItem>(create);
  static EnvironmentVariableItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get environmentId => $_getI64(1);
  @$pb.TagNumber(2)
  set environmentId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEnvironmentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnvironmentId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get key => $_getSZ(2);
  @$pb.TagNumber(3)
  set key($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearKey() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get value => $_getSZ(3);
  @$pb.TagNumber(4)
  set value($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearValue() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get enabled => $_getBF(4);
  @$pb.TagNumber(5)
  set enabled($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasEnabled() => $_has(4);
  @$pb.TagNumber(5)
  void clearEnabled() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isSecret => $_getBF(5);
  @$pb.TagNumber(6)
  set isSecret($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasIsSecret() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsSecret() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get position => $_getIZ(6);
  @$pb.TagNumber(7)
  set position($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasPosition() => $_has(6);
  @$pb.TagNumber(7)
  void clearPosition() => $_clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get createdByUserId => $_getI64(7);
  @$pb.TagNumber(8)
  set createdByUserId($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasCreatedByUserId() => $_has(7);
  @$pb.TagNumber(8)
  void clearCreatedByUserId() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get createdAt => $_getSZ(8);
  @$pb.TagNumber(9)
  set createdAt($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasCreatedAt() => $_has(8);
  @$pb.TagNumber(9)
  void clearCreatedAt() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get updatedAt => $_getSZ(9);
  @$pb.TagNumber(10)
  set updatedAt($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasUpdatedAt() => $_has(9);
  @$pb.TagNumber(10)
  void clearUpdatedAt() => $_clearField(10);
}

class EnvironmentListRequest extends $pb.GeneratedMessage {
  factory EnvironmentListRequest({
    $fixnum.Int64? workspaceId,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    return result;
  }

  EnvironmentListRequest._();

  factory EnvironmentListRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnvironmentListRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnvironmentListRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnvironmentListRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnvironmentListRequest copyWith(
          void Function(EnvironmentListRequest) updates) =>
      super.copyWith((message) => updates(message as EnvironmentListRequest))
          as EnvironmentListRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnvironmentListRequest create() => EnvironmentListRequest._();
  @$core.override
  EnvironmentListRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnvironmentListRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnvironmentListRequest>(create);
  static EnvironmentListRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get workspaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set workspaceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWorkspaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkspaceId() => $_clearField(1);
}

class EnvironmentByIdRequest extends $pb.GeneratedMessage {
  factory EnvironmentByIdRequest({
    $fixnum.Int64? workspaceId,
    $fixnum.Int64? environmentId,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    if (environmentId != null) result.environmentId = environmentId;
    return result;
  }

  EnvironmentByIdRequest._();

  factory EnvironmentByIdRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnvironmentByIdRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnvironmentByIdRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..aInt64(2, _omitFieldNames ? '' : 'environmentId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnvironmentByIdRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnvironmentByIdRequest copyWith(
          void Function(EnvironmentByIdRequest) updates) =>
      super.copyWith((message) => updates(message as EnvironmentByIdRequest))
          as EnvironmentByIdRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnvironmentByIdRequest create() => EnvironmentByIdRequest._();
  @$core.override
  EnvironmentByIdRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnvironmentByIdRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnvironmentByIdRequest>(create);
  static EnvironmentByIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get workspaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set workspaceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWorkspaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkspaceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get environmentId => $_getI64(1);
  @$pb.TagNumber(2)
  set environmentId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEnvironmentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnvironmentId() => $_clearField(2);
}

class EnvironmentVariableByIdRequest extends $pb.GeneratedMessage {
  factory EnvironmentVariableByIdRequest({
    $fixnum.Int64? workspaceId,
    $fixnum.Int64? environmentId,
    $fixnum.Int64? variableId,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    if (environmentId != null) result.environmentId = environmentId;
    if (variableId != null) result.variableId = variableId;
    return result;
  }

  EnvironmentVariableByIdRequest._();

  factory EnvironmentVariableByIdRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnvironmentVariableByIdRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnvironmentVariableByIdRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..aInt64(2, _omitFieldNames ? '' : 'environmentId')
    ..aInt64(3, _omitFieldNames ? '' : 'variableId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnvironmentVariableByIdRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnvironmentVariableByIdRequest copyWith(
          void Function(EnvironmentVariableByIdRequest) updates) =>
      super.copyWith(
              (message) => updates(message as EnvironmentVariableByIdRequest))
          as EnvironmentVariableByIdRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnvironmentVariableByIdRequest create() =>
      EnvironmentVariableByIdRequest._();
  @$core.override
  EnvironmentVariableByIdRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnvironmentVariableByIdRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnvironmentVariableByIdRequest>(create);
  static EnvironmentVariableByIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get workspaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set workspaceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWorkspaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkspaceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get environmentId => $_getI64(1);
  @$pb.TagNumber(2)
  set environmentId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEnvironmentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnvironmentId() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get variableId => $_getI64(2);
  @$pb.TagNumber(3)
  set variableId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVariableId() => $_has(2);
  @$pb.TagNumber(3)
  void clearVariableId() => $_clearField(3);
}

class EnvironmentCreateRequest extends $pb.GeneratedMessage {
  factory EnvironmentCreateRequest({
    $fixnum.Int64? workspaceId,
    $core.String? name,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    if (name != null) result.name = name;
    return result;
  }

  EnvironmentCreateRequest._();

  factory EnvironmentCreateRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnvironmentCreateRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnvironmentCreateRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnvironmentCreateRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnvironmentCreateRequest copyWith(
          void Function(EnvironmentCreateRequest) updates) =>
      super.copyWith((message) => updates(message as EnvironmentCreateRequest))
          as EnvironmentCreateRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnvironmentCreateRequest create() => EnvironmentCreateRequest._();
  @$core.override
  EnvironmentCreateRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnvironmentCreateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnvironmentCreateRequest>(create);
  static EnvironmentCreateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get workspaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set workspaceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWorkspaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkspaceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);
}

class EnvironmentUpdateRequest extends $pb.GeneratedMessage {
  factory EnvironmentUpdateRequest({
    $fixnum.Int64? workspaceId,
    $fixnum.Int64? environmentId,
    $core.String? name,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    if (environmentId != null) result.environmentId = environmentId;
    if (name != null) result.name = name;
    return result;
  }

  EnvironmentUpdateRequest._();

  factory EnvironmentUpdateRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnvironmentUpdateRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnvironmentUpdateRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..aInt64(2, _omitFieldNames ? '' : 'environmentId')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnvironmentUpdateRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnvironmentUpdateRequest copyWith(
          void Function(EnvironmentUpdateRequest) updates) =>
      super.copyWith((message) => updates(message as EnvironmentUpdateRequest))
          as EnvironmentUpdateRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnvironmentUpdateRequest create() => EnvironmentUpdateRequest._();
  @$core.override
  EnvironmentUpdateRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnvironmentUpdateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnvironmentUpdateRequest>(create);
  static EnvironmentUpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get workspaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set workspaceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWorkspaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkspaceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get environmentId => $_getI64(1);
  @$pb.TagNumber(2)
  set environmentId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEnvironmentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnvironmentId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);
}

class EnvironmentVariableCreateRequest extends $pb.GeneratedMessage {
  factory EnvironmentVariableCreateRequest({
    $fixnum.Int64? workspaceId,
    $fixnum.Int64? environmentId,
    $core.String? key,
    $core.String? value,
    $core.bool? enabled,
    $core.bool? isSecret,
    $core.int? position,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    if (environmentId != null) result.environmentId = environmentId;
    if (key != null) result.key = key;
    if (value != null) result.value = value;
    if (enabled != null) result.enabled = enabled;
    if (isSecret != null) result.isSecret = isSecret;
    if (position != null) result.position = position;
    return result;
  }

  EnvironmentVariableCreateRequest._();

  factory EnvironmentVariableCreateRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnvironmentVariableCreateRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnvironmentVariableCreateRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..aInt64(2, _omitFieldNames ? '' : 'environmentId')
    ..aOS(3, _omitFieldNames ? '' : 'key')
    ..aOS(4, _omitFieldNames ? '' : 'value')
    ..aOB(5, _omitFieldNames ? '' : 'enabled')
    ..aOB(6, _omitFieldNames ? '' : 'isSecret')
    ..aI(7, _omitFieldNames ? '' : 'position')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnvironmentVariableCreateRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnvironmentVariableCreateRequest copyWith(
          void Function(EnvironmentVariableCreateRequest) updates) =>
      super.copyWith(
              (message) => updates(message as EnvironmentVariableCreateRequest))
          as EnvironmentVariableCreateRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnvironmentVariableCreateRequest create() =>
      EnvironmentVariableCreateRequest._();
  @$core.override
  EnvironmentVariableCreateRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnvironmentVariableCreateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnvironmentVariableCreateRequest>(
          create);
  static EnvironmentVariableCreateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get workspaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set workspaceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWorkspaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkspaceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get environmentId => $_getI64(1);
  @$pb.TagNumber(2)
  set environmentId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEnvironmentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnvironmentId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get key => $_getSZ(2);
  @$pb.TagNumber(3)
  set key($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearKey() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get value => $_getSZ(3);
  @$pb.TagNumber(4)
  set value($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearValue() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get enabled => $_getBF(4);
  @$pb.TagNumber(5)
  set enabled($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasEnabled() => $_has(4);
  @$pb.TagNumber(5)
  void clearEnabled() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isSecret => $_getBF(5);
  @$pb.TagNumber(6)
  set isSecret($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasIsSecret() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsSecret() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get position => $_getIZ(6);
  @$pb.TagNumber(7)
  set position($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasPosition() => $_has(6);
  @$pb.TagNumber(7)
  void clearPosition() => $_clearField(7);
}

class EnvironmentVariableUpdateRequest extends $pb.GeneratedMessage {
  factory EnvironmentVariableUpdateRequest({
    $fixnum.Int64? workspaceId,
    $fixnum.Int64? environmentId,
    $fixnum.Int64? variableId,
    $core.String? key,
    $core.String? value,
    $core.bool? enabled,
    $core.bool? isSecret,
    $core.int? position,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    if (environmentId != null) result.environmentId = environmentId;
    if (variableId != null) result.variableId = variableId;
    if (key != null) result.key = key;
    if (value != null) result.value = value;
    if (enabled != null) result.enabled = enabled;
    if (isSecret != null) result.isSecret = isSecret;
    if (position != null) result.position = position;
    return result;
  }

  EnvironmentVariableUpdateRequest._();

  factory EnvironmentVariableUpdateRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnvironmentVariableUpdateRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnvironmentVariableUpdateRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..aInt64(2, _omitFieldNames ? '' : 'environmentId')
    ..aInt64(3, _omitFieldNames ? '' : 'variableId')
    ..aOS(4, _omitFieldNames ? '' : 'key')
    ..aOS(5, _omitFieldNames ? '' : 'value')
    ..aOB(6, _omitFieldNames ? '' : 'enabled')
    ..aOB(7, _omitFieldNames ? '' : 'isSecret')
    ..aI(8, _omitFieldNames ? '' : 'position')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnvironmentVariableUpdateRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnvironmentVariableUpdateRequest copyWith(
          void Function(EnvironmentVariableUpdateRequest) updates) =>
      super.copyWith(
              (message) => updates(message as EnvironmentVariableUpdateRequest))
          as EnvironmentVariableUpdateRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnvironmentVariableUpdateRequest create() =>
      EnvironmentVariableUpdateRequest._();
  @$core.override
  EnvironmentVariableUpdateRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnvironmentVariableUpdateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnvironmentVariableUpdateRequest>(
          create);
  static EnvironmentVariableUpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get workspaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set workspaceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWorkspaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkspaceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get environmentId => $_getI64(1);
  @$pb.TagNumber(2)
  set environmentId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEnvironmentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnvironmentId() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get variableId => $_getI64(2);
  @$pb.TagNumber(3)
  set variableId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVariableId() => $_has(2);
  @$pb.TagNumber(3)
  void clearVariableId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get key => $_getSZ(3);
  @$pb.TagNumber(4)
  set key($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearKey() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get value => $_getSZ(4);
  @$pb.TagNumber(5)
  set value($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearValue() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get enabled => $_getBF(5);
  @$pb.TagNumber(6)
  set enabled($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasEnabled() => $_has(5);
  @$pb.TagNumber(6)
  void clearEnabled() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get isSecret => $_getBF(6);
  @$pb.TagNumber(7)
  set isSecret($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasIsSecret() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsSecret() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get position => $_getIZ(7);
  @$pb.TagNumber(8)
  set position($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasPosition() => $_has(7);
  @$pb.TagNumber(8)
  void clearPosition() => $_clearField(8);
}

class EnvironmentItemsResponse extends $pb.GeneratedMessage {
  factory EnvironmentItemsResponse({
    $core.Iterable<EnvironmentItem>? items,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    return result;
  }

  EnvironmentItemsResponse._();

  factory EnvironmentItemsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnvironmentItemsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnvironmentItemsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..pPM<EnvironmentItem>(1, _omitFieldNames ? '' : 'items',
        subBuilder: EnvironmentItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnvironmentItemsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnvironmentItemsResponse copyWith(
          void Function(EnvironmentItemsResponse) updates) =>
      super.copyWith((message) => updates(message as EnvironmentItemsResponse))
          as EnvironmentItemsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnvironmentItemsResponse create() => EnvironmentItemsResponse._();
  @$core.override
  EnvironmentItemsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnvironmentItemsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnvironmentItemsResponse>(create);
  static EnvironmentItemsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<EnvironmentItem> get items => $_getList(0);
}

class EnvironmentItemResponse extends $pb.GeneratedMessage {
  factory EnvironmentItemResponse({
    EnvironmentItem? item,
  }) {
    final result = create();
    if (item != null) result.item = item;
    return result;
  }

  EnvironmentItemResponse._();

  factory EnvironmentItemResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnvironmentItemResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnvironmentItemResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aOM<EnvironmentItem>(1, _omitFieldNames ? '' : 'item',
        subBuilder: EnvironmentItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnvironmentItemResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnvironmentItemResponse copyWith(
          void Function(EnvironmentItemResponse) updates) =>
      super.copyWith((message) => updates(message as EnvironmentItemResponse))
          as EnvironmentItemResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnvironmentItemResponse create() => EnvironmentItemResponse._();
  @$core.override
  EnvironmentItemResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnvironmentItemResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnvironmentItemResponse>(create);
  static EnvironmentItemResponse? _defaultInstance;

  @$pb.TagNumber(1)
  EnvironmentItem get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(EnvironmentItem value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => $_clearField(1);
  @$pb.TagNumber(1)
  EnvironmentItem ensureItem() => $_ensure(0);
}

class EnvironmentVariableItemsResponse extends $pb.GeneratedMessage {
  factory EnvironmentVariableItemsResponse({
    $core.Iterable<EnvironmentVariableItem>? items,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    return result;
  }

  EnvironmentVariableItemsResponse._();

  factory EnvironmentVariableItemsResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnvironmentVariableItemsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnvironmentVariableItemsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..pPM<EnvironmentVariableItem>(1, _omitFieldNames ? '' : 'items',
        subBuilder: EnvironmentVariableItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnvironmentVariableItemsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnvironmentVariableItemsResponse copyWith(
          void Function(EnvironmentVariableItemsResponse) updates) =>
      super.copyWith(
              (message) => updates(message as EnvironmentVariableItemsResponse))
          as EnvironmentVariableItemsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnvironmentVariableItemsResponse create() =>
      EnvironmentVariableItemsResponse._();
  @$core.override
  EnvironmentVariableItemsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnvironmentVariableItemsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnvironmentVariableItemsResponse>(
          create);
  static EnvironmentVariableItemsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<EnvironmentVariableItem> get items => $_getList(0);
}

class EnvironmentVariableItemResponse extends $pb.GeneratedMessage {
  factory EnvironmentVariableItemResponse({
    EnvironmentVariableItem? item,
  }) {
    final result = create();
    if (item != null) result.item = item;
    return result;
  }

  EnvironmentVariableItemResponse._();

  factory EnvironmentVariableItemResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnvironmentVariableItemResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnvironmentVariableItemResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aOM<EnvironmentVariableItem>(1, _omitFieldNames ? '' : 'item',
        subBuilder: EnvironmentVariableItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnvironmentVariableItemResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnvironmentVariableItemResponse copyWith(
          void Function(EnvironmentVariableItemResponse) updates) =>
      super.copyWith(
              (message) => updates(message as EnvironmentVariableItemResponse))
          as EnvironmentVariableItemResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnvironmentVariableItemResponse create() =>
      EnvironmentVariableItemResponse._();
  @$core.override
  EnvironmentVariableItemResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnvironmentVariableItemResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnvironmentVariableItemResponse>(
          create);
  static EnvironmentVariableItemResponse? _defaultInstance;

  @$pb.TagNumber(1)
  EnvironmentVariableItem get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(EnvironmentVariableItem value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => $_clearField(1);
  @$pb.TagNumber(1)
  EnvironmentVariableItem ensureItem() => $_ensure(0);
}

class EnvironmentActionResponse extends $pb.GeneratedMessage {
  factory EnvironmentActionResponse({
    $core.String? status,
  }) {
    final result = create();
    if (status != null) result.status = status;
    return result;
  }

  EnvironmentActionResponse._();

  factory EnvironmentActionResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnvironmentActionResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnvironmentActionResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnvironmentActionResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnvironmentActionResponse copyWith(
          void Function(EnvironmentActionResponse) updates) =>
      super.copyWith((message) => updates(message as EnvironmentActionResponse))
          as EnvironmentActionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnvironmentActionResponse create() => EnvironmentActionResponse._();
  @$core.override
  EnvironmentActionResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnvironmentActionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnvironmentActionResponse>(create);
  static EnvironmentActionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
