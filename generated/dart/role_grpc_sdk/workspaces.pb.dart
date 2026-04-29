// This is a generated file - do not edit.
//
// Generated from workspaces.proto.

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

class WorkspaceSummary extends $pb.GeneratedMessage {
  factory WorkspaceSummary({
    $fixnum.Int64? id,
    $fixnum.Int64? legacyId,
    $core.String? name,
    $core.String? slug,
    $core.String? type,
    $core.String? role,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (legacyId != null) result.legacyId = legacyId;
    if (name != null) result.name = name;
    if (slug != null) result.slug = slug;
    if (type != null) result.type = type;
    if (role != null) result.role = role;
    return result;
  }

  WorkspaceSummary._();

  factory WorkspaceSummary.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WorkspaceSummary.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WorkspaceSummary',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'legacyId')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'slug')
    ..aOS(5, _omitFieldNames ? '' : 'type')
    ..aOS(6, _omitFieldNames ? '' : 'role')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WorkspaceSummary clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WorkspaceSummary copyWith(void Function(WorkspaceSummary) updates) =>
      super.copyWith((message) => updates(message as WorkspaceSummary))
          as WorkspaceSummary;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WorkspaceSummary create() => WorkspaceSummary._();
  @$core.override
  WorkspaceSummary createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WorkspaceSummary getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WorkspaceSummary>(create);
  static WorkspaceSummary? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get legacyId => $_getI64(1);
  @$pb.TagNumber(2)
  set legacyId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLegacyId() => $_has(1);
  @$pb.TagNumber(2)
  void clearLegacyId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get slug => $_getSZ(3);
  @$pb.TagNumber(4)
  set slug($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSlug() => $_has(3);
  @$pb.TagNumber(4)
  void clearSlug() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get type => $_getSZ(4);
  @$pb.TagNumber(5)
  set type($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasType() => $_has(4);
  @$pb.TagNumber(5)
  void clearType() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get role => $_getSZ(5);
  @$pb.TagNumber(6)
  set role($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasRole() => $_has(5);
  @$pb.TagNumber(6)
  void clearRole() => $_clearField(6);
}

class WorkspaceMember extends $pb.GeneratedMessage {
  factory WorkspaceMember({
    $fixnum.Int64? userId,
    $core.String? name,
    $core.String? email,
    $core.String? role,
  }) {
    final result = create();
    if (userId != null) result.userId = userId;
    if (name != null) result.name = name;
    if (email != null) result.email = email;
    if (role != null) result.role = role;
    return result;
  }

  WorkspaceMember._();

  factory WorkspaceMember.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WorkspaceMember.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WorkspaceMember',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'email')
    ..aOS(4, _omitFieldNames ? '' : 'role')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WorkspaceMember clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WorkspaceMember copyWith(void Function(WorkspaceMember) updates) =>
      super.copyWith((message) => updates(message as WorkspaceMember))
          as WorkspaceMember;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WorkspaceMember create() => WorkspaceMember._();
  @$core.override
  WorkspaceMember createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WorkspaceMember getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WorkspaceMember>(create);
  static WorkspaceMember? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(3)
  set email($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmail() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get role => $_getSZ(3);
  @$pb.TagNumber(4)
  set role($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRole() => $_has(3);
  @$pb.TagNumber(4)
  void clearRole() => $_clearField(4);
}

class WorkspaceInvitation extends $pb.GeneratedMessage {
  factory WorkspaceInvitation({
    $fixnum.Int64? id,
    $fixnum.Int64? workspaceId,
    $core.String? email,
    $core.String? role,
    $core.String? token,
    $core.String? expiresAt,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (workspaceId != null) result.workspaceId = workspaceId;
    if (email != null) result.email = email;
    if (role != null) result.role = role;
    if (token != null) result.token = token;
    if (expiresAt != null) result.expiresAt = expiresAt;
    return result;
  }

  WorkspaceInvitation._();

  factory WorkspaceInvitation.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WorkspaceInvitation.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WorkspaceInvitation',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'workspaceId')
    ..aOS(3, _omitFieldNames ? '' : 'email')
    ..aOS(4, _omitFieldNames ? '' : 'role')
    ..aOS(5, _omitFieldNames ? '' : 'token')
    ..aOS(6, _omitFieldNames ? '' : 'expiresAt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WorkspaceInvitation clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WorkspaceInvitation copyWith(void Function(WorkspaceInvitation) updates) =>
      super.copyWith((message) => updates(message as WorkspaceInvitation))
          as WorkspaceInvitation;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WorkspaceInvitation create() => WorkspaceInvitation._();
  @$core.override
  WorkspaceInvitation createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WorkspaceInvitation getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WorkspaceInvitation>(create);
  static WorkspaceInvitation? _defaultInstance;

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
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(3)
  set email($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmail() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get role => $_getSZ(3);
  @$pb.TagNumber(4)
  set role($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRole() => $_has(3);
  @$pb.TagNumber(4)
  void clearRole() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get token => $_getSZ(4);
  @$pb.TagNumber(5)
  set token($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasToken() => $_has(4);
  @$pb.TagNumber(5)
  void clearToken() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get expiresAt => $_getSZ(5);
  @$pb.TagNumber(6)
  set expiresAt($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasExpiresAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearExpiresAt() => $_clearField(6);
}

class WorkspaceUpdate extends $pb.GeneratedMessage {
  factory WorkspaceUpdate({
    $fixnum.Int64? id,
    $fixnum.Int64? workspaceId,
    $fixnum.Int64? actorUserId,
    $core.String? entity,
    $core.String? action,
    $fixnum.Int64? entityId,
    $core.String? payloadJson,
    $core.String? createdAt,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (workspaceId != null) result.workspaceId = workspaceId;
    if (actorUserId != null) result.actorUserId = actorUserId;
    if (entity != null) result.entity = entity;
    if (action != null) result.action = action;
    if (entityId != null) result.entityId = entityId;
    if (payloadJson != null) result.payloadJson = payloadJson;
    if (createdAt != null) result.createdAt = createdAt;
    return result;
  }

  WorkspaceUpdate._();

  factory WorkspaceUpdate.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WorkspaceUpdate.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WorkspaceUpdate',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'workspaceId')
    ..aInt64(3, _omitFieldNames ? '' : 'actorUserId')
    ..aOS(4, _omitFieldNames ? '' : 'entity')
    ..aOS(5, _omitFieldNames ? '' : 'action')
    ..aInt64(6, _omitFieldNames ? '' : 'entityId')
    ..aOS(7, _omitFieldNames ? '' : 'payloadJson')
    ..aOS(8, _omitFieldNames ? '' : 'createdAt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WorkspaceUpdate clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WorkspaceUpdate copyWith(void Function(WorkspaceUpdate) updates) =>
      super.copyWith((message) => updates(message as WorkspaceUpdate))
          as WorkspaceUpdate;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WorkspaceUpdate create() => WorkspaceUpdate._();
  @$core.override
  WorkspaceUpdate createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WorkspaceUpdate getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WorkspaceUpdate>(create);
  static WorkspaceUpdate? _defaultInstance;

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
  $fixnum.Int64 get actorUserId => $_getI64(2);
  @$pb.TagNumber(3)
  set actorUserId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasActorUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearActorUserId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get entity => $_getSZ(3);
  @$pb.TagNumber(4)
  set entity($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasEntity() => $_has(3);
  @$pb.TagNumber(4)
  void clearEntity() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get action => $_getSZ(4);
  @$pb.TagNumber(5)
  set action($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAction() => $_has(4);
  @$pb.TagNumber(5)
  void clearAction() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get entityId => $_getI64(5);
  @$pb.TagNumber(6)
  set entityId($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasEntityId() => $_has(5);
  @$pb.TagNumber(6)
  void clearEntityId() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get payloadJson => $_getSZ(6);
  @$pb.TagNumber(7)
  set payloadJson($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasPayloadJson() => $_has(6);
  @$pb.TagNumber(7)
  void clearPayloadJson() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get createdAt => $_getSZ(7);
  @$pb.TagNumber(8)
  set createdAt($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasCreatedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearCreatedAt() => $_clearField(8);
}

class Cursor extends $pb.GeneratedMessage {
  factory Cursor({
    $fixnum.Int64? next,
    $core.bool? hasMore,
  }) {
    final result = create();
    if (next != null) result.next = next;
    if (hasMore != null) result.hasMore = hasMore;
    return result;
  }

  Cursor._();

  factory Cursor.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Cursor.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Cursor',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'next')
    ..aOB(2, _omitFieldNames ? '' : 'hasMore')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Cursor clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Cursor copyWith(void Function(Cursor) updates) =>
      super.copyWith((message) => updates(message as Cursor)) as Cursor;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Cursor create() => Cursor._();
  @$core.override
  Cursor createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Cursor getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Cursor>(create);
  static Cursor? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get next => $_getI64(0);
  @$pb.TagNumber(1)
  set next($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNext() => $_has(0);
  @$pb.TagNumber(1)
  void clearNext() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get hasMore => $_getBF(1);
  @$pb.TagNumber(2)
  set hasMore($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasHasMore() => $_has(1);
  @$pb.TagNumber(2)
  void clearHasMore() => $_clearField(2);
}

class ListWorkspacesRequest extends $pb.GeneratedMessage {
  factory ListWorkspacesRequest() => create();

  ListWorkspacesRequest._();

  factory ListWorkspacesRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListWorkspacesRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListWorkspacesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListWorkspacesRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListWorkspacesRequest copyWith(
          void Function(ListWorkspacesRequest) updates) =>
      super.copyWith((message) => updates(message as ListWorkspacesRequest))
          as ListWorkspacesRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListWorkspacesRequest create() => ListWorkspacesRequest._();
  @$core.override
  ListWorkspacesRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListWorkspacesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListWorkspacesRequest>(create);
  static ListWorkspacesRequest? _defaultInstance;
}

class ListWorkspacesResponse extends $pb.GeneratedMessage {
  factory ListWorkspacesResponse({
    $core.Iterable<WorkspaceSummary>? items,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    return result;
  }

  ListWorkspacesResponse._();

  factory ListWorkspacesResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListWorkspacesResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListWorkspacesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..pPM<WorkspaceSummary>(1, _omitFieldNames ? '' : 'items',
        subBuilder: WorkspaceSummary.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListWorkspacesResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListWorkspacesResponse copyWith(
          void Function(ListWorkspacesResponse) updates) =>
      super.copyWith((message) => updates(message as ListWorkspacesResponse))
          as ListWorkspacesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListWorkspacesResponse create() => ListWorkspacesResponse._();
  @$core.override
  ListWorkspacesResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListWorkspacesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListWorkspacesResponse>(create);
  static ListWorkspacesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<WorkspaceSummary> get items => $_getList(0);
}

class WorkspaceIdRequest extends $pb.GeneratedMessage {
  factory WorkspaceIdRequest({
    $fixnum.Int64? workspaceId,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    return result;
  }

  WorkspaceIdRequest._();

  factory WorkspaceIdRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WorkspaceIdRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WorkspaceIdRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WorkspaceIdRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WorkspaceIdRequest copyWith(void Function(WorkspaceIdRequest) updates) =>
      super.copyWith((message) => updates(message as WorkspaceIdRequest))
          as WorkspaceIdRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WorkspaceIdRequest create() => WorkspaceIdRequest._();
  @$core.override
  WorkspaceIdRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WorkspaceIdRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WorkspaceIdRequest>(create);
  static WorkspaceIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get workspaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set workspaceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWorkspaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkspaceId() => $_clearField(1);
}

class GetWorkspaceResponse extends $pb.GeneratedMessage {
  factory GetWorkspaceResponse({
    WorkspaceSummary? item,
  }) {
    final result = create();
    if (item != null) result.item = item;
    return result;
  }

  GetWorkspaceResponse._();

  factory GetWorkspaceResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetWorkspaceResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetWorkspaceResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aOM<WorkspaceSummary>(1, _omitFieldNames ? '' : 'item',
        subBuilder: WorkspaceSummary.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetWorkspaceResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetWorkspaceResponse copyWith(void Function(GetWorkspaceResponse) updates) =>
      super.copyWith((message) => updates(message as GetWorkspaceResponse))
          as GetWorkspaceResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetWorkspaceResponse create() => GetWorkspaceResponse._();
  @$core.override
  GetWorkspaceResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetWorkspaceResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetWorkspaceResponse>(create);
  static GetWorkspaceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  WorkspaceSummary get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(WorkspaceSummary value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => $_clearField(1);
  @$pb.TagNumber(1)
  WorkspaceSummary ensureItem() => $_ensure(0);
}

class CreateWorkspaceRequest extends $pb.GeneratedMessage {
  factory CreateWorkspaceRequest({
    $core.String? name,
  }) {
    final result = create();
    if (name != null) result.name = name;
    return result;
  }

  CreateWorkspaceRequest._();

  factory CreateWorkspaceRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateWorkspaceRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateWorkspaceRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateWorkspaceRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateWorkspaceRequest copyWith(
          void Function(CreateWorkspaceRequest) updates) =>
      super.copyWith((message) => updates(message as CreateWorkspaceRequest))
          as CreateWorkspaceRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateWorkspaceRequest create() => CreateWorkspaceRequest._();
  @$core.override
  CreateWorkspaceRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateWorkspaceRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateWorkspaceRequest>(create);
  static CreateWorkspaceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);
}

class CreateWorkspaceResponse extends $pb.GeneratedMessage {
  factory CreateWorkspaceResponse({
    WorkspaceSummary? item,
  }) {
    final result = create();
    if (item != null) result.item = item;
    return result;
  }

  CreateWorkspaceResponse._();

  factory CreateWorkspaceResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateWorkspaceResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateWorkspaceResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aOM<WorkspaceSummary>(1, _omitFieldNames ? '' : 'item',
        subBuilder: WorkspaceSummary.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateWorkspaceResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateWorkspaceResponse copyWith(
          void Function(CreateWorkspaceResponse) updates) =>
      super.copyWith((message) => updates(message as CreateWorkspaceResponse))
          as CreateWorkspaceResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateWorkspaceResponse create() => CreateWorkspaceResponse._();
  @$core.override
  CreateWorkspaceResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateWorkspaceResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateWorkspaceResponse>(create);
  static CreateWorkspaceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  WorkspaceSummary get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(WorkspaceSummary value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => $_clearField(1);
  @$pb.TagNumber(1)
  WorkspaceSummary ensureItem() => $_ensure(0);
}

class ListWorkspaceMembersResponse extends $pb.GeneratedMessage {
  factory ListWorkspaceMembersResponse({
    $core.Iterable<WorkspaceMember>? items,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    return result;
  }

  ListWorkspaceMembersResponse._();

  factory ListWorkspaceMembersResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListWorkspaceMembersResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListWorkspaceMembersResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..pPM<WorkspaceMember>(1, _omitFieldNames ? '' : 'items',
        subBuilder: WorkspaceMember.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListWorkspaceMembersResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListWorkspaceMembersResponse copyWith(
          void Function(ListWorkspaceMembersResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ListWorkspaceMembersResponse))
          as ListWorkspaceMembersResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListWorkspaceMembersResponse create() =>
      ListWorkspaceMembersResponse._();
  @$core.override
  ListWorkspaceMembersResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListWorkspaceMembersResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListWorkspaceMembersResponse>(create);
  static ListWorkspaceMembersResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<WorkspaceMember> get items => $_getList(0);
}

class AddWorkspaceMemberRequest extends $pb.GeneratedMessage {
  factory AddWorkspaceMemberRequest({
    $fixnum.Int64? workspaceId,
    $core.String? email,
    $core.String? role,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    if (email != null) result.email = email;
    if (role != null) result.role = role;
    return result;
  }

  AddWorkspaceMemberRequest._();

  factory AddWorkspaceMemberRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AddWorkspaceMemberRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AddWorkspaceMemberRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..aOS(2, _omitFieldNames ? '' : 'email')
    ..aOS(3, _omitFieldNames ? '' : 'role')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AddWorkspaceMemberRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AddWorkspaceMemberRequest copyWith(
          void Function(AddWorkspaceMemberRequest) updates) =>
      super.copyWith((message) => updates(message as AddWorkspaceMemberRequest))
          as AddWorkspaceMemberRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddWorkspaceMemberRequest create() => AddWorkspaceMemberRequest._();
  @$core.override
  AddWorkspaceMemberRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AddWorkspaceMemberRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddWorkspaceMemberRequest>(create);
  static AddWorkspaceMemberRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get workspaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set workspaceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWorkspaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkspaceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get role => $_getSZ(2);
  @$pb.TagNumber(3)
  set role($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRole() => $_has(2);
  @$pb.TagNumber(3)
  void clearRole() => $_clearField(3);
}

class AddWorkspaceMemberResponse extends $pb.GeneratedMessage {
  factory AddWorkspaceMemberResponse({
    WorkspaceMember? item,
  }) {
    final result = create();
    if (item != null) result.item = item;
    return result;
  }

  AddWorkspaceMemberResponse._();

  factory AddWorkspaceMemberResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AddWorkspaceMemberResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AddWorkspaceMemberResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aOM<WorkspaceMember>(1, _omitFieldNames ? '' : 'item',
        subBuilder: WorkspaceMember.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AddWorkspaceMemberResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AddWorkspaceMemberResponse copyWith(
          void Function(AddWorkspaceMemberResponse) updates) =>
      super.copyWith(
              (message) => updates(message as AddWorkspaceMemberResponse))
          as AddWorkspaceMemberResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddWorkspaceMemberResponse create() => AddWorkspaceMemberResponse._();
  @$core.override
  AddWorkspaceMemberResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AddWorkspaceMemberResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddWorkspaceMemberResponse>(create);
  static AddWorkspaceMemberResponse? _defaultInstance;

  @$pb.TagNumber(1)
  WorkspaceMember get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(WorkspaceMember value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => $_clearField(1);
  @$pb.TagNumber(1)
  WorkspaceMember ensureItem() => $_ensure(0);
}

class CreateWorkspaceInvitationRequest extends $pb.GeneratedMessage {
  factory CreateWorkspaceInvitationRequest({
    $fixnum.Int64? workspaceId,
    $core.String? email,
    $core.String? role,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    if (email != null) result.email = email;
    if (role != null) result.role = role;
    return result;
  }

  CreateWorkspaceInvitationRequest._();

  factory CreateWorkspaceInvitationRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateWorkspaceInvitationRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateWorkspaceInvitationRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..aOS(2, _omitFieldNames ? '' : 'email')
    ..aOS(3, _omitFieldNames ? '' : 'role')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateWorkspaceInvitationRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateWorkspaceInvitationRequest copyWith(
          void Function(CreateWorkspaceInvitationRequest) updates) =>
      super.copyWith(
              (message) => updates(message as CreateWorkspaceInvitationRequest))
          as CreateWorkspaceInvitationRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateWorkspaceInvitationRequest create() =>
      CreateWorkspaceInvitationRequest._();
  @$core.override
  CreateWorkspaceInvitationRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateWorkspaceInvitationRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateWorkspaceInvitationRequest>(
          create);
  static CreateWorkspaceInvitationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get workspaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set workspaceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWorkspaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkspaceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get role => $_getSZ(2);
  @$pb.TagNumber(3)
  set role($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRole() => $_has(2);
  @$pb.TagNumber(3)
  void clearRole() => $_clearField(3);
}

class CreateWorkspaceInvitationResponse extends $pb.GeneratedMessage {
  factory CreateWorkspaceInvitationResponse({
    WorkspaceInvitation? item,
  }) {
    final result = create();
    if (item != null) result.item = item;
    return result;
  }

  CreateWorkspaceInvitationResponse._();

  factory CreateWorkspaceInvitationResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateWorkspaceInvitationResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateWorkspaceInvitationResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aOM<WorkspaceInvitation>(1, _omitFieldNames ? '' : 'item',
        subBuilder: WorkspaceInvitation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateWorkspaceInvitationResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateWorkspaceInvitationResponse copyWith(
          void Function(CreateWorkspaceInvitationResponse) updates) =>
      super.copyWith((message) =>
              updates(message as CreateWorkspaceInvitationResponse))
          as CreateWorkspaceInvitationResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateWorkspaceInvitationResponse create() =>
      CreateWorkspaceInvitationResponse._();
  @$core.override
  CreateWorkspaceInvitationResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateWorkspaceInvitationResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateWorkspaceInvitationResponse>(
          create);
  static CreateWorkspaceInvitationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  WorkspaceInvitation get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(WorkspaceInvitation value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => $_clearField(1);
  @$pb.TagNumber(1)
  WorkspaceInvitation ensureItem() => $_ensure(0);
}

class UpdateWorkspaceMemberRoleRequest extends $pb.GeneratedMessage {
  factory UpdateWorkspaceMemberRoleRequest({
    $fixnum.Int64? workspaceId,
    $fixnum.Int64? memberUserId,
    $core.String? role,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    if (memberUserId != null) result.memberUserId = memberUserId;
    if (role != null) result.role = role;
    return result;
  }

  UpdateWorkspaceMemberRoleRequest._();

  factory UpdateWorkspaceMemberRoleRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateWorkspaceMemberRoleRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateWorkspaceMemberRoleRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..aInt64(2, _omitFieldNames ? '' : 'memberUserId')
    ..aOS(3, _omitFieldNames ? '' : 'role')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateWorkspaceMemberRoleRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateWorkspaceMemberRoleRequest copyWith(
          void Function(UpdateWorkspaceMemberRoleRequest) updates) =>
      super.copyWith(
              (message) => updates(message as UpdateWorkspaceMemberRoleRequest))
          as UpdateWorkspaceMemberRoleRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateWorkspaceMemberRoleRequest create() =>
      UpdateWorkspaceMemberRoleRequest._();
  @$core.override
  UpdateWorkspaceMemberRoleRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateWorkspaceMemberRoleRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateWorkspaceMemberRoleRequest>(
          create);
  static UpdateWorkspaceMemberRoleRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get workspaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set workspaceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWorkspaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkspaceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get memberUserId => $_getI64(1);
  @$pb.TagNumber(2)
  set memberUserId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMemberUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearMemberUserId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get role => $_getSZ(2);
  @$pb.TagNumber(3)
  set role($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRole() => $_has(2);
  @$pb.TagNumber(3)
  void clearRole() => $_clearField(3);
}

class UpdateWorkspaceMemberRoleResponse extends $pb.GeneratedMessage {
  factory UpdateWorkspaceMemberRoleResponse({
    WorkspaceMember? item,
  }) {
    final result = create();
    if (item != null) result.item = item;
    return result;
  }

  UpdateWorkspaceMemberRoleResponse._();

  factory UpdateWorkspaceMemberRoleResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateWorkspaceMemberRoleResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateWorkspaceMemberRoleResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aOM<WorkspaceMember>(1, _omitFieldNames ? '' : 'item',
        subBuilder: WorkspaceMember.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateWorkspaceMemberRoleResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateWorkspaceMemberRoleResponse copyWith(
          void Function(UpdateWorkspaceMemberRoleResponse) updates) =>
      super.copyWith((message) =>
              updates(message as UpdateWorkspaceMemberRoleResponse))
          as UpdateWorkspaceMemberRoleResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateWorkspaceMemberRoleResponse create() =>
      UpdateWorkspaceMemberRoleResponse._();
  @$core.override
  UpdateWorkspaceMemberRoleResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateWorkspaceMemberRoleResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateWorkspaceMemberRoleResponse>(
          create);
  static UpdateWorkspaceMemberRoleResponse? _defaultInstance;

  @$pb.TagNumber(1)
  WorkspaceMember get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(WorkspaceMember value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => $_clearField(1);
  @$pb.TagNumber(1)
  WorkspaceMember ensureItem() => $_ensure(0);
}

class RemoveWorkspaceMemberRequest extends $pb.GeneratedMessage {
  factory RemoveWorkspaceMemberRequest({
    $fixnum.Int64? workspaceId,
    $fixnum.Int64? memberUserId,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    if (memberUserId != null) result.memberUserId = memberUserId;
    return result;
  }

  RemoveWorkspaceMemberRequest._();

  factory RemoveWorkspaceMemberRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RemoveWorkspaceMemberRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RemoveWorkspaceMemberRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..aInt64(2, _omitFieldNames ? '' : 'memberUserId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RemoveWorkspaceMemberRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RemoveWorkspaceMemberRequest copyWith(
          void Function(RemoveWorkspaceMemberRequest) updates) =>
      super.copyWith(
              (message) => updates(message as RemoveWorkspaceMemberRequest))
          as RemoveWorkspaceMemberRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveWorkspaceMemberRequest create() =>
      RemoveWorkspaceMemberRequest._();
  @$core.override
  RemoveWorkspaceMemberRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RemoveWorkspaceMemberRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RemoveWorkspaceMemberRequest>(create);
  static RemoveWorkspaceMemberRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get workspaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set workspaceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWorkspaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkspaceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get memberUserId => $_getI64(1);
  @$pb.TagNumber(2)
  set memberUserId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMemberUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearMemberUserId() => $_clearField(2);
}

class ActionResponse extends $pb.GeneratedMessage {
  factory ActionResponse({
    $core.String? status,
  }) {
    final result = create();
    if (status != null) result.status = status;
    return result;
  }

  ActionResponse._();

  factory ActionResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ActionResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ActionResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ActionResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ActionResponse copyWith(void Function(ActionResponse) updates) =>
      super.copyWith((message) => updates(message as ActionResponse))
          as ActionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ActionResponse create() => ActionResponse._();
  @$core.override
  ActionResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ActionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ActionResponse>(create);
  static ActionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);
}

class JoinWorkspaceRequest extends $pb.GeneratedMessage {
  factory JoinWorkspaceRequest({
    $core.String? token,
  }) {
    final result = create();
    if (token != null) result.token = token;
    return result;
  }

  JoinWorkspaceRequest._();

  factory JoinWorkspaceRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory JoinWorkspaceRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'JoinWorkspaceRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'token')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  JoinWorkspaceRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  JoinWorkspaceRequest copyWith(void Function(JoinWorkspaceRequest) updates) =>
      super.copyWith((message) => updates(message as JoinWorkspaceRequest))
          as JoinWorkspaceRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JoinWorkspaceRequest create() => JoinWorkspaceRequest._();
  @$core.override
  JoinWorkspaceRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static JoinWorkspaceRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<JoinWorkspaceRequest>(create);
  static JoinWorkspaceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => $_clearField(1);
}

class JoinWorkspaceResponse extends $pb.GeneratedMessage {
  factory JoinWorkspaceResponse({
    WorkspaceSummary? item,
  }) {
    final result = create();
    if (item != null) result.item = item;
    return result;
  }

  JoinWorkspaceResponse._();

  factory JoinWorkspaceResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory JoinWorkspaceResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'JoinWorkspaceResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aOM<WorkspaceSummary>(1, _omitFieldNames ? '' : 'item',
        subBuilder: WorkspaceSummary.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  JoinWorkspaceResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  JoinWorkspaceResponse copyWith(
          void Function(JoinWorkspaceResponse) updates) =>
      super.copyWith((message) => updates(message as JoinWorkspaceResponse))
          as JoinWorkspaceResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JoinWorkspaceResponse create() => JoinWorkspaceResponse._();
  @$core.override
  JoinWorkspaceResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static JoinWorkspaceResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<JoinWorkspaceResponse>(create);
  static JoinWorkspaceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  WorkspaceSummary get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(WorkspaceSummary value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => $_clearField(1);
  @$pb.TagNumber(1)
  WorkspaceSummary ensureItem() => $_ensure(0);
}

class LeaveWorkspaceRequest extends $pb.GeneratedMessage {
  factory LeaveWorkspaceRequest({
    $fixnum.Int64? workspaceId,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    return result;
  }

  LeaveWorkspaceRequest._();

  factory LeaveWorkspaceRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LeaveWorkspaceRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LeaveWorkspaceRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LeaveWorkspaceRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LeaveWorkspaceRequest copyWith(
          void Function(LeaveWorkspaceRequest) updates) =>
      super.copyWith((message) => updates(message as LeaveWorkspaceRequest))
          as LeaveWorkspaceRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LeaveWorkspaceRequest create() => LeaveWorkspaceRequest._();
  @$core.override
  LeaveWorkspaceRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LeaveWorkspaceRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LeaveWorkspaceRequest>(create);
  static LeaveWorkspaceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get workspaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set workspaceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWorkspaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkspaceId() => $_clearField(1);
}

class ConvertWorkspaceToTeamRequest extends $pb.GeneratedMessage {
  factory ConvertWorkspaceToTeamRequest({
    $fixnum.Int64? workspaceId,
    $core.String? name,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    if (name != null) result.name = name;
    return result;
  }

  ConvertWorkspaceToTeamRequest._();

  factory ConvertWorkspaceToTeamRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConvertWorkspaceToTeamRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConvertWorkspaceToTeamRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConvertWorkspaceToTeamRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConvertWorkspaceToTeamRequest copyWith(
          void Function(ConvertWorkspaceToTeamRequest) updates) =>
      super.copyWith(
              (message) => updates(message as ConvertWorkspaceToTeamRequest))
          as ConvertWorkspaceToTeamRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConvertWorkspaceToTeamRequest create() =>
      ConvertWorkspaceToTeamRequest._();
  @$core.override
  ConvertWorkspaceToTeamRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConvertWorkspaceToTeamRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConvertWorkspaceToTeamRequest>(create);
  static ConvertWorkspaceToTeamRequest? _defaultInstance;

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

class ConvertWorkspaceToTeamResponse extends $pb.GeneratedMessage {
  factory ConvertWorkspaceToTeamResponse({
    WorkspaceSummary? item,
  }) {
    final result = create();
    if (item != null) result.item = item;
    return result;
  }

  ConvertWorkspaceToTeamResponse._();

  factory ConvertWorkspaceToTeamResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConvertWorkspaceToTeamResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConvertWorkspaceToTeamResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aOM<WorkspaceSummary>(1, _omitFieldNames ? '' : 'item',
        subBuilder: WorkspaceSummary.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConvertWorkspaceToTeamResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConvertWorkspaceToTeamResponse copyWith(
          void Function(ConvertWorkspaceToTeamResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ConvertWorkspaceToTeamResponse))
          as ConvertWorkspaceToTeamResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConvertWorkspaceToTeamResponse create() =>
      ConvertWorkspaceToTeamResponse._();
  @$core.override
  ConvertWorkspaceToTeamResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConvertWorkspaceToTeamResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConvertWorkspaceToTeamResponse>(create);
  static ConvertWorkspaceToTeamResponse? _defaultInstance;

  @$pb.TagNumber(1)
  WorkspaceSummary get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(WorkspaceSummary value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => $_clearField(1);
  @$pb.TagNumber(1)
  WorkspaceSummary ensureItem() => $_ensure(0);
}

class ListWorkspaceUpdatesRequest extends $pb.GeneratedMessage {
  factory ListWorkspaceUpdatesRequest({
    $fixnum.Int64? workspaceId,
    $fixnum.Int64? since,
    $core.int? limit,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    if (since != null) result.since = since;
    if (limit != null) result.limit = limit;
    return result;
  }

  ListWorkspaceUpdatesRequest._();

  factory ListWorkspaceUpdatesRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListWorkspaceUpdatesRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListWorkspaceUpdatesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..aInt64(2, _omitFieldNames ? '' : 'since')
    ..aI(3, _omitFieldNames ? '' : 'limit')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListWorkspaceUpdatesRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListWorkspaceUpdatesRequest copyWith(
          void Function(ListWorkspaceUpdatesRequest) updates) =>
      super.copyWith(
              (message) => updates(message as ListWorkspaceUpdatesRequest))
          as ListWorkspaceUpdatesRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListWorkspaceUpdatesRequest create() =>
      ListWorkspaceUpdatesRequest._();
  @$core.override
  ListWorkspaceUpdatesRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListWorkspaceUpdatesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListWorkspaceUpdatesRequest>(create);
  static ListWorkspaceUpdatesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get workspaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set workspaceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWorkspaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkspaceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get since => $_getI64(1);
  @$pb.TagNumber(2)
  set since($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSince() => $_has(1);
  @$pb.TagNumber(2)
  void clearSince() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get limit => $_getIZ(2);
  @$pb.TagNumber(3)
  set limit($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLimit() => $_has(2);
  @$pb.TagNumber(3)
  void clearLimit() => $_clearField(3);
}

class ListWorkspaceUpdatesResponse extends $pb.GeneratedMessage {
  factory ListWorkspaceUpdatesResponse({
    $core.Iterable<WorkspaceUpdate>? items,
    Cursor? cursor,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    if (cursor != null) result.cursor = cursor;
    return result;
  }

  ListWorkspaceUpdatesResponse._();

  factory ListWorkspaceUpdatesResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListWorkspaceUpdatesResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListWorkspaceUpdatesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..pPM<WorkspaceUpdate>(1, _omitFieldNames ? '' : 'items',
        subBuilder: WorkspaceUpdate.create)
    ..aOM<Cursor>(2, _omitFieldNames ? '' : 'cursor', subBuilder: Cursor.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListWorkspaceUpdatesResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListWorkspaceUpdatesResponse copyWith(
          void Function(ListWorkspaceUpdatesResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ListWorkspaceUpdatesResponse))
          as ListWorkspaceUpdatesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListWorkspaceUpdatesResponse create() =>
      ListWorkspaceUpdatesResponse._();
  @$core.override
  ListWorkspaceUpdatesResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListWorkspaceUpdatesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListWorkspaceUpdatesResponse>(create);
  static ListWorkspaceUpdatesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<WorkspaceUpdate> get items => $_getList(0);

  @$pb.TagNumber(2)
  Cursor get cursor => $_getN(1);
  @$pb.TagNumber(2)
  set cursor(Cursor value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCursor() => $_has(1);
  @$pb.TagNumber(2)
  void clearCursor() => $_clearField(2);
  @$pb.TagNumber(2)
  Cursor ensureCursor() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
