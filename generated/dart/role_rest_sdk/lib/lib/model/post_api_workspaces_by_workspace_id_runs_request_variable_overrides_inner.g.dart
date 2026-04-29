// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs_request_variable_overrides_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner
    extends PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner {
  @override
  final String key;
  @override
  final String value;

  factory _$PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInnerBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInnerBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner._(
      {required this.key, required this.value})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner rebuild(
          void Function(
                  PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInnerBuilder
      toBuilder() =>
          PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInnerBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner &&
        key == other.key &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner')
          ..add('key', key)
          ..add('value', value))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInnerBuilder
    implements
        Builder<PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner,
            PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInnerBuilder> {
  _$PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInnerBuilder() {
    PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner._defaults(
        this);
  }

  PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInnerBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner other) {
    _$v = other
        as _$PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner;
  }

  @override
  void update(
      void Function(
              PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner build() =>
      _build();

  _$PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner _build() {
    final _$result = _$v ??
        _$PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner._(
          key: BuiltValueNullFieldError.checkNotNull(
              key,
              r'PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner',
              'key'),
          value: BuiltValueNullFieldError.checkNotNull(
              value,
              r'PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner',
              'value'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
