// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_auth_register_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PostApiAuthRegisterRequestAccountTypeEnum
    _$postApiAuthRegisterRequestAccountTypeEnum_single =
    const PostApiAuthRegisterRequestAccountTypeEnum._('single');
const PostApiAuthRegisterRequestAccountTypeEnum
    _$postApiAuthRegisterRequestAccountTypeEnum_team =
    const PostApiAuthRegisterRequestAccountTypeEnum._('team');
const PostApiAuthRegisterRequestAccountTypeEnum
    _$postApiAuthRegisterRequestAccountTypeEnum_unknownDefaultOpenApi =
    const PostApiAuthRegisterRequestAccountTypeEnum._('unknownDefaultOpenApi');

PostApiAuthRegisterRequestAccountTypeEnum
    _$postApiAuthRegisterRequestAccountTypeEnumValueOf(String name) {
  switch (name) {
    case 'single':
      return _$postApiAuthRegisterRequestAccountTypeEnum_single;
    case 'team':
      return _$postApiAuthRegisterRequestAccountTypeEnum_team;
    case 'unknownDefaultOpenApi':
      return _$postApiAuthRegisterRequestAccountTypeEnum_unknownDefaultOpenApi;
    default:
      return _$postApiAuthRegisterRequestAccountTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PostApiAuthRegisterRequestAccountTypeEnum>
    _$postApiAuthRegisterRequestAccountTypeEnumValues = BuiltSet<
        PostApiAuthRegisterRequestAccountTypeEnum>(const <PostApiAuthRegisterRequestAccountTypeEnum>[
  _$postApiAuthRegisterRequestAccountTypeEnum_single,
  _$postApiAuthRegisterRequestAccountTypeEnum_team,
  _$postApiAuthRegisterRequestAccountTypeEnum_unknownDefaultOpenApi,
]);

Serializer<PostApiAuthRegisterRequestAccountTypeEnum>
    _$postApiAuthRegisterRequestAccountTypeEnumSerializer =
    _$PostApiAuthRegisterRequestAccountTypeEnumSerializer();

class _$PostApiAuthRegisterRequestAccountTypeEnumSerializer
    implements PrimitiveSerializer<PostApiAuthRegisterRequestAccountTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'single': 'single',
    'team': 'team',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'single': 'single',
    'team': 'team',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PostApiAuthRegisterRequestAccountTypeEnum
  ];
  @override
  final String wireName = 'PostApiAuthRegisterRequestAccountTypeEnum';

  @override
  Object serialize(Serializers serializers,
          PostApiAuthRegisterRequestAccountTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PostApiAuthRegisterRequestAccountTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PostApiAuthRegisterRequestAccountTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PostApiAuthRegisterRequest extends PostApiAuthRegisterRequest {
  @override
  final PostApiAuthRegisterRequestAccountTypeEnum accountType;
  @override
  final String email;
  @override
  final String name;
  @override
  final String password;
  @override
  final String? teamName;

  factory _$PostApiAuthRegisterRequest(
          [void Function(PostApiAuthRegisterRequestBuilder)? updates]) =>
      (PostApiAuthRegisterRequestBuilder()..update(updates))._build();

  _$PostApiAuthRegisterRequest._(
      {required this.accountType,
      required this.email,
      required this.name,
      required this.password,
      this.teamName})
      : super._();
  @override
  PostApiAuthRegisterRequest rebuild(
          void Function(PostApiAuthRegisterRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiAuthRegisterRequestBuilder toBuilder() =>
      PostApiAuthRegisterRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiAuthRegisterRequest &&
        accountType == other.accountType &&
        email == other.email &&
        name == other.name &&
        password == other.password &&
        teamName == other.teamName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountType.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, teamName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostApiAuthRegisterRequest')
          ..add('accountType', accountType)
          ..add('email', email)
          ..add('name', name)
          ..add('password', password)
          ..add('teamName', teamName))
        .toString();
  }
}

class PostApiAuthRegisterRequestBuilder
    implements
        Builder<PostApiAuthRegisterRequest, PostApiAuthRegisterRequestBuilder> {
  _$PostApiAuthRegisterRequest? _$v;

  PostApiAuthRegisterRequestAccountTypeEnum? _accountType;
  PostApiAuthRegisterRequestAccountTypeEnum? get accountType =>
      _$this._accountType;
  set accountType(PostApiAuthRegisterRequestAccountTypeEnum? accountType) =>
      _$this._accountType = accountType;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _teamName;
  String? get teamName => _$this._teamName;
  set teamName(String? teamName) => _$this._teamName = teamName;

  PostApiAuthRegisterRequestBuilder() {
    PostApiAuthRegisterRequest._defaults(this);
  }

  PostApiAuthRegisterRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountType = $v.accountType;
      _email = $v.email;
      _name = $v.name;
      _password = $v.password;
      _teamName = $v.teamName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiAuthRegisterRequest other) {
    _$v = other as _$PostApiAuthRegisterRequest;
  }

  @override
  void update(void Function(PostApiAuthRegisterRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiAuthRegisterRequest build() => _build();

  _$PostApiAuthRegisterRequest _build() {
    final _$result = _$v ??
        _$PostApiAuthRegisterRequest._(
          accountType: BuiltValueNullFieldError.checkNotNull(
              accountType, r'PostApiAuthRegisterRequest', 'accountType'),
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'PostApiAuthRegisterRequest', 'email'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'PostApiAuthRegisterRequest', 'name'),
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'PostApiAuthRegisterRequest', 'password'),
          teamName: teamName,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
