// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_auth_logout_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiAuthLogoutRequest extends PostApiAuthLogoutRequest {
  @override
  final String refreshToken;

  factory _$PostApiAuthLogoutRequest(
          [void Function(PostApiAuthLogoutRequestBuilder)? updates]) =>
      (PostApiAuthLogoutRequestBuilder()..update(updates))._build();

  _$PostApiAuthLogoutRequest._({required this.refreshToken}) : super._();
  @override
  PostApiAuthLogoutRequest rebuild(
          void Function(PostApiAuthLogoutRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiAuthLogoutRequestBuilder toBuilder() =>
      PostApiAuthLogoutRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiAuthLogoutRequest &&
        refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostApiAuthLogoutRequest')
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class PostApiAuthLogoutRequestBuilder
    implements
        Builder<PostApiAuthLogoutRequest, PostApiAuthLogoutRequestBuilder> {
  _$PostApiAuthLogoutRequest? _$v;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  PostApiAuthLogoutRequestBuilder() {
    PostApiAuthLogoutRequest._defaults(this);
  }

  PostApiAuthLogoutRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refreshToken = $v.refreshToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiAuthLogoutRequest other) {
    _$v = other as _$PostApiAuthLogoutRequest;
  }

  @override
  void update(void Function(PostApiAuthLogoutRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiAuthLogoutRequest build() => _build();

  _$PostApiAuthLogoutRequest _build() {
    final _$result = _$v ??
        _$PostApiAuthLogoutRequest._(
          refreshToken: BuiltValueNullFieldError.checkNotNull(
              refreshToken, r'PostApiAuthLogoutRequest', 'refreshToken'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
