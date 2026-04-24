// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_auth_login200_response_data_workspace.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PostApiAuthLogin200ResponseDataWorkspaceRoleEnum
    _$postApiAuthLogin200ResponseDataWorkspaceRoleEnum_owner =
    const PostApiAuthLogin200ResponseDataWorkspaceRoleEnum._('owner');
const PostApiAuthLogin200ResponseDataWorkspaceRoleEnum
    _$postApiAuthLogin200ResponseDataWorkspaceRoleEnum_admin =
    const PostApiAuthLogin200ResponseDataWorkspaceRoleEnum._('admin');
const PostApiAuthLogin200ResponseDataWorkspaceRoleEnum
    _$postApiAuthLogin200ResponseDataWorkspaceRoleEnum_member =
    const PostApiAuthLogin200ResponseDataWorkspaceRoleEnum._('member');
const PostApiAuthLogin200ResponseDataWorkspaceRoleEnum
    _$postApiAuthLogin200ResponseDataWorkspaceRoleEnum_unknownDefaultOpenApi =
    const PostApiAuthLogin200ResponseDataWorkspaceRoleEnum._(
        'unknownDefaultOpenApi');

PostApiAuthLogin200ResponseDataWorkspaceRoleEnum
    _$postApiAuthLogin200ResponseDataWorkspaceRoleEnumValueOf(String name) {
  switch (name) {
    case 'owner':
      return _$postApiAuthLogin200ResponseDataWorkspaceRoleEnum_owner;
    case 'admin':
      return _$postApiAuthLogin200ResponseDataWorkspaceRoleEnum_admin;
    case 'member':
      return _$postApiAuthLogin200ResponseDataWorkspaceRoleEnum_member;
    case 'unknownDefaultOpenApi':
      return _$postApiAuthLogin200ResponseDataWorkspaceRoleEnum_unknownDefaultOpenApi;
    default:
      return _$postApiAuthLogin200ResponseDataWorkspaceRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PostApiAuthLogin200ResponseDataWorkspaceRoleEnum>
    _$postApiAuthLogin200ResponseDataWorkspaceRoleEnumValues = BuiltSet<
        PostApiAuthLogin200ResponseDataWorkspaceRoleEnum>(const <PostApiAuthLogin200ResponseDataWorkspaceRoleEnum>[
  _$postApiAuthLogin200ResponseDataWorkspaceRoleEnum_owner,
  _$postApiAuthLogin200ResponseDataWorkspaceRoleEnum_admin,
  _$postApiAuthLogin200ResponseDataWorkspaceRoleEnum_member,
  _$postApiAuthLogin200ResponseDataWorkspaceRoleEnum_unknownDefaultOpenApi,
]);

const PostApiAuthLogin200ResponseDataWorkspaceTypeEnum
    _$postApiAuthLogin200ResponseDataWorkspaceTypeEnum_personal =
    const PostApiAuthLogin200ResponseDataWorkspaceTypeEnum._('personal');
const PostApiAuthLogin200ResponseDataWorkspaceTypeEnum
    _$postApiAuthLogin200ResponseDataWorkspaceTypeEnum_team =
    const PostApiAuthLogin200ResponseDataWorkspaceTypeEnum._('team');
const PostApiAuthLogin200ResponseDataWorkspaceTypeEnum
    _$postApiAuthLogin200ResponseDataWorkspaceTypeEnum_unknownDefaultOpenApi =
    const PostApiAuthLogin200ResponseDataWorkspaceTypeEnum._(
        'unknownDefaultOpenApi');

PostApiAuthLogin200ResponseDataWorkspaceTypeEnum
    _$postApiAuthLogin200ResponseDataWorkspaceTypeEnumValueOf(String name) {
  switch (name) {
    case 'personal':
      return _$postApiAuthLogin200ResponseDataWorkspaceTypeEnum_personal;
    case 'team':
      return _$postApiAuthLogin200ResponseDataWorkspaceTypeEnum_team;
    case 'unknownDefaultOpenApi':
      return _$postApiAuthLogin200ResponseDataWorkspaceTypeEnum_unknownDefaultOpenApi;
    default:
      return _$postApiAuthLogin200ResponseDataWorkspaceTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PostApiAuthLogin200ResponseDataWorkspaceTypeEnum>
    _$postApiAuthLogin200ResponseDataWorkspaceTypeEnumValues = BuiltSet<
        PostApiAuthLogin200ResponseDataWorkspaceTypeEnum>(const <PostApiAuthLogin200ResponseDataWorkspaceTypeEnum>[
  _$postApiAuthLogin200ResponseDataWorkspaceTypeEnum_personal,
  _$postApiAuthLogin200ResponseDataWorkspaceTypeEnum_team,
  _$postApiAuthLogin200ResponseDataWorkspaceTypeEnum_unknownDefaultOpenApi,
]);

Serializer<PostApiAuthLogin200ResponseDataWorkspaceRoleEnum>
    _$postApiAuthLogin200ResponseDataWorkspaceRoleEnumSerializer =
    _$PostApiAuthLogin200ResponseDataWorkspaceRoleEnumSerializer();
Serializer<PostApiAuthLogin200ResponseDataWorkspaceTypeEnum>
    _$postApiAuthLogin200ResponseDataWorkspaceTypeEnumSerializer =
    _$PostApiAuthLogin200ResponseDataWorkspaceTypeEnumSerializer();

class _$PostApiAuthLogin200ResponseDataWorkspaceRoleEnumSerializer
    implements
        PrimitiveSerializer<PostApiAuthLogin200ResponseDataWorkspaceRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'owner': 'owner',
    'admin': 'admin',
    'member': 'member',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'owner': 'owner',
    'admin': 'admin',
    'member': 'member',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PostApiAuthLogin200ResponseDataWorkspaceRoleEnum
  ];
  @override
  final String wireName = 'PostApiAuthLogin200ResponseDataWorkspaceRoleEnum';

  @override
  Object serialize(Serializers serializers,
          PostApiAuthLogin200ResponseDataWorkspaceRoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PostApiAuthLogin200ResponseDataWorkspaceRoleEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PostApiAuthLogin200ResponseDataWorkspaceRoleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PostApiAuthLogin200ResponseDataWorkspaceTypeEnumSerializer
    implements
        PrimitiveSerializer<PostApiAuthLogin200ResponseDataWorkspaceTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'personal': 'personal',
    'team': 'team',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'personal': 'personal',
    'team': 'team',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PostApiAuthLogin200ResponseDataWorkspaceTypeEnum
  ];
  @override
  final String wireName = 'PostApiAuthLogin200ResponseDataWorkspaceTypeEnum';

  @override
  Object serialize(Serializers serializers,
          PostApiAuthLogin200ResponseDataWorkspaceTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PostApiAuthLogin200ResponseDataWorkspaceTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PostApiAuthLogin200ResponseDataWorkspaceTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PostApiAuthLogin200ResponseDataWorkspace
    extends PostApiAuthLogin200ResponseDataWorkspace {
  @override
  final int? legacyId;
  @override
  final int id;
  @override
  final String name;
  @override
  final PostApiAuthLogin200ResponseDataWorkspaceRoleEnum role;
  @override
  final String slug;
  @override
  final PostApiAuthLogin200ResponseDataWorkspaceTypeEnum type;

  factory _$PostApiAuthLogin200ResponseDataWorkspace(
          [void Function(PostApiAuthLogin200ResponseDataWorkspaceBuilder)?
              updates]) =>
      (PostApiAuthLogin200ResponseDataWorkspaceBuilder()..update(updates))
          ._build();

  _$PostApiAuthLogin200ResponseDataWorkspace._(
      {this.legacyId,
      required this.id,
      required this.name,
      required this.role,
      required this.slug,
      required this.type})
      : super._();
  @override
  PostApiAuthLogin200ResponseDataWorkspace rebuild(
          void Function(PostApiAuthLogin200ResponseDataWorkspaceBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiAuthLogin200ResponseDataWorkspaceBuilder toBuilder() =>
      PostApiAuthLogin200ResponseDataWorkspaceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiAuthLogin200ResponseDataWorkspace &&
        legacyId == other.legacyId &&
        id == other.id &&
        name == other.name &&
        role == other.role &&
        slug == other.slug &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, legacyId.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, slug.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PostApiAuthLogin200ResponseDataWorkspace')
          ..add('legacyId', legacyId)
          ..add('id', id)
          ..add('name', name)
          ..add('role', role)
          ..add('slug', slug)
          ..add('type', type))
        .toString();
  }
}

class PostApiAuthLogin200ResponseDataWorkspaceBuilder
    implements
        Builder<PostApiAuthLogin200ResponseDataWorkspace,
            PostApiAuthLogin200ResponseDataWorkspaceBuilder> {
  _$PostApiAuthLogin200ResponseDataWorkspace? _$v;

  int? _legacyId;
  int? get legacyId => _$this._legacyId;
  set legacyId(int? legacyId) => _$this._legacyId = legacyId;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PostApiAuthLogin200ResponseDataWorkspaceRoleEnum? _role;
  PostApiAuthLogin200ResponseDataWorkspaceRoleEnum? get role => _$this._role;
  set role(PostApiAuthLogin200ResponseDataWorkspaceRoleEnum? role) =>
      _$this._role = role;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  PostApiAuthLogin200ResponseDataWorkspaceTypeEnum? _type;
  PostApiAuthLogin200ResponseDataWorkspaceTypeEnum? get type => _$this._type;
  set type(PostApiAuthLogin200ResponseDataWorkspaceTypeEnum? type) =>
      _$this._type = type;

  PostApiAuthLogin200ResponseDataWorkspaceBuilder() {
    PostApiAuthLogin200ResponseDataWorkspace._defaults(this);
  }

  PostApiAuthLogin200ResponseDataWorkspaceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _legacyId = $v.legacyId;
      _id = $v.id;
      _name = $v.name;
      _role = $v.role;
      _slug = $v.slug;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiAuthLogin200ResponseDataWorkspace other) {
    _$v = other as _$PostApiAuthLogin200ResponseDataWorkspace;
  }

  @override
  void update(
      void Function(PostApiAuthLogin200ResponseDataWorkspaceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiAuthLogin200ResponseDataWorkspace build() => _build();

  _$PostApiAuthLogin200ResponseDataWorkspace _build() {
    final _$result = _$v ??
        _$PostApiAuthLogin200ResponseDataWorkspace._(
          legacyId: legacyId,
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'PostApiAuthLogin200ResponseDataWorkspace', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'PostApiAuthLogin200ResponseDataWorkspace', 'name'),
          role: BuiltValueNullFieldError.checkNotNull(
              role, r'PostApiAuthLogin200ResponseDataWorkspace', 'role'),
          slug: BuiltValueNullFieldError.checkNotNull(
              slug, r'PostApiAuthLogin200ResponseDataWorkspace', 'slug'),
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'PostApiAuthLogin200ResponseDataWorkspace', 'type'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
