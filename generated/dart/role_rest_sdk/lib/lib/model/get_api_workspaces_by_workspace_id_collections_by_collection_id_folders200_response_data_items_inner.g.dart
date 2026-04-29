// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_collections_by_collection_id_folders200_response_data_items_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner
    extends GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner {
  @override
  final int collectionId;
  @override
  final String createdAt;
  @override
  final int createdByUserId;
  @override
  final int id;
  @override
  final String name;
  @override
  final PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId
      parentFolderId;
  @override
  final int position;
  @override
  final String updatedAt;

  factory _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner(
          [void Function(
                  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInnerBuilder)?
              updates]) =>
      (GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInnerBuilder()
            ..update(updates))
          ._build();

  _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner._(
      {required this.collectionId,
      required this.createdAt,
      required this.createdByUserId,
      required this.id,
      required this.name,
      required this.parentFolderId,
      required this.position,
      required this.updatedAt})
      : super._();
  @override
  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner
      rebuild(
              void Function(
                      GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInnerBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInnerBuilder
      toBuilder() =>
          GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInnerBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner &&
        collectionId == other.collectionId &&
        createdAt == other.createdAt &&
        createdByUserId == other.createdByUserId &&
        id == other.id &&
        name == other.name &&
        parentFolderId == other.parentFolderId &&
        position == other.position &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, collectionId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, createdByUserId.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, parentFolderId.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner')
          ..add('collectionId', collectionId)
          ..add('createdAt', createdAt)
          ..add('createdByUserId', createdByUserId)
          ..add('id', id)
          ..add('name', name)
          ..add('parentFolderId', parentFolderId)
          ..add('position', position)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInnerBuilder
    implements
        Builder<
            GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner,
            GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInnerBuilder> {
  _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner?
      _$v;

  int? _collectionId;
  int? get collectionId => _$this._collectionId;
  set collectionId(int? collectionId) => _$this._collectionId = collectionId;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  int? _createdByUserId;
  int? get createdByUserId => _$this._createdByUserId;
  set createdByUserId(int? createdByUserId) =>
      _$this._createdByUserId = createdByUserId;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderIdBuilder?
      _parentFolderId;
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderIdBuilder
      get parentFolderId => _$this._parentFolderId ??=
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderIdBuilder();
  set parentFolderId(
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderIdBuilder?
              parentFolderId) =>
      _$this._parentFolderId = parentFolderId;

  int? _position;
  int? get position => _$this._position;
  set position(int? position) => _$this._position = position;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInnerBuilder() {
    GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner
        ._defaults(this);
  }

  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInnerBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _collectionId = $v.collectionId;
      _createdAt = $v.createdAt;
      _createdByUserId = $v.createdByUserId;
      _id = $v.id;
      _name = $v.name;
      _parentFolderId = $v.parentFolderId.toBuilder();
      _position = $v.position;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner
          other) {
    _$v = other
        as _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner;
  }

  @override
  void update(
      void Function(
              GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner
      build() => _build();

  _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner
      _build() {
    _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner
        _$result;
    try {
      _$result = _$v ??
          _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner
              ._(
            collectionId: BuiltValueNullFieldError.checkNotNull(
                collectionId,
                r'GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner',
                'collectionId'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt,
                r'GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner',
                'createdAt'),
            createdByUserId: BuiltValueNullFieldError.checkNotNull(
                createdByUserId,
                r'GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner',
                'createdByUserId'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner',
                'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner',
                'name'),
            parentFolderId: parentFolderId.build(),
            position: BuiltValueNullFieldError.checkNotNull(
                position,
                r'GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner',
                'position'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt,
                r'GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner',
                'updatedAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parentFolderId';
        parentFolderId.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
