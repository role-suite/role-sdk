// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_environments_by_environment_id_variables200_response_data_items_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner
    extends GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner {
  @override
  final String createdAt;
  @override
  final int createdByUserId;
  @override
  final bool enabled;
  @override
  final int environmentId;
  @override
  final int id;
  @override
  final bool isSecret;
  @override
  final String key;
  @override
  final int position;
  @override
  final String updatedAt;
  @override
  final String value;

  factory _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner(
          [void Function(
                  GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInnerBuilder)?
              updates]) =>
      (GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInnerBuilder()
            ..update(updates))
          ._build();

  _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner._(
      {required this.createdAt,
      required this.createdByUserId,
      required this.enabled,
      required this.environmentId,
      required this.id,
      required this.isSecret,
      required this.key,
      required this.position,
      required this.updatedAt,
      required this.value})
      : super._();
  @override
  GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner
      rebuild(
              void Function(
                      GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInnerBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInnerBuilder
      toBuilder() =>
          GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInnerBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner &&
        createdAt == other.createdAt &&
        createdByUserId == other.createdByUserId &&
        enabled == other.enabled &&
        environmentId == other.environmentId &&
        id == other.id &&
        isSecret == other.isSecret &&
        key == other.key &&
        position == other.position &&
        updatedAt == other.updatedAt &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, createdByUserId.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, environmentId.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, isSecret.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner')
          ..add('createdAt', createdAt)
          ..add('createdByUserId', createdByUserId)
          ..add('enabled', enabled)
          ..add('environmentId', environmentId)
          ..add('id', id)
          ..add('isSecret', isSecret)
          ..add('key', key)
          ..add('position', position)
          ..add('updatedAt', updatedAt)
          ..add('value', value))
        .toString();
  }
}

class GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInnerBuilder
    implements
        Builder<
            GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner,
            GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInnerBuilder> {
  _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner?
      _$v;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  int? _createdByUserId;
  int? get createdByUserId => _$this._createdByUserId;
  set createdByUserId(int? createdByUserId) =>
      _$this._createdByUserId = createdByUserId;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  int? _environmentId;
  int? get environmentId => _$this._environmentId;
  set environmentId(int? environmentId) =>
      _$this._environmentId = environmentId;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _isSecret;
  bool? get isSecret => _$this._isSecret;
  set isSecret(bool? isSecret) => _$this._isSecret = isSecret;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  int? _position;
  int? get position => _$this._position;
  set position(int? position) => _$this._position = position;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInnerBuilder() {
    GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner
        ._defaults(this);
  }

  GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInnerBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _createdByUserId = $v.createdByUserId;
      _enabled = $v.enabled;
      _environmentId = $v.environmentId;
      _id = $v.id;
      _isSecret = $v.isSecret;
      _key = $v.key;
      _position = $v.position;
      _updatedAt = $v.updatedAt;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner
          other) {
    _$v = other
        as _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner;
  }

  @override
  void update(
      void Function(
              GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner
      build() => _build();

  _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner
      _build() {
    final _$result = _$v ??
        _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner
            ._(
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner',
              'createdAt'),
          createdByUserId: BuiltValueNullFieldError.checkNotNull(
              createdByUserId,
              r'GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner',
              'createdByUserId'),
          enabled: BuiltValueNullFieldError.checkNotNull(
              enabled,
              r'GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner',
              'enabled'),
          environmentId: BuiltValueNullFieldError.checkNotNull(
              environmentId,
              r'GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner',
              'environmentId'),
          id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner',
              'id'),
          isSecret: BuiltValueNullFieldError.checkNotNull(
              isSecret,
              r'GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner',
              'isSecret'),
          key: BuiltValueNullFieldError.checkNotNull(
              key,
              r'GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner',
              'key'),
          position: BuiltValueNullFieldError.checkNotNull(
              position,
              r'GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner',
              'position'),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt,
              r'GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner',
              'updatedAt'),
          value: BuiltValueNullFieldError.checkNotNull(
              value,
              r'GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner',
              'value'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
