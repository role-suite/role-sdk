// This is a generated file - do not edit.
//
// Generated from collections.proto.

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

class CollectionItem extends $pb.GeneratedMessage {
  factory CollectionItem({
    $fixnum.Int64? id,
    $fixnum.Int64? legacyId,
    $fixnum.Int64? workspaceId,
    $core.String? name,
    $core.String? description,
    $fixnum.Int64? createdByUserId,
    $core.String? createdAt,
    $core.String? updatedAt,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (legacyId != null) result.legacyId = legacyId;
    if (workspaceId != null) result.workspaceId = workspaceId;
    if (name != null) result.name = name;
    if (description != null) result.description = description;
    if (createdByUserId != null) result.createdByUserId = createdByUserId;
    if (createdAt != null) result.createdAt = createdAt;
    if (updatedAt != null) result.updatedAt = updatedAt;
    return result;
  }

  CollectionItem._();

  factory CollectionItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CollectionItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CollectionItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'legacyId')
    ..aInt64(3, _omitFieldNames ? '' : 'workspaceId')
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..aInt64(6, _omitFieldNames ? '' : 'createdByUserId')
    ..aOS(7, _omitFieldNames ? '' : 'createdAt')
    ..aOS(8, _omitFieldNames ? '' : 'updatedAt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionItem copyWith(void Function(CollectionItem) updates) =>
      super.copyWith((message) => updates(message as CollectionItem))
          as CollectionItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionItem create() => CollectionItem._();
  @$core.override
  CollectionItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CollectionItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionItem>(create);
  static CollectionItem? _defaultInstance;

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
  $fixnum.Int64 get workspaceId => $_getI64(2);
  @$pb.TagNumber(3)
  set workspaceId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasWorkspaceId() => $_has(2);
  @$pb.TagNumber(3)
  void clearWorkspaceId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(5)
  set description($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescription() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get createdByUserId => $_getI64(5);
  @$pb.TagNumber(6)
  set createdByUserId($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasCreatedByUserId() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreatedByUserId() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get createdAt => $_getSZ(6);
  @$pb.TagNumber(7)
  set createdAt($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasCreatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreatedAt() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get updatedAt => $_getSZ(7);
  @$pb.TagNumber(8)
  set updatedAt($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasUpdatedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearUpdatedAt() => $_clearField(8);
}

class CollectionEndpointItem extends $pb.GeneratedMessage {
  factory CollectionEndpointItem({
    $fixnum.Int64? id,
    $fixnum.Int64? collectionId,
    $fixnum.Int64? folderId,
    $core.String? name,
    $core.String? method,
    $core.String? url,
    $core.String? headersJson,
    $core.String? queryParamsJson,
    $core.String? bodyJson,
    $core.String? authJson,
    $core.int? position,
    $fixnum.Int64? createdByUserId,
    $core.String? createdAt,
    $core.String? updatedAt,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (collectionId != null) result.collectionId = collectionId;
    if (folderId != null) result.folderId = folderId;
    if (name != null) result.name = name;
    if (method != null) result.method = method;
    if (url != null) result.url = url;
    if (headersJson != null) result.headersJson = headersJson;
    if (queryParamsJson != null) result.queryParamsJson = queryParamsJson;
    if (bodyJson != null) result.bodyJson = bodyJson;
    if (authJson != null) result.authJson = authJson;
    if (position != null) result.position = position;
    if (createdByUserId != null) result.createdByUserId = createdByUserId;
    if (createdAt != null) result.createdAt = createdAt;
    if (updatedAt != null) result.updatedAt = updatedAt;
    return result;
  }

  CollectionEndpointItem._();

  factory CollectionEndpointItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CollectionEndpointItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CollectionEndpointItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'collectionId')
    ..aInt64(3, _omitFieldNames ? '' : 'folderId')
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOS(5, _omitFieldNames ? '' : 'method')
    ..aOS(6, _omitFieldNames ? '' : 'url')
    ..aOS(7, _omitFieldNames ? '' : 'headersJson')
    ..aOS(8, _omitFieldNames ? '' : 'queryParamsJson')
    ..aOS(9, _omitFieldNames ? '' : 'bodyJson')
    ..aOS(10, _omitFieldNames ? '' : 'authJson')
    ..aI(11, _omitFieldNames ? '' : 'position')
    ..aInt64(12, _omitFieldNames ? '' : 'createdByUserId')
    ..aOS(13, _omitFieldNames ? '' : 'createdAt')
    ..aOS(14, _omitFieldNames ? '' : 'updatedAt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionEndpointItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionEndpointItem copyWith(
          void Function(CollectionEndpointItem) updates) =>
      super.copyWith((message) => updates(message as CollectionEndpointItem))
          as CollectionEndpointItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionEndpointItem create() => CollectionEndpointItem._();
  @$core.override
  CollectionEndpointItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CollectionEndpointItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionEndpointItem>(create);
  static CollectionEndpointItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get collectionId => $_getI64(1);
  @$pb.TagNumber(2)
  set collectionId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCollectionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCollectionId() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get folderId => $_getI64(2);
  @$pb.TagNumber(3)
  set folderId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFolderId() => $_has(2);
  @$pb.TagNumber(3)
  void clearFolderId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get method => $_getSZ(4);
  @$pb.TagNumber(5)
  set method($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMethod() => $_has(4);
  @$pb.TagNumber(5)
  void clearMethod() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get url => $_getSZ(5);
  @$pb.TagNumber(6)
  set url($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearUrl() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get headersJson => $_getSZ(6);
  @$pb.TagNumber(7)
  set headersJson($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasHeadersJson() => $_has(6);
  @$pb.TagNumber(7)
  void clearHeadersJson() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get queryParamsJson => $_getSZ(7);
  @$pb.TagNumber(8)
  set queryParamsJson($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasQueryParamsJson() => $_has(7);
  @$pb.TagNumber(8)
  void clearQueryParamsJson() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get bodyJson => $_getSZ(8);
  @$pb.TagNumber(9)
  set bodyJson($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasBodyJson() => $_has(8);
  @$pb.TagNumber(9)
  void clearBodyJson() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get authJson => $_getSZ(9);
  @$pb.TagNumber(10)
  set authJson($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasAuthJson() => $_has(9);
  @$pb.TagNumber(10)
  void clearAuthJson() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get position => $_getIZ(10);
  @$pb.TagNumber(11)
  set position($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasPosition() => $_has(10);
  @$pb.TagNumber(11)
  void clearPosition() => $_clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get createdByUserId => $_getI64(11);
  @$pb.TagNumber(12)
  set createdByUserId($fixnum.Int64 value) => $_setInt64(11, value);
  @$pb.TagNumber(12)
  $core.bool hasCreatedByUserId() => $_has(11);
  @$pb.TagNumber(12)
  void clearCreatedByUserId() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get createdAt => $_getSZ(12);
  @$pb.TagNumber(13)
  set createdAt($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasCreatedAt() => $_has(12);
  @$pb.TagNumber(13)
  void clearCreatedAt() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get updatedAt => $_getSZ(13);
  @$pb.TagNumber(14)
  set updatedAt($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasUpdatedAt() => $_has(13);
  @$pb.TagNumber(14)
  void clearUpdatedAt() => $_clearField(14);
}

class CollectionFolderItem extends $pb.GeneratedMessage {
  factory CollectionFolderItem({
    $fixnum.Int64? id,
    $fixnum.Int64? collectionId,
    $fixnum.Int64? parentFolderId,
    $core.String? name,
    $core.int? position,
    $fixnum.Int64? createdByUserId,
    $core.String? createdAt,
    $core.String? updatedAt,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (collectionId != null) result.collectionId = collectionId;
    if (parentFolderId != null) result.parentFolderId = parentFolderId;
    if (name != null) result.name = name;
    if (position != null) result.position = position;
    if (createdByUserId != null) result.createdByUserId = createdByUserId;
    if (createdAt != null) result.createdAt = createdAt;
    if (updatedAt != null) result.updatedAt = updatedAt;
    return result;
  }

  CollectionFolderItem._();

  factory CollectionFolderItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CollectionFolderItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CollectionFolderItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'collectionId')
    ..aInt64(3, _omitFieldNames ? '' : 'parentFolderId')
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aI(5, _omitFieldNames ? '' : 'position')
    ..aInt64(6, _omitFieldNames ? '' : 'createdByUserId')
    ..aOS(7, _omitFieldNames ? '' : 'createdAt')
    ..aOS(8, _omitFieldNames ? '' : 'updatedAt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionFolderItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionFolderItem copyWith(void Function(CollectionFolderItem) updates) =>
      super.copyWith((message) => updates(message as CollectionFolderItem))
          as CollectionFolderItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionFolderItem create() => CollectionFolderItem._();
  @$core.override
  CollectionFolderItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CollectionFolderItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionFolderItem>(create);
  static CollectionFolderItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get collectionId => $_getI64(1);
  @$pb.TagNumber(2)
  set collectionId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCollectionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCollectionId() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get parentFolderId => $_getI64(2);
  @$pb.TagNumber(3)
  set parentFolderId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasParentFolderId() => $_has(2);
  @$pb.TagNumber(3)
  void clearParentFolderId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get position => $_getIZ(4);
  @$pb.TagNumber(5)
  set position($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPosition() => $_has(4);
  @$pb.TagNumber(5)
  void clearPosition() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get createdByUserId => $_getI64(5);
  @$pb.TagNumber(6)
  set createdByUserId($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasCreatedByUserId() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreatedByUserId() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get createdAt => $_getSZ(6);
  @$pb.TagNumber(7)
  set createdAt($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasCreatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreatedAt() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get updatedAt => $_getSZ(7);
  @$pb.TagNumber(8)
  set updatedAt($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasUpdatedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearUpdatedAt() => $_clearField(8);
}

class CollectionExampleItem extends $pb.GeneratedMessage {
  factory CollectionExampleItem({
    $fixnum.Int64? id,
    $fixnum.Int64? endpointId,
    $core.String? name,
    $core.int? statusCode,
    $core.String? headersJson,
    $core.String? body,
    $core.int? position,
    $fixnum.Int64? createdByUserId,
    $core.String? createdAt,
    $core.String? updatedAt,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (endpointId != null) result.endpointId = endpointId;
    if (name != null) result.name = name;
    if (statusCode != null) result.statusCode = statusCode;
    if (headersJson != null) result.headersJson = headersJson;
    if (body != null) result.body = body;
    if (position != null) result.position = position;
    if (createdByUserId != null) result.createdByUserId = createdByUserId;
    if (createdAt != null) result.createdAt = createdAt;
    if (updatedAt != null) result.updatedAt = updatedAt;
    return result;
  }

  CollectionExampleItem._();

  factory CollectionExampleItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CollectionExampleItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CollectionExampleItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'endpointId')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aI(4, _omitFieldNames ? '' : 'statusCode')
    ..aOS(5, _omitFieldNames ? '' : 'headersJson')
    ..aOS(6, _omitFieldNames ? '' : 'body')
    ..aI(7, _omitFieldNames ? '' : 'position')
    ..aInt64(8, _omitFieldNames ? '' : 'createdByUserId')
    ..aOS(9, _omitFieldNames ? '' : 'createdAt')
    ..aOS(10, _omitFieldNames ? '' : 'updatedAt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionExampleItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionExampleItem copyWith(
          void Function(CollectionExampleItem) updates) =>
      super.copyWith((message) => updates(message as CollectionExampleItem))
          as CollectionExampleItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionExampleItem create() => CollectionExampleItem._();
  @$core.override
  CollectionExampleItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CollectionExampleItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionExampleItem>(create);
  static CollectionExampleItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get endpointId => $_getI64(1);
  @$pb.TagNumber(2)
  set endpointId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEndpointId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndpointId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get statusCode => $_getIZ(3);
  @$pb.TagNumber(4)
  set statusCode($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasStatusCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatusCode() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get headersJson => $_getSZ(4);
  @$pb.TagNumber(5)
  set headersJson($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasHeadersJson() => $_has(4);
  @$pb.TagNumber(5)
  void clearHeadersJson() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get body => $_getSZ(5);
  @$pb.TagNumber(6)
  set body($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasBody() => $_has(5);
  @$pb.TagNumber(6)
  void clearBody() => $_clearField(6);

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

class CollectionsListRequest extends $pb.GeneratedMessage {
  factory CollectionsListRequest({
    $fixnum.Int64? workspaceId,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    return result;
  }

  CollectionsListRequest._();

  factory CollectionsListRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CollectionsListRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CollectionsListRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionsListRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionsListRequest copyWith(
          void Function(CollectionsListRequest) updates) =>
      super.copyWith((message) => updates(message as CollectionsListRequest))
          as CollectionsListRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionsListRequest create() => CollectionsListRequest._();
  @$core.override
  CollectionsListRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CollectionsListRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionsListRequest>(create);
  static CollectionsListRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get workspaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set workspaceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWorkspaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkspaceId() => $_clearField(1);
}

class CollectionByIdRequest extends $pb.GeneratedMessage {
  factory CollectionByIdRequest({
    $fixnum.Int64? workspaceId,
    $fixnum.Int64? collectionId,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    if (collectionId != null) result.collectionId = collectionId;
    return result;
  }

  CollectionByIdRequest._();

  factory CollectionByIdRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CollectionByIdRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CollectionByIdRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..aInt64(2, _omitFieldNames ? '' : 'collectionId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionByIdRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionByIdRequest copyWith(
          void Function(CollectionByIdRequest) updates) =>
      super.copyWith((message) => updates(message as CollectionByIdRequest))
          as CollectionByIdRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionByIdRequest create() => CollectionByIdRequest._();
  @$core.override
  CollectionByIdRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CollectionByIdRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionByIdRequest>(create);
  static CollectionByIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get workspaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set workspaceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWorkspaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkspaceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get collectionId => $_getI64(1);
  @$pb.TagNumber(2)
  set collectionId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCollectionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCollectionId() => $_clearField(2);
}

class CollectionCreateRequest extends $pb.GeneratedMessage {
  factory CollectionCreateRequest({
    $fixnum.Int64? workspaceId,
    $core.String? name,
    $core.String? description,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    if (name != null) result.name = name;
    if (description != null) result.description = description;
    return result;
  }

  CollectionCreateRequest._();

  factory CollectionCreateRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CollectionCreateRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CollectionCreateRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionCreateRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionCreateRequest copyWith(
          void Function(CollectionCreateRequest) updates) =>
      super.copyWith((message) => updates(message as CollectionCreateRequest))
          as CollectionCreateRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionCreateRequest create() => CollectionCreateRequest._();
  @$core.override
  CollectionCreateRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CollectionCreateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionCreateRequest>(create);
  static CollectionCreateRequest? _defaultInstance;

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

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => $_clearField(3);
}

class CollectionUpdateRequest extends $pb.GeneratedMessage {
  factory CollectionUpdateRequest({
    $fixnum.Int64? workspaceId,
    $fixnum.Int64? collectionId,
    $core.String? name,
    $core.String? description,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    if (collectionId != null) result.collectionId = collectionId;
    if (name != null) result.name = name;
    if (description != null) result.description = description;
    return result;
  }

  CollectionUpdateRequest._();

  factory CollectionUpdateRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CollectionUpdateRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CollectionUpdateRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..aInt64(2, _omitFieldNames ? '' : 'collectionId')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionUpdateRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionUpdateRequest copyWith(
          void Function(CollectionUpdateRequest) updates) =>
      super.copyWith((message) => updates(message as CollectionUpdateRequest))
          as CollectionUpdateRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionUpdateRequest create() => CollectionUpdateRequest._();
  @$core.override
  CollectionUpdateRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CollectionUpdateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionUpdateRequest>(create);
  static CollectionUpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get workspaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set workspaceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWorkspaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkspaceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get collectionId => $_getI64(1);
  @$pb.TagNumber(2)
  set collectionId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCollectionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCollectionId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => $_clearField(4);
}

class CollectionDeleteRequest extends $pb.GeneratedMessage {
  factory CollectionDeleteRequest({
    $fixnum.Int64? workspaceId,
    $fixnum.Int64? collectionId,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    if (collectionId != null) result.collectionId = collectionId;
    return result;
  }

  CollectionDeleteRequest._();

  factory CollectionDeleteRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CollectionDeleteRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CollectionDeleteRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..aInt64(2, _omitFieldNames ? '' : 'collectionId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionDeleteRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionDeleteRequest copyWith(
          void Function(CollectionDeleteRequest) updates) =>
      super.copyWith((message) => updates(message as CollectionDeleteRequest))
          as CollectionDeleteRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionDeleteRequest create() => CollectionDeleteRequest._();
  @$core.override
  CollectionDeleteRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CollectionDeleteRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionDeleteRequest>(create);
  static CollectionDeleteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get workspaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set workspaceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWorkspaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkspaceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get collectionId => $_getI64(1);
  @$pb.TagNumber(2)
  set collectionId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCollectionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCollectionId() => $_clearField(2);
}

class CollectionEndpointByIdRequest extends $pb.GeneratedMessage {
  factory CollectionEndpointByIdRequest({
    $fixnum.Int64? workspaceId,
    $fixnum.Int64? collectionId,
    $fixnum.Int64? endpointId,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    if (collectionId != null) result.collectionId = collectionId;
    if (endpointId != null) result.endpointId = endpointId;
    return result;
  }

  CollectionEndpointByIdRequest._();

  factory CollectionEndpointByIdRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CollectionEndpointByIdRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CollectionEndpointByIdRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..aInt64(2, _omitFieldNames ? '' : 'collectionId')
    ..aInt64(3, _omitFieldNames ? '' : 'endpointId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionEndpointByIdRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionEndpointByIdRequest copyWith(
          void Function(CollectionEndpointByIdRequest) updates) =>
      super.copyWith(
              (message) => updates(message as CollectionEndpointByIdRequest))
          as CollectionEndpointByIdRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionEndpointByIdRequest create() =>
      CollectionEndpointByIdRequest._();
  @$core.override
  CollectionEndpointByIdRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CollectionEndpointByIdRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionEndpointByIdRequest>(create);
  static CollectionEndpointByIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get workspaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set workspaceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWorkspaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkspaceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get collectionId => $_getI64(1);
  @$pb.TagNumber(2)
  set collectionId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCollectionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCollectionId() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get endpointId => $_getI64(2);
  @$pb.TagNumber(3)
  set endpointId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEndpointId() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndpointId() => $_clearField(3);
}

class CollectionEndpointCreateRequest extends $pb.GeneratedMessage {
  factory CollectionEndpointCreateRequest({
    $fixnum.Int64? workspaceId,
    $fixnum.Int64? collectionId,
    $fixnum.Int64? folderId,
    $core.String? name,
    $core.String? method,
    $core.String? url,
    $core.String? headersJson,
    $core.String? queryParamsJson,
    $core.String? bodyJson,
    $core.String? authJson,
    $core.int? position,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    if (collectionId != null) result.collectionId = collectionId;
    if (folderId != null) result.folderId = folderId;
    if (name != null) result.name = name;
    if (method != null) result.method = method;
    if (url != null) result.url = url;
    if (headersJson != null) result.headersJson = headersJson;
    if (queryParamsJson != null) result.queryParamsJson = queryParamsJson;
    if (bodyJson != null) result.bodyJson = bodyJson;
    if (authJson != null) result.authJson = authJson;
    if (position != null) result.position = position;
    return result;
  }

  CollectionEndpointCreateRequest._();

  factory CollectionEndpointCreateRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CollectionEndpointCreateRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CollectionEndpointCreateRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..aInt64(2, _omitFieldNames ? '' : 'collectionId')
    ..aInt64(3, _omitFieldNames ? '' : 'folderId')
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOS(5, _omitFieldNames ? '' : 'method')
    ..aOS(6, _omitFieldNames ? '' : 'url')
    ..aOS(7, _omitFieldNames ? '' : 'headersJson')
    ..aOS(8, _omitFieldNames ? '' : 'queryParamsJson')
    ..aOS(9, _omitFieldNames ? '' : 'bodyJson')
    ..aOS(10, _omitFieldNames ? '' : 'authJson')
    ..aI(11, _omitFieldNames ? '' : 'position')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionEndpointCreateRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionEndpointCreateRequest copyWith(
          void Function(CollectionEndpointCreateRequest) updates) =>
      super.copyWith(
              (message) => updates(message as CollectionEndpointCreateRequest))
          as CollectionEndpointCreateRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionEndpointCreateRequest create() =>
      CollectionEndpointCreateRequest._();
  @$core.override
  CollectionEndpointCreateRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CollectionEndpointCreateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionEndpointCreateRequest>(
          create);
  static CollectionEndpointCreateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get workspaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set workspaceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWorkspaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkspaceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get collectionId => $_getI64(1);
  @$pb.TagNumber(2)
  set collectionId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCollectionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCollectionId() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get folderId => $_getI64(2);
  @$pb.TagNumber(3)
  set folderId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFolderId() => $_has(2);
  @$pb.TagNumber(3)
  void clearFolderId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get method => $_getSZ(4);
  @$pb.TagNumber(5)
  set method($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMethod() => $_has(4);
  @$pb.TagNumber(5)
  void clearMethod() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get url => $_getSZ(5);
  @$pb.TagNumber(6)
  set url($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearUrl() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get headersJson => $_getSZ(6);
  @$pb.TagNumber(7)
  set headersJson($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasHeadersJson() => $_has(6);
  @$pb.TagNumber(7)
  void clearHeadersJson() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get queryParamsJson => $_getSZ(7);
  @$pb.TagNumber(8)
  set queryParamsJson($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasQueryParamsJson() => $_has(7);
  @$pb.TagNumber(8)
  void clearQueryParamsJson() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get bodyJson => $_getSZ(8);
  @$pb.TagNumber(9)
  set bodyJson($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasBodyJson() => $_has(8);
  @$pb.TagNumber(9)
  void clearBodyJson() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get authJson => $_getSZ(9);
  @$pb.TagNumber(10)
  set authJson($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasAuthJson() => $_has(9);
  @$pb.TagNumber(10)
  void clearAuthJson() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get position => $_getIZ(10);
  @$pb.TagNumber(11)
  set position($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasPosition() => $_has(10);
  @$pb.TagNumber(11)
  void clearPosition() => $_clearField(11);
}

class CollectionEndpointUpdateRequest extends $pb.GeneratedMessage {
  factory CollectionEndpointUpdateRequest({
    $fixnum.Int64? workspaceId,
    $fixnum.Int64? collectionId,
    $fixnum.Int64? endpointId,
    $fixnum.Int64? folderId,
    $core.String? name,
    $core.String? method,
    $core.String? url,
    $core.String? headersJson,
    $core.String? queryParamsJson,
    $core.String? bodyJson,
    $core.String? authJson,
    $core.int? position,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    if (collectionId != null) result.collectionId = collectionId;
    if (endpointId != null) result.endpointId = endpointId;
    if (folderId != null) result.folderId = folderId;
    if (name != null) result.name = name;
    if (method != null) result.method = method;
    if (url != null) result.url = url;
    if (headersJson != null) result.headersJson = headersJson;
    if (queryParamsJson != null) result.queryParamsJson = queryParamsJson;
    if (bodyJson != null) result.bodyJson = bodyJson;
    if (authJson != null) result.authJson = authJson;
    if (position != null) result.position = position;
    return result;
  }

  CollectionEndpointUpdateRequest._();

  factory CollectionEndpointUpdateRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CollectionEndpointUpdateRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CollectionEndpointUpdateRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..aInt64(2, _omitFieldNames ? '' : 'collectionId')
    ..aInt64(3, _omitFieldNames ? '' : 'endpointId')
    ..aInt64(4, _omitFieldNames ? '' : 'folderId')
    ..aOS(5, _omitFieldNames ? '' : 'name')
    ..aOS(6, _omitFieldNames ? '' : 'method')
    ..aOS(7, _omitFieldNames ? '' : 'url')
    ..aOS(8, _omitFieldNames ? '' : 'headersJson')
    ..aOS(9, _omitFieldNames ? '' : 'queryParamsJson')
    ..aOS(10, _omitFieldNames ? '' : 'bodyJson')
    ..aOS(11, _omitFieldNames ? '' : 'authJson')
    ..aI(12, _omitFieldNames ? '' : 'position')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionEndpointUpdateRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionEndpointUpdateRequest copyWith(
          void Function(CollectionEndpointUpdateRequest) updates) =>
      super.copyWith(
              (message) => updates(message as CollectionEndpointUpdateRequest))
          as CollectionEndpointUpdateRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionEndpointUpdateRequest create() =>
      CollectionEndpointUpdateRequest._();
  @$core.override
  CollectionEndpointUpdateRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CollectionEndpointUpdateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionEndpointUpdateRequest>(
          create);
  static CollectionEndpointUpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get workspaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set workspaceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWorkspaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkspaceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get collectionId => $_getI64(1);
  @$pb.TagNumber(2)
  set collectionId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCollectionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCollectionId() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get endpointId => $_getI64(2);
  @$pb.TagNumber(3)
  set endpointId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEndpointId() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndpointId() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get folderId => $_getI64(3);
  @$pb.TagNumber(4)
  set folderId($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFolderId() => $_has(3);
  @$pb.TagNumber(4)
  void clearFolderId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get name => $_getSZ(4);
  @$pb.TagNumber(5)
  set name($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasName() => $_has(4);
  @$pb.TagNumber(5)
  void clearName() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get method => $_getSZ(5);
  @$pb.TagNumber(6)
  set method($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMethod() => $_has(5);
  @$pb.TagNumber(6)
  void clearMethod() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get url => $_getSZ(6);
  @$pb.TagNumber(7)
  set url($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasUrl() => $_has(6);
  @$pb.TagNumber(7)
  void clearUrl() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get headersJson => $_getSZ(7);
  @$pb.TagNumber(8)
  set headersJson($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasHeadersJson() => $_has(7);
  @$pb.TagNumber(8)
  void clearHeadersJson() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get queryParamsJson => $_getSZ(8);
  @$pb.TagNumber(9)
  set queryParamsJson($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasQueryParamsJson() => $_has(8);
  @$pb.TagNumber(9)
  void clearQueryParamsJson() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get bodyJson => $_getSZ(9);
  @$pb.TagNumber(10)
  set bodyJson($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasBodyJson() => $_has(9);
  @$pb.TagNumber(10)
  void clearBodyJson() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get authJson => $_getSZ(10);
  @$pb.TagNumber(11)
  set authJson($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasAuthJson() => $_has(10);
  @$pb.TagNumber(11)
  void clearAuthJson() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get position => $_getIZ(11);
  @$pb.TagNumber(12)
  set position($core.int value) => $_setSignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasPosition() => $_has(11);
  @$pb.TagNumber(12)
  void clearPosition() => $_clearField(12);
}

class CollectionFolderByIdRequest extends $pb.GeneratedMessage {
  factory CollectionFolderByIdRequest({
    $fixnum.Int64? workspaceId,
    $fixnum.Int64? collectionId,
    $fixnum.Int64? folderId,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    if (collectionId != null) result.collectionId = collectionId;
    if (folderId != null) result.folderId = folderId;
    return result;
  }

  CollectionFolderByIdRequest._();

  factory CollectionFolderByIdRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CollectionFolderByIdRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CollectionFolderByIdRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..aInt64(2, _omitFieldNames ? '' : 'collectionId')
    ..aInt64(3, _omitFieldNames ? '' : 'folderId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionFolderByIdRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionFolderByIdRequest copyWith(
          void Function(CollectionFolderByIdRequest) updates) =>
      super.copyWith(
              (message) => updates(message as CollectionFolderByIdRequest))
          as CollectionFolderByIdRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionFolderByIdRequest create() =>
      CollectionFolderByIdRequest._();
  @$core.override
  CollectionFolderByIdRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CollectionFolderByIdRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionFolderByIdRequest>(create);
  static CollectionFolderByIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get workspaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set workspaceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWorkspaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkspaceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get collectionId => $_getI64(1);
  @$pb.TagNumber(2)
  set collectionId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCollectionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCollectionId() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get folderId => $_getI64(2);
  @$pb.TagNumber(3)
  set folderId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFolderId() => $_has(2);
  @$pb.TagNumber(3)
  void clearFolderId() => $_clearField(3);
}

class CollectionFolderCreateRequest extends $pb.GeneratedMessage {
  factory CollectionFolderCreateRequest({
    $fixnum.Int64? workspaceId,
    $fixnum.Int64? collectionId,
    $core.String? name,
    $fixnum.Int64? parentFolderId,
    $core.int? position,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    if (collectionId != null) result.collectionId = collectionId;
    if (name != null) result.name = name;
    if (parentFolderId != null) result.parentFolderId = parentFolderId;
    if (position != null) result.position = position;
    return result;
  }

  CollectionFolderCreateRequest._();

  factory CollectionFolderCreateRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CollectionFolderCreateRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CollectionFolderCreateRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..aInt64(2, _omitFieldNames ? '' : 'collectionId')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aInt64(4, _omitFieldNames ? '' : 'parentFolderId')
    ..aI(5, _omitFieldNames ? '' : 'position')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionFolderCreateRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionFolderCreateRequest copyWith(
          void Function(CollectionFolderCreateRequest) updates) =>
      super.copyWith(
              (message) => updates(message as CollectionFolderCreateRequest))
          as CollectionFolderCreateRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionFolderCreateRequest create() =>
      CollectionFolderCreateRequest._();
  @$core.override
  CollectionFolderCreateRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CollectionFolderCreateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionFolderCreateRequest>(create);
  static CollectionFolderCreateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get workspaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set workspaceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWorkspaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkspaceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get collectionId => $_getI64(1);
  @$pb.TagNumber(2)
  set collectionId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCollectionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCollectionId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get parentFolderId => $_getI64(3);
  @$pb.TagNumber(4)
  set parentFolderId($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasParentFolderId() => $_has(3);
  @$pb.TagNumber(4)
  void clearParentFolderId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get position => $_getIZ(4);
  @$pb.TagNumber(5)
  set position($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPosition() => $_has(4);
  @$pb.TagNumber(5)
  void clearPosition() => $_clearField(5);
}

class CollectionFolderUpdateRequest extends $pb.GeneratedMessage {
  factory CollectionFolderUpdateRequest({
    $fixnum.Int64? workspaceId,
    $fixnum.Int64? collectionId,
    $fixnum.Int64? folderId,
    $core.String? name,
    $fixnum.Int64? parentFolderId,
    $core.int? position,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    if (collectionId != null) result.collectionId = collectionId;
    if (folderId != null) result.folderId = folderId;
    if (name != null) result.name = name;
    if (parentFolderId != null) result.parentFolderId = parentFolderId;
    if (position != null) result.position = position;
    return result;
  }

  CollectionFolderUpdateRequest._();

  factory CollectionFolderUpdateRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CollectionFolderUpdateRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CollectionFolderUpdateRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..aInt64(2, _omitFieldNames ? '' : 'collectionId')
    ..aInt64(3, _omitFieldNames ? '' : 'folderId')
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aInt64(5, _omitFieldNames ? '' : 'parentFolderId')
    ..aI(6, _omitFieldNames ? '' : 'position')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionFolderUpdateRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionFolderUpdateRequest copyWith(
          void Function(CollectionFolderUpdateRequest) updates) =>
      super.copyWith(
              (message) => updates(message as CollectionFolderUpdateRequest))
          as CollectionFolderUpdateRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionFolderUpdateRequest create() =>
      CollectionFolderUpdateRequest._();
  @$core.override
  CollectionFolderUpdateRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CollectionFolderUpdateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionFolderUpdateRequest>(create);
  static CollectionFolderUpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get workspaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set workspaceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWorkspaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkspaceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get collectionId => $_getI64(1);
  @$pb.TagNumber(2)
  set collectionId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCollectionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCollectionId() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get folderId => $_getI64(2);
  @$pb.TagNumber(3)
  set folderId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFolderId() => $_has(2);
  @$pb.TagNumber(3)
  void clearFolderId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get parentFolderId => $_getI64(4);
  @$pb.TagNumber(5)
  set parentFolderId($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasParentFolderId() => $_has(4);
  @$pb.TagNumber(5)
  void clearParentFolderId() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get position => $_getIZ(5);
  @$pb.TagNumber(6)
  set position($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasPosition() => $_has(5);
  @$pb.TagNumber(6)
  void clearPosition() => $_clearField(6);
}

class CollectionExampleByIdRequest extends $pb.GeneratedMessage {
  factory CollectionExampleByIdRequest({
    $fixnum.Int64? workspaceId,
    $fixnum.Int64? collectionId,
    $fixnum.Int64? endpointId,
    $fixnum.Int64? exampleId,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    if (collectionId != null) result.collectionId = collectionId;
    if (endpointId != null) result.endpointId = endpointId;
    if (exampleId != null) result.exampleId = exampleId;
    return result;
  }

  CollectionExampleByIdRequest._();

  factory CollectionExampleByIdRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CollectionExampleByIdRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CollectionExampleByIdRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..aInt64(2, _omitFieldNames ? '' : 'collectionId')
    ..aInt64(3, _omitFieldNames ? '' : 'endpointId')
    ..aInt64(4, _omitFieldNames ? '' : 'exampleId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionExampleByIdRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionExampleByIdRequest copyWith(
          void Function(CollectionExampleByIdRequest) updates) =>
      super.copyWith(
              (message) => updates(message as CollectionExampleByIdRequest))
          as CollectionExampleByIdRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionExampleByIdRequest create() =>
      CollectionExampleByIdRequest._();
  @$core.override
  CollectionExampleByIdRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CollectionExampleByIdRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionExampleByIdRequest>(create);
  static CollectionExampleByIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get workspaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set workspaceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWorkspaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkspaceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get collectionId => $_getI64(1);
  @$pb.TagNumber(2)
  set collectionId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCollectionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCollectionId() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get endpointId => $_getI64(2);
  @$pb.TagNumber(3)
  set endpointId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEndpointId() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndpointId() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get exampleId => $_getI64(3);
  @$pb.TagNumber(4)
  set exampleId($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasExampleId() => $_has(3);
  @$pb.TagNumber(4)
  void clearExampleId() => $_clearField(4);
}

class CollectionExampleCreateRequest extends $pb.GeneratedMessage {
  factory CollectionExampleCreateRequest({
    $fixnum.Int64? workspaceId,
    $fixnum.Int64? collectionId,
    $fixnum.Int64? endpointId,
    $core.String? name,
    $core.int? statusCode,
    $core.String? headersJson,
    $core.String? body,
    $core.int? position,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    if (collectionId != null) result.collectionId = collectionId;
    if (endpointId != null) result.endpointId = endpointId;
    if (name != null) result.name = name;
    if (statusCode != null) result.statusCode = statusCode;
    if (headersJson != null) result.headersJson = headersJson;
    if (body != null) result.body = body;
    if (position != null) result.position = position;
    return result;
  }

  CollectionExampleCreateRequest._();

  factory CollectionExampleCreateRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CollectionExampleCreateRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CollectionExampleCreateRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..aInt64(2, _omitFieldNames ? '' : 'collectionId')
    ..aInt64(3, _omitFieldNames ? '' : 'endpointId')
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aI(5, _omitFieldNames ? '' : 'statusCode')
    ..aOS(6, _omitFieldNames ? '' : 'headersJson')
    ..aOS(7, _omitFieldNames ? '' : 'body')
    ..aI(8, _omitFieldNames ? '' : 'position')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionExampleCreateRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionExampleCreateRequest copyWith(
          void Function(CollectionExampleCreateRequest) updates) =>
      super.copyWith(
              (message) => updates(message as CollectionExampleCreateRequest))
          as CollectionExampleCreateRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionExampleCreateRequest create() =>
      CollectionExampleCreateRequest._();
  @$core.override
  CollectionExampleCreateRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CollectionExampleCreateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionExampleCreateRequest>(create);
  static CollectionExampleCreateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get workspaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set workspaceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWorkspaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkspaceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get collectionId => $_getI64(1);
  @$pb.TagNumber(2)
  set collectionId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCollectionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCollectionId() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get endpointId => $_getI64(2);
  @$pb.TagNumber(3)
  set endpointId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEndpointId() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndpointId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get statusCode => $_getIZ(4);
  @$pb.TagNumber(5)
  set statusCode($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasStatusCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatusCode() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get headersJson => $_getSZ(5);
  @$pb.TagNumber(6)
  set headersJson($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasHeadersJson() => $_has(5);
  @$pb.TagNumber(6)
  void clearHeadersJson() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get body => $_getSZ(6);
  @$pb.TagNumber(7)
  set body($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasBody() => $_has(6);
  @$pb.TagNumber(7)
  void clearBody() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get position => $_getIZ(7);
  @$pb.TagNumber(8)
  set position($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasPosition() => $_has(7);
  @$pb.TagNumber(8)
  void clearPosition() => $_clearField(8);
}

class CollectionExampleUpdateRequest extends $pb.GeneratedMessage {
  factory CollectionExampleUpdateRequest({
    $fixnum.Int64? workspaceId,
    $fixnum.Int64? collectionId,
    $fixnum.Int64? endpointId,
    $fixnum.Int64? exampleId,
    $core.String? name,
    $core.int? statusCode,
    $core.String? headersJson,
    $core.String? body,
    $core.int? position,
  }) {
    final result = create();
    if (workspaceId != null) result.workspaceId = workspaceId;
    if (collectionId != null) result.collectionId = collectionId;
    if (endpointId != null) result.endpointId = endpointId;
    if (exampleId != null) result.exampleId = exampleId;
    if (name != null) result.name = name;
    if (statusCode != null) result.statusCode = statusCode;
    if (headersJson != null) result.headersJson = headersJson;
    if (body != null) result.body = body;
    if (position != null) result.position = position;
    return result;
  }

  CollectionExampleUpdateRequest._();

  factory CollectionExampleUpdateRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CollectionExampleUpdateRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CollectionExampleUpdateRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'workspaceId')
    ..aInt64(2, _omitFieldNames ? '' : 'collectionId')
    ..aInt64(3, _omitFieldNames ? '' : 'endpointId')
    ..aInt64(4, _omitFieldNames ? '' : 'exampleId')
    ..aOS(5, _omitFieldNames ? '' : 'name')
    ..aI(6, _omitFieldNames ? '' : 'statusCode')
    ..aOS(7, _omitFieldNames ? '' : 'headersJson')
    ..aOS(8, _omitFieldNames ? '' : 'body')
    ..aI(9, _omitFieldNames ? '' : 'position')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionExampleUpdateRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionExampleUpdateRequest copyWith(
          void Function(CollectionExampleUpdateRequest) updates) =>
      super.copyWith(
              (message) => updates(message as CollectionExampleUpdateRequest))
          as CollectionExampleUpdateRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionExampleUpdateRequest create() =>
      CollectionExampleUpdateRequest._();
  @$core.override
  CollectionExampleUpdateRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CollectionExampleUpdateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionExampleUpdateRequest>(create);
  static CollectionExampleUpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get workspaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set workspaceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWorkspaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkspaceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get collectionId => $_getI64(1);
  @$pb.TagNumber(2)
  set collectionId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCollectionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCollectionId() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get endpointId => $_getI64(2);
  @$pb.TagNumber(3)
  set endpointId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEndpointId() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndpointId() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get exampleId => $_getI64(3);
  @$pb.TagNumber(4)
  set exampleId($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasExampleId() => $_has(3);
  @$pb.TagNumber(4)
  void clearExampleId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get name => $_getSZ(4);
  @$pb.TagNumber(5)
  set name($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasName() => $_has(4);
  @$pb.TagNumber(5)
  void clearName() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get statusCode => $_getIZ(5);
  @$pb.TagNumber(6)
  set statusCode($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasStatusCode() => $_has(5);
  @$pb.TagNumber(6)
  void clearStatusCode() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get headersJson => $_getSZ(6);
  @$pb.TagNumber(7)
  set headersJson($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasHeadersJson() => $_has(6);
  @$pb.TagNumber(7)
  void clearHeadersJson() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get body => $_getSZ(7);
  @$pb.TagNumber(8)
  set body($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasBody() => $_has(7);
  @$pb.TagNumber(8)
  void clearBody() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get position => $_getIZ(8);
  @$pb.TagNumber(9)
  set position($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasPosition() => $_has(8);
  @$pb.TagNumber(9)
  void clearPosition() => $_clearField(9);
}

class CollectionItemResponse extends $pb.GeneratedMessage {
  factory CollectionItemResponse({
    CollectionItem? item,
  }) {
    final result = create();
    if (item != null) result.item = item;
    return result;
  }

  CollectionItemResponse._();

  factory CollectionItemResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CollectionItemResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CollectionItemResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aOM<CollectionItem>(1, _omitFieldNames ? '' : 'item',
        subBuilder: CollectionItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionItemResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionItemResponse copyWith(
          void Function(CollectionItemResponse) updates) =>
      super.copyWith((message) => updates(message as CollectionItemResponse))
          as CollectionItemResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionItemResponse create() => CollectionItemResponse._();
  @$core.override
  CollectionItemResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CollectionItemResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionItemResponse>(create);
  static CollectionItemResponse? _defaultInstance;

  @$pb.TagNumber(1)
  CollectionItem get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(CollectionItem value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => $_clearField(1);
  @$pb.TagNumber(1)
  CollectionItem ensureItem() => $_ensure(0);
}

class CollectionItemsResponse extends $pb.GeneratedMessage {
  factory CollectionItemsResponse({
    $core.Iterable<CollectionItem>? items,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    return result;
  }

  CollectionItemsResponse._();

  factory CollectionItemsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CollectionItemsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CollectionItemsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..pPM<CollectionItem>(1, _omitFieldNames ? '' : 'items',
        subBuilder: CollectionItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionItemsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionItemsResponse copyWith(
          void Function(CollectionItemsResponse) updates) =>
      super.copyWith((message) => updates(message as CollectionItemsResponse))
          as CollectionItemsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionItemsResponse create() => CollectionItemsResponse._();
  @$core.override
  CollectionItemsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CollectionItemsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionItemsResponse>(create);
  static CollectionItemsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<CollectionItem> get items => $_getList(0);
}

class CollectionEndpointItemResponse extends $pb.GeneratedMessage {
  factory CollectionEndpointItemResponse({
    CollectionEndpointItem? item,
  }) {
    final result = create();
    if (item != null) result.item = item;
    return result;
  }

  CollectionEndpointItemResponse._();

  factory CollectionEndpointItemResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CollectionEndpointItemResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CollectionEndpointItemResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aOM<CollectionEndpointItem>(1, _omitFieldNames ? '' : 'item',
        subBuilder: CollectionEndpointItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionEndpointItemResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionEndpointItemResponse copyWith(
          void Function(CollectionEndpointItemResponse) updates) =>
      super.copyWith(
              (message) => updates(message as CollectionEndpointItemResponse))
          as CollectionEndpointItemResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionEndpointItemResponse create() =>
      CollectionEndpointItemResponse._();
  @$core.override
  CollectionEndpointItemResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CollectionEndpointItemResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionEndpointItemResponse>(create);
  static CollectionEndpointItemResponse? _defaultInstance;

  @$pb.TagNumber(1)
  CollectionEndpointItem get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(CollectionEndpointItem value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => $_clearField(1);
  @$pb.TagNumber(1)
  CollectionEndpointItem ensureItem() => $_ensure(0);
}

class CollectionEndpointItemsResponse extends $pb.GeneratedMessage {
  factory CollectionEndpointItemsResponse({
    $core.Iterable<CollectionEndpointItem>? items,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    return result;
  }

  CollectionEndpointItemsResponse._();

  factory CollectionEndpointItemsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CollectionEndpointItemsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CollectionEndpointItemsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..pPM<CollectionEndpointItem>(1, _omitFieldNames ? '' : 'items',
        subBuilder: CollectionEndpointItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionEndpointItemsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionEndpointItemsResponse copyWith(
          void Function(CollectionEndpointItemsResponse) updates) =>
      super.copyWith(
              (message) => updates(message as CollectionEndpointItemsResponse))
          as CollectionEndpointItemsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionEndpointItemsResponse create() =>
      CollectionEndpointItemsResponse._();
  @$core.override
  CollectionEndpointItemsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CollectionEndpointItemsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionEndpointItemsResponse>(
          create);
  static CollectionEndpointItemsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<CollectionEndpointItem> get items => $_getList(0);
}

class CollectionFolderItemResponse extends $pb.GeneratedMessage {
  factory CollectionFolderItemResponse({
    CollectionFolderItem? item,
  }) {
    final result = create();
    if (item != null) result.item = item;
    return result;
  }

  CollectionFolderItemResponse._();

  factory CollectionFolderItemResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CollectionFolderItemResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CollectionFolderItemResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aOM<CollectionFolderItem>(1, _omitFieldNames ? '' : 'item',
        subBuilder: CollectionFolderItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionFolderItemResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionFolderItemResponse copyWith(
          void Function(CollectionFolderItemResponse) updates) =>
      super.copyWith(
              (message) => updates(message as CollectionFolderItemResponse))
          as CollectionFolderItemResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionFolderItemResponse create() =>
      CollectionFolderItemResponse._();
  @$core.override
  CollectionFolderItemResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CollectionFolderItemResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionFolderItemResponse>(create);
  static CollectionFolderItemResponse? _defaultInstance;

  @$pb.TagNumber(1)
  CollectionFolderItem get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(CollectionFolderItem value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => $_clearField(1);
  @$pb.TagNumber(1)
  CollectionFolderItem ensureItem() => $_ensure(0);
}

class CollectionFolderItemsResponse extends $pb.GeneratedMessage {
  factory CollectionFolderItemsResponse({
    $core.Iterable<CollectionFolderItem>? items,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    return result;
  }

  CollectionFolderItemsResponse._();

  factory CollectionFolderItemsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CollectionFolderItemsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CollectionFolderItemsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..pPM<CollectionFolderItem>(1, _omitFieldNames ? '' : 'items',
        subBuilder: CollectionFolderItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionFolderItemsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionFolderItemsResponse copyWith(
          void Function(CollectionFolderItemsResponse) updates) =>
      super.copyWith(
              (message) => updates(message as CollectionFolderItemsResponse))
          as CollectionFolderItemsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionFolderItemsResponse create() =>
      CollectionFolderItemsResponse._();
  @$core.override
  CollectionFolderItemsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CollectionFolderItemsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionFolderItemsResponse>(create);
  static CollectionFolderItemsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<CollectionFolderItem> get items => $_getList(0);
}

class CollectionExampleItemResponse extends $pb.GeneratedMessage {
  factory CollectionExampleItemResponse({
    CollectionExampleItem? item,
  }) {
    final result = create();
    if (item != null) result.item = item;
    return result;
  }

  CollectionExampleItemResponse._();

  factory CollectionExampleItemResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CollectionExampleItemResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CollectionExampleItemResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aOM<CollectionExampleItem>(1, _omitFieldNames ? '' : 'item',
        subBuilder: CollectionExampleItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionExampleItemResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionExampleItemResponse copyWith(
          void Function(CollectionExampleItemResponse) updates) =>
      super.copyWith(
              (message) => updates(message as CollectionExampleItemResponse))
          as CollectionExampleItemResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionExampleItemResponse create() =>
      CollectionExampleItemResponse._();
  @$core.override
  CollectionExampleItemResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CollectionExampleItemResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionExampleItemResponse>(create);
  static CollectionExampleItemResponse? _defaultInstance;

  @$pb.TagNumber(1)
  CollectionExampleItem get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(CollectionExampleItem value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => $_clearField(1);
  @$pb.TagNumber(1)
  CollectionExampleItem ensureItem() => $_ensure(0);
}

class CollectionExampleItemsResponse extends $pb.GeneratedMessage {
  factory CollectionExampleItemsResponse({
    $core.Iterable<CollectionExampleItem>? items,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    return result;
  }

  CollectionExampleItemsResponse._();

  factory CollectionExampleItemsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CollectionExampleItemsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CollectionExampleItemsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..pPM<CollectionExampleItem>(1, _omitFieldNames ? '' : 'items',
        subBuilder: CollectionExampleItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionExampleItemsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionExampleItemsResponse copyWith(
          void Function(CollectionExampleItemsResponse) updates) =>
      super.copyWith(
              (message) => updates(message as CollectionExampleItemsResponse))
          as CollectionExampleItemsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionExampleItemsResponse create() =>
      CollectionExampleItemsResponse._();
  @$core.override
  CollectionExampleItemsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CollectionExampleItemsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionExampleItemsResponse>(create);
  static CollectionExampleItemsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<CollectionExampleItem> get items => $_getList(0);
}

class CollectionActionResponse extends $pb.GeneratedMessage {
  factory CollectionActionResponse({
    $core.String? status,
  }) {
    final result = create();
    if (status != null) result.status = status;
    return result;
  }

  CollectionActionResponse._();

  factory CollectionActionResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CollectionActionResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CollectionActionResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'role.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionActionResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CollectionActionResponse copyWith(
          void Function(CollectionActionResponse) updates) =>
      super.copyWith((message) => updates(message as CollectionActionResponse))
          as CollectionActionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionActionResponse create() => CollectionActionResponse._();
  @$core.override
  CollectionActionResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CollectionActionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionActionResponse>(create);
  static CollectionActionResponse? _defaultInstance;

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
