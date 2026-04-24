// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_auth_login200_response_data_tokens.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiAuthLogin200ResponseDataTokens
    extends PostApiAuthLogin200ResponseDataTokens {
  @override
  final String accessToken;
  @override
  final int accessTokenTtlSeconds;
  @override
  final String refreshToken;
  @override
  final int refreshTokenTtlSeconds;

  factory _$PostApiAuthLogin200ResponseDataTokens(
          [void Function(PostApiAuthLogin200ResponseDataTokensBuilder)?
              updates]) =>
      (PostApiAuthLogin200ResponseDataTokensBuilder()..update(updates))
          ._build();

  _$PostApiAuthLogin200ResponseDataTokens._(
      {required this.accessToken,
      required this.accessTokenTtlSeconds,
      required this.refreshToken,
      required this.refreshTokenTtlSeconds})
      : super._();
  @override
  PostApiAuthLogin200ResponseDataTokens rebuild(
          void Function(PostApiAuthLogin200ResponseDataTokensBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiAuthLogin200ResponseDataTokensBuilder toBuilder() =>
      PostApiAuthLogin200ResponseDataTokensBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiAuthLogin200ResponseDataTokens &&
        accessToken == other.accessToken &&
        accessTokenTtlSeconds == other.accessTokenTtlSeconds &&
        refreshToken == other.refreshToken &&
        refreshTokenTtlSeconds == other.refreshTokenTtlSeconds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, accessTokenTtlSeconds.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jc(_$hash, refreshTokenTtlSeconds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PostApiAuthLogin200ResponseDataTokens')
          ..add('accessToken', accessToken)
          ..add('accessTokenTtlSeconds', accessTokenTtlSeconds)
          ..add('refreshToken', refreshToken)
          ..add('refreshTokenTtlSeconds', refreshTokenTtlSeconds))
        .toString();
  }
}

class PostApiAuthLogin200ResponseDataTokensBuilder
    implements
        Builder<PostApiAuthLogin200ResponseDataTokens,
            PostApiAuthLogin200ResponseDataTokensBuilder> {
  _$PostApiAuthLogin200ResponseDataTokens? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  int? _accessTokenTtlSeconds;
  int? get accessTokenTtlSeconds => _$this._accessTokenTtlSeconds;
  set accessTokenTtlSeconds(int? accessTokenTtlSeconds) =>
      _$this._accessTokenTtlSeconds = accessTokenTtlSeconds;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  int? _refreshTokenTtlSeconds;
  int? get refreshTokenTtlSeconds => _$this._refreshTokenTtlSeconds;
  set refreshTokenTtlSeconds(int? refreshTokenTtlSeconds) =>
      _$this._refreshTokenTtlSeconds = refreshTokenTtlSeconds;

  PostApiAuthLogin200ResponseDataTokensBuilder() {
    PostApiAuthLogin200ResponseDataTokens._defaults(this);
  }

  PostApiAuthLogin200ResponseDataTokensBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _accessTokenTtlSeconds = $v.accessTokenTtlSeconds;
      _refreshToken = $v.refreshToken;
      _refreshTokenTtlSeconds = $v.refreshTokenTtlSeconds;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiAuthLogin200ResponseDataTokens other) {
    _$v = other as _$PostApiAuthLogin200ResponseDataTokens;
  }

  @override
  void update(
      void Function(PostApiAuthLogin200ResponseDataTokensBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiAuthLogin200ResponseDataTokens build() => _build();

  _$PostApiAuthLogin200ResponseDataTokens _build() {
    final _$result = _$v ??
        _$PostApiAuthLogin200ResponseDataTokens._(
          accessToken: BuiltValueNullFieldError.checkNotNull(accessToken,
              r'PostApiAuthLogin200ResponseDataTokens', 'accessToken'),
          accessTokenTtlSeconds: BuiltValueNullFieldError.checkNotNull(
              accessTokenTtlSeconds,
              r'PostApiAuthLogin200ResponseDataTokens',
              'accessTokenTtlSeconds'),
          refreshToken: BuiltValueNullFieldError.checkNotNull(refreshToken,
              r'PostApiAuthLogin200ResponseDataTokens', 'refreshToken'),
          refreshTokenTtlSeconds: BuiltValueNullFieldError.checkNotNull(
              refreshTokenTtlSeconds,
              r'PostApiAuthLogin200ResponseDataTokens',
              'refreshTokenTtlSeconds'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
