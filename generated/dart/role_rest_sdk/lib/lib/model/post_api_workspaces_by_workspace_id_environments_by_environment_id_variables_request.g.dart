// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_environments_by_environment_id_variables_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequest
    extends PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequest {
  @override
  final bool? enabled;
  @override
  final bool? isSecret;
  @override
  final String key;
  @override
  final int? position;
  @override
  final String value;

  factory _$PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequest(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequestBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequestBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequest._(
      {this.enabled,
      this.isSecret,
      required this.key,
      this.position,
      required this.value})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequest rebuild(
          void Function(
                  PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequestBuilder
      toBuilder() =>
          PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequestBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequest &&
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
            r'PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequest')
          ..add('enabled', enabled)
          ..add('isSecret', isSecret)
          ..add('key', key)
          ..add('position', position)
          ..add('value', value))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequestBuilder
    implements
        Builder<
            PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequest,
            PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequestBuilder> {
  _$PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequest?
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

  PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequestBuilder() {
    PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequest
        ._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequestBuilder
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
      PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequest
          other) {
    _$v = other
        as _$PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequest;
  }

  @override
  void update(
      void Function(
              PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequest
      build() => _build();

  _$PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequest
      _build() {
    final _$result = _$v ??
        _$PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequest
            ._(
          enabled: enabled,
          isSecret: isSecret,
          key: BuiltValueNullFieldError.checkNotNull(
              key,
              r'PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequest',
              'key'),
          position: position,
          value: BuiltValueNullFieldError.checkNotNull(
              value,
              r'PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequest',
              'value'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
