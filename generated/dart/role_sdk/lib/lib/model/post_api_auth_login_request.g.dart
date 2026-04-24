// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_auth_login_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiAuthLoginRequest extends PostApiAuthLoginRequest {
  @override
  final String email;
  @override
  final String password;

  factory _$PostApiAuthLoginRequest(
          [void Function(PostApiAuthLoginRequestBuilder)? updates]) =>
      (PostApiAuthLoginRequestBuilder()..update(updates))._build();

  _$PostApiAuthLoginRequest._({required this.email, required this.password})
      : super._();
  @override
  PostApiAuthLoginRequest rebuild(
          void Function(PostApiAuthLoginRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiAuthLoginRequestBuilder toBuilder() =>
      PostApiAuthLoginRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiAuthLoginRequest &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostApiAuthLoginRequest')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class PostApiAuthLoginRequestBuilder
    implements
        Builder<PostApiAuthLoginRequest, PostApiAuthLoginRequestBuilder> {
  _$PostApiAuthLoginRequest? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  PostApiAuthLoginRequestBuilder() {
    PostApiAuthLoginRequest._defaults(this);
  }

  PostApiAuthLoginRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiAuthLoginRequest other) {
    _$v = other as _$PostApiAuthLoginRequest;
  }

  @override
  void update(void Function(PostApiAuthLoginRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiAuthLoginRequest build() => _build();

  _$PostApiAuthLoginRequest _build() {
    final _$result = _$v ??
        _$PostApiAuthLoginRequest._(
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'PostApiAuthLoginRequest', 'email'),
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'PostApiAuthLoginRequest', 'password'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
