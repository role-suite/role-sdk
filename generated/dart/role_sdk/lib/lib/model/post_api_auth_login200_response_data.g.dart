// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_auth_login200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiAuthLogin200ResponseData
    extends PostApiAuthLogin200ResponseData {
  @override
  final BuiltList<PostApiAuthLogin200ResponseDataMembershipsInner> memberships;
  @override
  final PostApiAuthLogin200ResponseDataTokens tokens;
  @override
  final PostApiAuthLogin200ResponseDataUser user;
  @override
  final PostApiAuthLogin200ResponseDataWorkspace workspace;

  factory _$PostApiAuthLogin200ResponseData(
          [void Function(PostApiAuthLogin200ResponseDataBuilder)? updates]) =>
      (PostApiAuthLogin200ResponseDataBuilder()..update(updates))._build();

  _$PostApiAuthLogin200ResponseData._(
      {required this.memberships,
      required this.tokens,
      required this.user,
      required this.workspace})
      : super._();
  @override
  PostApiAuthLogin200ResponseData rebuild(
          void Function(PostApiAuthLogin200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiAuthLogin200ResponseDataBuilder toBuilder() =>
      PostApiAuthLogin200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiAuthLogin200ResponseData &&
        memberships == other.memberships &&
        tokens == other.tokens &&
        user == other.user &&
        workspace == other.workspace;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, memberships.hashCode);
    _$hash = $jc(_$hash, tokens.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, workspace.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostApiAuthLogin200ResponseData')
          ..add('memberships', memberships)
          ..add('tokens', tokens)
          ..add('user', user)
          ..add('workspace', workspace))
        .toString();
  }
}

class PostApiAuthLogin200ResponseDataBuilder
    implements
        Builder<PostApiAuthLogin200ResponseData,
            PostApiAuthLogin200ResponseDataBuilder> {
  _$PostApiAuthLogin200ResponseData? _$v;

  ListBuilder<PostApiAuthLogin200ResponseDataMembershipsInner>? _memberships;
  ListBuilder<PostApiAuthLogin200ResponseDataMembershipsInner>
      get memberships => _$this._memberships ??=
          ListBuilder<PostApiAuthLogin200ResponseDataMembershipsInner>();
  set memberships(
          ListBuilder<PostApiAuthLogin200ResponseDataMembershipsInner>?
              memberships) =>
      _$this._memberships = memberships;

  PostApiAuthLogin200ResponseDataTokensBuilder? _tokens;
  PostApiAuthLogin200ResponseDataTokensBuilder get tokens =>
      _$this._tokens ??= PostApiAuthLogin200ResponseDataTokensBuilder();
  set tokens(PostApiAuthLogin200ResponseDataTokensBuilder? tokens) =>
      _$this._tokens = tokens;

  PostApiAuthLogin200ResponseDataUserBuilder? _user;
  PostApiAuthLogin200ResponseDataUserBuilder get user =>
      _$this._user ??= PostApiAuthLogin200ResponseDataUserBuilder();
  set user(PostApiAuthLogin200ResponseDataUserBuilder? user) =>
      _$this._user = user;

  PostApiAuthLogin200ResponseDataWorkspaceBuilder? _workspace;
  PostApiAuthLogin200ResponseDataWorkspaceBuilder get workspace =>
      _$this._workspace ??= PostApiAuthLogin200ResponseDataWorkspaceBuilder();
  set workspace(PostApiAuthLogin200ResponseDataWorkspaceBuilder? workspace) =>
      _$this._workspace = workspace;

  PostApiAuthLogin200ResponseDataBuilder() {
    PostApiAuthLogin200ResponseData._defaults(this);
  }

  PostApiAuthLogin200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _memberships = $v.memberships.toBuilder();
      _tokens = $v.tokens.toBuilder();
      _user = $v.user.toBuilder();
      _workspace = $v.workspace.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiAuthLogin200ResponseData other) {
    _$v = other as _$PostApiAuthLogin200ResponseData;
  }

  @override
  void update(void Function(PostApiAuthLogin200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiAuthLogin200ResponseData build() => _build();

  _$PostApiAuthLogin200ResponseData _build() {
    _$PostApiAuthLogin200ResponseData _$result;
    try {
      _$result = _$v ??
          _$PostApiAuthLogin200ResponseData._(
            memberships: memberships.build(),
            tokens: tokens.build(),
            user: user.build(),
            workspace: workspace.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'memberships';
        memberships.build();
        _$failedField = 'tokens';
        tokens.build();
        _$failedField = 'user';
        user.build();
        _$failedField = 'workspace';
        workspace.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostApiAuthLogin200ResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
