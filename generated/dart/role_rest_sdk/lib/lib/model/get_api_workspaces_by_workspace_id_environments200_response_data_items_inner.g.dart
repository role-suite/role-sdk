// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_environments200_response_data_items_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner
    extends GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner {
  @override
  final String createdAt;
  @override
  final int createdByUserId;
  @override
  final int id;
  @override
  final String name;
  @override
  final String updatedAt;
  @override
  final int workspaceId;

  factory _$GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner(
          [void Function(
                  GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInnerBuilder)?
              updates]) =>
      (GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInnerBuilder()
            ..update(updates))
          ._build();

  _$GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner._(
      {required this.createdAt,
      required this.createdByUserId,
      required this.id,
      required this.name,
      required this.updatedAt,
      required this.workspaceId})
      : super._();
  @override
  GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner rebuild(
          void Function(
                  GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInnerBuilder
      toBuilder() =>
          GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInnerBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner &&
        createdAt == other.createdAt &&
        createdByUserId == other.createdByUserId &&
        id == other.id &&
        name == other.name &&
        updatedAt == other.updatedAt &&
        workspaceId == other.workspaceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, createdByUserId.hashCode);
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
            r'GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner')
          ..add('createdAt', createdAt)
          ..add('createdByUserId', createdByUserId)
          ..add('id', id)
          ..add('name', name)
          ..add('updatedAt', updatedAt)
          ..add('workspaceId', workspaceId))
        .toString();
  }
}

class GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInnerBuilder
    implements
        Builder<
            GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner,
            GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInnerBuilder> {
  _$GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner? _$v;

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

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  int? _workspaceId;
  int? get workspaceId => _$this._workspaceId;
  set workspaceId(int? workspaceId) => _$this._workspaceId = workspaceId;

  GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInnerBuilder() {
    GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner
        ._defaults(this);
  }

  GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInnerBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _createdByUserId = $v.createdByUserId;
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
      GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner
          other) {
    _$v = other
        as _$GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner;
  }

  @override
  void update(
      void Function(
              GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner build() =>
      _build();

  _$GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner
      _build() {
    final _$result = _$v ??
        _$GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner._(
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner',
              'createdAt'),
          createdByUserId: BuiltValueNullFieldError.checkNotNull(
              createdByUserId,
              r'GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner',
              'createdByUserId'),
          id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner',
              'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner',
              'name'),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt,
              r'GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner',
              'updatedAt'),
          workspaceId: BuiltValueNullFieldError.checkNotNull(
              workspaceId,
              r'GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner',
              'workspaceId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
