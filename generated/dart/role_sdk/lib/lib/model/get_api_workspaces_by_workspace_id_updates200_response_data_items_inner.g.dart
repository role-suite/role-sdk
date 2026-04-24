// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_updates200_response_data_items_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner
    extends GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner {
  @override
  final String action;
  @override
  final PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId
      actorUserId;
  @override
  final String createdAt;
  @override
  final String entity;
  @override
  final int entityId;
  @override
  final int id;
  @override
  final GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload
      payload;
  @override
  final int workspaceId;

  factory _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner(
          [void Function(
                  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerBuilder)?
              updates]) =>
      (GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerBuilder()
            ..update(updates))
          ._build();

  _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner._(
      {required this.action,
      required this.actorUserId,
      required this.createdAt,
      required this.entity,
      required this.entityId,
      required this.id,
      required this.payload,
      required this.workspaceId})
      : super._();
  @override
  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner rebuild(
          void Function(
                  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerBuilder
      toBuilder() =>
          GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner &&
        action == other.action &&
        actorUserId == other.actorUserId &&
        createdAt == other.createdAt &&
        entity == other.entity &&
        entityId == other.entityId &&
        id == other.id &&
        payload == other.payload &&
        workspaceId == other.workspaceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, actorUserId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, entity.hashCode);
    _$hash = $jc(_$hash, entityId.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, payload.hashCode);
    _$hash = $jc(_$hash, workspaceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner')
          ..add('action', action)
          ..add('actorUserId', actorUserId)
          ..add('createdAt', createdAt)
          ..add('entity', entity)
          ..add('entityId', entityId)
          ..add('id', id)
          ..add('payload', payload)
          ..add('workspaceId', workspaceId))
        .toString();
  }
}

class GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerBuilder
    implements
        Builder<GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner,
            GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerBuilder> {
  _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner? _$v;

  String? _action;
  String? get action => _$this._action;
  set action(String? action) => _$this._action = action;

  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderIdBuilder?
      _actorUserId;
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderIdBuilder
      get actorUserId => _$this._actorUserId ??=
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderIdBuilder();
  set actorUserId(
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderIdBuilder?
              actorUserId) =>
      _$this._actorUserId = actorUserId;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _entity;
  String? get entity => _$this._entity;
  set entity(String? entity) => _$this._entity = entity;

  int? _entityId;
  int? get entityId => _$this._entityId;
  set entityId(int? entityId) => _$this._entityId = entityId;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayloadBuilder?
      _payload;
  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayloadBuilder
      get payload => _$this._payload ??=
          GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayloadBuilder();
  set payload(
          GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayloadBuilder?
              payload) =>
      _$this._payload = payload;

  int? _workspaceId;
  int? get workspaceId => _$this._workspaceId;
  set workspaceId(int? workspaceId) => _$this._workspaceId = workspaceId;

  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerBuilder() {
    GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner._defaults(
        this);
  }

  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _action = $v.action;
      _actorUserId = $v.actorUserId.toBuilder();
      _createdAt = $v.createdAt;
      _entity = $v.entity;
      _entityId = $v.entityId;
      _id = $v.id;
      _payload = $v.payload.toBuilder();
      _workspaceId = $v.workspaceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner other) {
    _$v = other
        as _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner;
  }

  @override
  void update(
      void Function(
              GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner build() =>
      _build();

  _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner _build() {
    _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner _$result;
    try {
      _$result = _$v ??
          _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner._(
            action: BuiltValueNullFieldError.checkNotNull(
                action,
                r'GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner',
                'action'),
            actorUserId: actorUserId.build(),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt,
                r'GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner',
                'createdAt'),
            entity: BuiltValueNullFieldError.checkNotNull(
                entity,
                r'GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner',
                'entity'),
            entityId: BuiltValueNullFieldError.checkNotNull(
                entityId,
                r'GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner',
                'entityId'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner',
                'id'),
            payload: payload.build(),
            workspaceId: BuiltValueNullFieldError.checkNotNull(
                workspaceId,
                r'GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner',
                'workspaceId'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'actorUserId';
        actorUserId.build();

        _$failedField = 'payload';
        payload.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner',
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
