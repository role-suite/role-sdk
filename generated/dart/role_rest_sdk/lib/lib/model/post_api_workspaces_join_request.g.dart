// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_join_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesJoinRequest extends PostApiWorkspacesJoinRequest {
  @override
  final String token;

  factory _$PostApiWorkspacesJoinRequest(
          [void Function(PostApiWorkspacesJoinRequestBuilder)? updates]) =>
      (PostApiWorkspacesJoinRequestBuilder()..update(updates))._build();

  _$PostApiWorkspacesJoinRequest._({required this.token}) : super._();
  @override
  PostApiWorkspacesJoinRequest rebuild(
          void Function(PostApiWorkspacesJoinRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesJoinRequestBuilder toBuilder() =>
      PostApiWorkspacesJoinRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiWorkspacesJoinRequest && token == other.token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostApiWorkspacesJoinRequest')
          ..add('token', token))
        .toString();
  }
}

class PostApiWorkspacesJoinRequestBuilder
    implements
        Builder<PostApiWorkspacesJoinRequest,
            PostApiWorkspacesJoinRequestBuilder> {
  _$PostApiWorkspacesJoinRequest? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  PostApiWorkspacesJoinRequestBuilder() {
    PostApiWorkspacesJoinRequest._defaults(this);
  }

  PostApiWorkspacesJoinRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiWorkspacesJoinRequest other) {
    _$v = other as _$PostApiWorkspacesJoinRequest;
  }

  @override
  void update(void Function(PostApiWorkspacesJoinRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesJoinRequest build() => _build();

  _$PostApiWorkspacesJoinRequest _build() {
    final _$result = _$v ??
        _$PostApiWorkspacesJoinRequest._(
          token: BuiltValueNullFieldError.checkNotNull(
              token, r'PostApiWorkspacesJoinRequest', 'token'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
