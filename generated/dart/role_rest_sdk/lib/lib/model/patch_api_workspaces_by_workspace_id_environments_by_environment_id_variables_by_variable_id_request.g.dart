// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patch_api_workspaces_by_workspace_id_environments_by_environment_id_variables_by_variable_id_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest
    extends PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest {
  @override
  final bool? enabled;
  @override
  final bool? isSecret;
  @override
  final String? key;
  @override
  final int? position;
  @override
  final String? value;

  factory _$PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest(
          [void Function(
                  PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequestBuilder)?
              updates]) =>
      (PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequestBuilder()
            ..update(updates))
          ._build();

  _$PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest._(
      {this.enabled, this.isSecret, this.key, this.position, this.value})
      : super._();
  @override
  PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest
      rebuild(
              void Function(
                      PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequestBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequestBuilder
      toBuilder() =>
          PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequestBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest &&
        enabled == other.enabled &&
        isSecret == other.isSecret &&
        key == other.key &&
        position == other.position &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, isSecret.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest')
          ..add('enabled', enabled)
          ..add('isSecret', isSecret)
          ..add('key', key)
          ..add('position', position)
          ..add('value', value))
        .toString();
  }
}

class PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequestBuilder
    implements
        Builder<
            PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest,
            PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequestBuilder> {
  _$PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest?
      _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  bool? _isSecret;
  bool? get isSecret => _$this._isSecret;
  set isSecret(bool? isSecret) => _$this._isSecret = isSecret;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  int? _position;
  int? get position => _$this._position;
  set position(int? position) => _$this._position = position;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequestBuilder() {
    PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest
        ._defaults(this);
  }

  PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequestBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _isSecret = $v.isSecret;
      _key = $v.key;
      _position = $v.position;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest
          other) {
    _$v = other
        as _$PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest;
  }

  @override
  void update(
      void Function(
              PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest
      build() => _build();

  _$PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest
      _build() {
    final _$result = _$v ??
        _$PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest
            ._(
          enabled: enabled,
          isSecret: isSecret,
          key: key,
          position: position,
          value: value,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
