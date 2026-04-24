// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_auth_login200_response_data_memberships_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum
    _$postApiAuthLogin200ResponseDataMembershipsInnerRoleEnum_owner =
    const PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum._('owner');
const PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum
    _$postApiAuthLogin200ResponseDataMembershipsInnerRoleEnum_admin =
    const PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum._('admin');
const PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum
    _$postApiAuthLogin200ResponseDataMembershipsInnerRoleEnum_member =
    const PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum._('member');
const PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum
    _$postApiAuthLogin200ResponseDataMembershipsInnerRoleEnum_unknownDefaultOpenApi =
    const PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum._(
        'unknownDefaultOpenApi');

PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum
    _$postApiAuthLogin200ResponseDataMembershipsInnerRoleEnumValueOf(
        String name) {
  switch (name) {
    case 'owner':
      return _$postApiAuthLogin200ResponseDataMembershipsInnerRoleEnum_owner;
    case 'admin':
      return _$postApiAuthLogin200ResponseDataMembershipsInnerRoleEnum_admin;
    case 'member':
      return _$postApiAuthLogin200ResponseDataMembershipsInnerRoleEnum_member;
    case 'unknownDefaultOpenApi':
      return _$postApiAuthLogin200ResponseDataMembershipsInnerRoleEnum_unknownDefaultOpenApi;
    default:
      return _$postApiAuthLogin200ResponseDataMembershipsInnerRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum>
    _$postApiAuthLogin200ResponseDataMembershipsInnerRoleEnumValues = BuiltSet<
        PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum>(const <PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum>[
  _$postApiAuthLogin200ResponseDataMembershipsInnerRoleEnum_owner,
  _$postApiAuthLogin200ResponseDataMembershipsInnerRoleEnum_admin,
  _$postApiAuthLogin200ResponseDataMembershipsInnerRoleEnum_member,
  _$postApiAuthLogin200ResponseDataMembershipsInnerRoleEnum_unknownDefaultOpenApi,
]);

const PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum
    _$postApiAuthLogin200ResponseDataMembershipsInnerTypeEnum_personal =
    const PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum._('personal');
const PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum
    _$postApiAuthLogin200ResponseDataMembershipsInnerTypeEnum_team =
    const PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum._('team');
const PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum
    _$postApiAuthLogin200ResponseDataMembershipsInnerTypeEnum_unknownDefaultOpenApi =
    const PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum._(
        'unknownDefaultOpenApi');

PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum
    _$postApiAuthLogin200ResponseDataMembershipsInnerTypeEnumValueOf(
        String name) {
  switch (name) {
    case 'personal':
      return _$postApiAuthLogin200ResponseDataMembershipsInnerTypeEnum_personal;
    case 'team':
      return _$postApiAuthLogin200ResponseDataMembershipsInnerTypeEnum_team;
    case 'unknownDefaultOpenApi':
      return _$postApiAuthLogin200ResponseDataMembershipsInnerTypeEnum_unknownDefaultOpenApi;
    default:
      return _$postApiAuthLogin200ResponseDataMembershipsInnerTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum>
    _$postApiAuthLogin200ResponseDataMembershipsInnerTypeEnumValues = BuiltSet<
        PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum>(const <PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum>[
  _$postApiAuthLogin200ResponseDataMembershipsInnerTypeEnum_personal,
  _$postApiAuthLogin200ResponseDataMembershipsInnerTypeEnum_team,
  _$postApiAuthLogin200ResponseDataMembershipsInnerTypeEnum_unknownDefaultOpenApi,
]);

Serializer<PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum>
    _$postApiAuthLogin200ResponseDataMembershipsInnerRoleEnumSerializer =
    _$PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnumSerializer();
Serializer<PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum>
    _$postApiAuthLogin200ResponseDataMembershipsInnerTypeEnumSerializer =
    _$PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnumSerializer();

class _$PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnumSerializer
    implements
        PrimitiveSerializer<
            PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum> {
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
    PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum
  ];
  @override
  final String wireName =
      'PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum';

  @override
  Object serialize(Serializers serializers,
          PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnumSerializer
    implements
        PrimitiveSerializer<
            PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum> {
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
    PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum
  ];
  @override
  final String wireName =
      'PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum';

  @override
  Object serialize(Serializers serializers,
          PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PostApiAuthLogin200ResponseDataMembershipsInner
    extends PostApiAuthLogin200ResponseDataMembershipsInner {
  @override
  final int? legacyId;
  @override
  final String name;
  @override
  final PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum role;
  @override
  final String slug;
  @override
  final PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum type;
  @override
  final int workspaceId;

  factory _$PostApiAuthLogin200ResponseDataMembershipsInner(
          [void Function(
                  PostApiAuthLogin200ResponseDataMembershipsInnerBuilder)?
              updates]) =>
      (PostApiAuthLogin200ResponseDataMembershipsInnerBuilder()
            ..update(updates))
          ._build();

  _$PostApiAuthLogin200ResponseDataMembershipsInner._(
      {this.legacyId,
      required this.name,
      required this.role,
      required this.slug,
      required this.type,
      required this.workspaceId})
      : super._();
  @override
  PostApiAuthLogin200ResponseDataMembershipsInner rebuild(
          void Function(PostApiAuthLogin200ResponseDataMembershipsInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiAuthLogin200ResponseDataMembershipsInnerBuilder toBuilder() =>
      PostApiAuthLogin200ResponseDataMembershipsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiAuthLogin200ResponseDataMembershipsInner &&
        legacyId == other.legacyId &&
        name == other.name &&
        role == other.role &&
        slug == other.slug &&
        type == other.type &&
        workspaceId == other.workspaceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, legacyId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, slug.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, workspaceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PostApiAuthLogin200ResponseDataMembershipsInner')
          ..add('legacyId', legacyId)
          ..add('name', name)
          ..add('role', role)
          ..add('slug', slug)
          ..add('type', type)
          ..add('workspaceId', workspaceId))
        .toString();
  }
}

class PostApiAuthLogin200ResponseDataMembershipsInnerBuilder
    implements
        Builder<PostApiAuthLogin200ResponseDataMembershipsInner,
            PostApiAuthLogin200ResponseDataMembershipsInnerBuilder> {
  _$PostApiAuthLogin200ResponseDataMembershipsInner? _$v;

  int? _legacyId;
  int? get legacyId => _$this._legacyId;
  set legacyId(int? legacyId) => _$this._legacyId = legacyId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum? _role;
  PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum? get role =>
      _$this._role;
  set role(PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum? role) =>
      _$this._role = role;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum? _type;
  PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum? get type =>
      _$this._type;
  set type(PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum? type) =>
      _$this._type = type;

  int? _workspaceId;
  int? get workspaceId => _$this._workspaceId;
  set workspaceId(int? workspaceId) => _$this._workspaceId = workspaceId;

  PostApiAuthLogin200ResponseDataMembershipsInnerBuilder() {
    PostApiAuthLogin200ResponseDataMembershipsInner._defaults(this);
  }

  PostApiAuthLogin200ResponseDataMembershipsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _legacyId = $v.legacyId;
      _name = $v.name;
      _role = $v.role;
      _slug = $v.slug;
      _type = $v.type;
      _workspaceId = $v.workspaceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiAuthLogin200ResponseDataMembershipsInner other) {
    _$v = other as _$PostApiAuthLogin200ResponseDataMembershipsInner;
  }

  @override
  void update(
      void Function(PostApiAuthLogin200ResponseDataMembershipsInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiAuthLogin200ResponseDataMembershipsInner build() => _build();

  _$PostApiAuthLogin200ResponseDataMembershipsInner _build() {
    final _$result = _$v ??
        _$PostApiAuthLogin200ResponseDataMembershipsInner._(
          legacyId: legacyId,
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'PostApiAuthLogin200ResponseDataMembershipsInner', 'name'),
          role: BuiltValueNullFieldError.checkNotNull(
              role, r'PostApiAuthLogin200ResponseDataMembershipsInner', 'role'),
          slug: BuiltValueNullFieldError.checkNotNull(
              slug, r'PostApiAuthLogin200ResponseDataMembershipsInner', 'slug'),
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'PostApiAuthLogin200ResponseDataMembershipsInner', 'type'),
          workspaceId: BuiltValueNullFieldError.checkNotNull(
              workspaceId,
              r'PostApiAuthLogin200ResponseDataMembershipsInner',
              'workspaceId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
