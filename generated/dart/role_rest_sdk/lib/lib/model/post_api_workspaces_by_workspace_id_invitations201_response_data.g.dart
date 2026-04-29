// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_invitations201_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum
    _$postApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum_admin =
    const PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum._(
        'admin');
const PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum
    _$postApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum_member =
    const PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum._(
        'member');
const PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum
    _$postApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum_unknownDefaultOpenApi =
    const PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum._(
        'unknownDefaultOpenApi');

PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum
    _$postApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnumValueOf(
        String name) {
  switch (name) {
    case 'admin':
      return _$postApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum_admin;
    case 'member':
      return _$postApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum_member;
    case 'unknownDefaultOpenApi':
      return _$postApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum_unknownDefaultOpenApi;
    default:
      return _$postApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum>
    _$postApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnumValues =
    BuiltSet<
        PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum>(const <PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum>[
  _$postApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum_admin,
  _$postApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum_member,
  _$postApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum_unknownDefaultOpenApi,
]);

Serializer<PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum>
    _$postApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnumSerializer =
    _$PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnumSerializer();

class _$PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnumSerializer
    implements
        PrimitiveSerializer<
            PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'admin': 'admin',
    'member': 'member',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'admin': 'admin',
    'member': 'member',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum
  ];
  @override
  final String wireName =
      'PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum';

  @override
  Object serialize(
          Serializers serializers,
          PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum
              object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PostApiWorkspacesByWorkspaceIdInvitations201ResponseData
    extends PostApiWorkspacesByWorkspaceIdInvitations201ResponseData {
  @override
  final String email;
  @override
  final String expiresAt;
  @override
  final int id;
  @override
  final PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum role;
  @override
  final String token;
  @override
  final int workspaceId;

  factory _$PostApiWorkspacesByWorkspaceIdInvitations201ResponseData(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdInvitations201ResponseData._(
      {required this.email,
      required this.expiresAt,
      required this.id,
      required this.role,
      required this.token,
      required this.workspaceId})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdInvitations201ResponseData rebuild(
          void Function(
                  PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataBuilder toBuilder() =>
      PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiWorkspacesByWorkspaceIdInvitations201ResponseData &&
        email == other.email &&
        expiresAt == other.expiresAt &&
        id == other.id &&
        role == other.role &&
        token == other.token &&
        workspaceId == other.workspaceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, workspaceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PostApiWorkspacesByWorkspaceIdInvitations201ResponseData')
          ..add('email', email)
          ..add('expiresAt', expiresAt)
          ..add('id', id)
          ..add('role', role)
          ..add('token', token)
          ..add('workspaceId', workspaceId))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataBuilder
    implements
        Builder<PostApiWorkspacesByWorkspaceIdInvitations201ResponseData,
            PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataBuilder> {
  _$PostApiWorkspacesByWorkspaceIdInvitations201ResponseData? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _expiresAt;
  String? get expiresAt => _$this._expiresAt;
  set expiresAt(String? expiresAt) => _$this._expiresAt = expiresAt;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum? _role;
  PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum? get role =>
      _$this._role;
  set role(
          PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum?
              role) =>
      _$this._role = role;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  int? _workspaceId;
  int? get workspaceId => _$this._workspaceId;
  set workspaceId(int? workspaceId) => _$this._workspaceId = workspaceId;

  PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataBuilder() {
    PostApiWorkspacesByWorkspaceIdInvitations201ResponseData._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _expiresAt = $v.expiresAt;
      _id = $v.id;
      _role = $v.role;
      _token = $v.token;
      _workspaceId = $v.workspaceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiWorkspacesByWorkspaceIdInvitations201ResponseData other) {
    _$v = other as _$PostApiWorkspacesByWorkspaceIdInvitations201ResponseData;
  }

  @override
  void update(
      void Function(
              PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdInvitations201ResponseData build() => _build();

  _$PostApiWorkspacesByWorkspaceIdInvitations201ResponseData _build() {
    final _$result = _$v ??
        _$PostApiWorkspacesByWorkspaceIdInvitations201ResponseData._(
          email: BuiltValueNullFieldError.checkNotNull(
              email,
              r'PostApiWorkspacesByWorkspaceIdInvitations201ResponseData',
              'email'),
          expiresAt: BuiltValueNullFieldError.checkNotNull(
              expiresAt,
              r'PostApiWorkspacesByWorkspaceIdInvitations201ResponseData',
              'expiresAt'),
          id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'PostApiWorkspacesByWorkspaceIdInvitations201ResponseData',
              'id'),
          role: BuiltValueNullFieldError.checkNotNull(
              role,
              r'PostApiWorkspacesByWorkspaceIdInvitations201ResponseData',
              'role'),
          token: BuiltValueNullFieldError.checkNotNull(
              token,
              r'PostApiWorkspacesByWorkspaceIdInvitations201ResponseData',
              'token'),
          workspaceId: BuiltValueNullFieldError.checkNotNull(
              workspaceId,
              r'PostApiWorkspacesByWorkspaceIdInvitations201ResponseData',
              'workspaceId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
