// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs_request_source_one_of_request_auth.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth
    extends PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth {
  @override
  final OneOf oneOf;

  factory _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth._(
      {required this.oneOf})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth rebuild(
          void Function(
                  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthBuilder
      toBuilder() =>
          PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth &&
        oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthBuilder
    implements
        Builder<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth,
            PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthBuilder> {
  _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthBuilder() {
    PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth._defaults(
        this);
  }

  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth other) {
    _$v = other
        as _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth;
  }

  @override
  void update(
      void Function(
              PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth build() =>
      _build();

  _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth _build() {
    final _$result = _$v ??
        _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf,
              r'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth',
              'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
