// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs_request_source_one_of_request_auth_one_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf
    extends PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf {
  @override
  final String token;
  @override
  final String type;

  factory _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOfBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOfBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf._(
      {required this.token, required this.type})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf rebuild(
          void Function(
                  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOfBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOfBuilder
      toBuilder() =>
          PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOfBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf &&
        token == other.token &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf')
          ..add('token', token)
          ..add('type', type))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOfBuilder
    implements
        Builder<
            PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf,
            PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOfBuilder> {
  _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOfBuilder() {
    PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf
        ._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOfBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf
          other) {
    _$v = other
        as _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf;
  }

  @override
  void update(
      void Function(
              PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOfBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf
      build() => _build();

  _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf
      _build() {
    final _$result = _$v ??
        _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf
            ._(
          token: BuiltValueNullFieldError.checkNotNull(
              token,
              r'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf',
              'token'),
          type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf',
              'type'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
