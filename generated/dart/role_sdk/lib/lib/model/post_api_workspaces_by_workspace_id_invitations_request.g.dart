// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_invitations_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum
    _$postApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum_admin =
    const PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum._('admin');
const PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum
    _$postApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum_member =
    const PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum._('member');
const PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum
    _$postApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum_unknownDefaultOpenApi =
    const PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum._(
        'unknownDefaultOpenApi');

PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum
    _$postApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnumValueOf(
        String name) {
  switch (name) {
    case 'admin':
      return _$postApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum_admin;
    case 'member':
      return _$postApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum_member;
    case 'unknownDefaultOpenApi':
      return _$postApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum_unknownDefaultOpenApi;
    default:
      return _$postApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum>
    _$postApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnumValues = BuiltSet<
        PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum>(const <PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum>[
  _$postApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum_admin,
  _$postApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum_member,
  _$postApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum_unknownDefaultOpenApi,
]);

Serializer<PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum>
    _$postApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnumSerializer =
    _$PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnumSerializer();

class _$PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnumSerializer
    implements
        PrimitiveSerializer<
            PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum> {
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
    PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum
  ];
  @override
  final String wireName =
      'PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum';

  @override
  Object serialize(Serializers serializers,
          PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PostApiWorkspacesByWorkspaceIdInvitationsRequest
    extends PostApiWorkspacesByWorkspaceIdInvitationsRequest {
  @override
  final String email;
  @override
  final PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum? role;

  factory _$PostApiWorkspacesByWorkspaceIdInvitationsRequest(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdInvitationsRequestBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdInvitationsRequestBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdInvitationsRequest._(
      {required this.email, this.role})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdInvitationsRequest rebuild(
          void Function(PostApiWorkspacesByWorkspaceIdInvitationsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdInvitationsRequestBuilder toBuilder() =>
      PostApiWorkspacesByWorkspaceIdInvitationsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiWorkspacesByWorkspaceIdInvitationsRequest &&
        email == other.email &&
        role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PostApiWorkspacesByWorkspaceIdInvitationsRequest')
          ..add('email', email)
          ..add('role', role))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdInvitationsRequestBuilder
    implements
        Builder<PostApiWorkspacesByWorkspaceIdInvitationsRequest,
            PostApiWorkspacesByWorkspaceIdInvitationsRequestBuilder> {
  _$PostApiWorkspacesByWorkspaceIdInvitationsRequest? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum? _role;
  PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum? get role =>
      _$this._role;
  set role(PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum? role) =>
      _$this._role = role;

  PostApiWorkspacesByWorkspaceIdInvitationsRequestBuilder() {
    PostApiWorkspacesByWorkspaceIdInvitationsRequest._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdInvitationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiWorkspacesByWorkspaceIdInvitationsRequest other) {
    _$v = other as _$PostApiWorkspacesByWorkspaceIdInvitationsRequest;
  }

  @override
  void update(
      void Function(PostApiWorkspacesByWorkspaceIdInvitationsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdInvitationsRequest build() => _build();

  _$PostApiWorkspacesByWorkspaceIdInvitationsRequest _build() {
    final _$result = _$v ??
        _$PostApiWorkspacesByWorkspaceIdInvitationsRequest._(
          email: BuiltValueNullFieldError.checkNotNull(email,
              r'PostApiWorkspacesByWorkspaceIdInvitationsRequest', 'email'),
          role: role,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
