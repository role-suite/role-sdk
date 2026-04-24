// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_auth_login200_response_data_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiAuthLogin200ResponseDataUser
    extends PostApiAuthLogin200ResponseDataUser {
  @override
  final String email;
  @override
  final int id;
  @override
  final String name;

  factory _$PostApiAuthLogin200ResponseDataUser(
          [void Function(PostApiAuthLogin200ResponseDataUserBuilder)?
              updates]) =>
      (PostApiAuthLogin200ResponseDataUserBuilder()..update(updates))._build();

  _$PostApiAuthLogin200ResponseDataUser._(
      {required this.email, required this.id, required this.name})
      : super._();
  @override
  PostApiAuthLogin200ResponseDataUser rebuild(
          void Function(PostApiAuthLogin200ResponseDataUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiAuthLogin200ResponseDataUserBuilder toBuilder() =>
      PostApiAuthLogin200ResponseDataUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiAuthLogin200ResponseDataUser &&
        email == other.email &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostApiAuthLogin200ResponseDataUser')
          ..add('email', email)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class PostApiAuthLogin200ResponseDataUserBuilder
    implements
        Builder<PostApiAuthLogin200ResponseDataUser,
            PostApiAuthLogin200ResponseDataUserBuilder> {
  _$PostApiAuthLogin200ResponseDataUser? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PostApiAuthLogin200ResponseDataUserBuilder() {
    PostApiAuthLogin200ResponseDataUser._defaults(this);
  }

  PostApiAuthLogin200ResponseDataUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiAuthLogin200ResponseDataUser other) {
    _$v = other as _$PostApiAuthLogin200ResponseDataUser;
  }

  @override
  void update(
      void Function(PostApiAuthLogin200ResponseDataUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiAuthLogin200ResponseDataUser build() => _build();

  _$PostApiAuthLogin200ResponseDataUser _build() {
    final _$result = _$v ??
        _$PostApiAuthLogin200ResponseDataUser._(
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'PostApiAuthLogin200ResponseDataUser', 'email'),
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'PostApiAuthLogin200ResponseDataUser', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'PostApiAuthLogin200ResponseDataUser', 'name'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
