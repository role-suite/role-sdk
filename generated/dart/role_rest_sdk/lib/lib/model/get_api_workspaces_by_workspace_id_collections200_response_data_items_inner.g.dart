// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_collections200_response_data_items_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner
    extends GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner {
  @override
  final int? legacyId;
  @override
  final String createdAt;
  @override
  final int createdByUserId;
  @override
  final GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription
      description;
  @override
  final int id;
  @override
  final String name;
  @override
  final String updatedAt;
  @override
  final int workspaceId;

  factory _$GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner(
          [void Function(
                  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerBuilder)?
              updates]) =>
      (GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerBuilder()
            ..update(updates))
          ._build();

  _$GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner._(
      {this.legacyId,
      required this.createdAt,
      required this.createdByUserId,
      required this.description,
      required this.id,
      required this.name,
      required this.updatedAt,
      required this.workspaceId})
      : super._();
  @override
  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner rebuild(
          void Function(
                  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerBuilder
      toBuilder() =>
          GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner &&
        legacyId == other.legacyId &&
        createdAt == other.createdAt &&
        createdByUserId == other.createdByUserId &&
        description == other.description &&
        id == other.id &&
        name == other.name &&
        updatedAt == other.updatedAt &&
        workspaceId == other.workspaceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, legacyId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, createdByUserId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, workspaceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner')
          ..add('legacyId', legacyId)
          ..add('createdAt', createdAt)
          ..add('createdByUserId', createdByUserId)
          ..add('description', description)
          ..add('id', id)
          ..add('name', name)
          ..add('updatedAt', updatedAt)
          ..add('workspaceId', workspaceId))
        .toString();
  }
}

class GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerBuilder
    implements
        Builder<
            GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner,
            GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerBuilder> {
  _$GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner? _$v;

  int? _legacyId;
  int? get legacyId => _$this._legacyId;
  set legacyId(int? legacyId) => _$this._legacyId = legacyId;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  int? _createdByUserId;
  int? get createdByUserId => _$this._createdByUserId;
  set createdByUserId(int? createdByUserId) =>
      _$this._createdByUserId = createdByUserId;

  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescriptionBuilder?
      _description;
  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescriptionBuilder
      get description => _$this._description ??=
          GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescriptionBuilder();
  set description(
          GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescriptionBuilder?
              description) =>
      _$this._description = description;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  int? _workspaceId;
  int? get workspaceId => _$this._workspaceId;
  set workspaceId(int? workspaceId) => _$this._workspaceId = workspaceId;

  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerBuilder() {
    GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner._defaults(
        this);
  }

  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _legacyId = $v.legacyId;
      _createdAt = $v.createdAt;
      _createdByUserId = $v.createdByUserId;
      _description = $v.description.toBuilder();
      _id = $v.id;
      _name = $v.name;
      _updatedAt = $v.updatedAt;
      _workspaceId = $v.workspaceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner other) {
    _$v = other
        as _$GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner;
  }

  @override
  void update(
      void Function(
              GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner build() =>
      _build();

  _$GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner _build() {
    _$GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner
        _$result;
    try {
      _$result = _$v ??
          _$GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner._(
            legacyId: legacyId,
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt,
                r'GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner',
                'createdAt'),
            createdByUserId: BuiltValueNullFieldError.checkNotNull(
                createdByUserId,
                r'GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner',
                'createdByUserId'),
            description: description.build(),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner',
                'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner',
                'name'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt,
                r'GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner',
                'updatedAt'),
            workspaceId: BuiltValueNullFieldError.checkNotNull(
                workspaceId,
                r'GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner',
                'workspaceId'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'description';
        description.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner',
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
