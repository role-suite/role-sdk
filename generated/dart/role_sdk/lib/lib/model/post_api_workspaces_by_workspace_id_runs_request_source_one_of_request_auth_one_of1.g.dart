// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs_request_source_one_of_request_auth_one_of1.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1
    extends PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1 {
  @override
  final String password;
  @override
  final String type;
  @override
  final String username;

  factory _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1Builder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1Builder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1._(
      {required this.password, required this.type, required this.username})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1 rebuild(
          void Function(
                  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1Builder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1Builder
      toBuilder() =>
          PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1Builder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1 &&
        password == other.password &&
        type == other.type &&
        username == other.username;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1')
          ..add('password', password)
          ..add('type', type)
          ..add('username', username))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1Builder
    implements
        Builder<
            PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1,
            PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1Builder> {
  _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1? _$v;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1Builder() {
    PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1
        ._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1Builder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _password = $v.password;
      _type = $v.type;
      _username = $v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1
          other) {
    _$v = other
        as _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1;
  }

  @override
  void update(
      void Function(
              PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1Builder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1
      build() => _build();

  _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1
      _build() {
    final _$result = _$v ??
        _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1
            ._(
          password: BuiltValueNullFieldError.checkNotNull(
              password,
              r'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1',
              'password'),
          type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1',
              'type'),
          username: BuiltValueNullFieldError.checkNotNull(
              username,
              r'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1',
              'username'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
