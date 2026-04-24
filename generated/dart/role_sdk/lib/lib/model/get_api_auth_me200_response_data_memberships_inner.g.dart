// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_auth_me200_response_data_memberships_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum
    _$getApiAuthMe200ResponseDataMembershipsInnerRoleEnum_owner =
    const GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum._('owner');
const GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum
    _$getApiAuthMe200ResponseDataMembershipsInnerRoleEnum_admin =
    const GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum._('admin');
const GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum
    _$getApiAuthMe200ResponseDataMembershipsInnerRoleEnum_member =
    const GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum._('member');
const GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum
    _$getApiAuthMe200ResponseDataMembershipsInnerRoleEnum_unknownDefaultOpenApi =
    const GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum._(
        'unknownDefaultOpenApi');

GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum
    _$getApiAuthMe200ResponseDataMembershipsInnerRoleEnumValueOf(String name) {
  switch (name) {
    case 'owner':
      return _$getApiAuthMe200ResponseDataMembershipsInnerRoleEnum_owner;
    case 'admin':
      return _$getApiAuthMe200ResponseDataMembershipsInnerRoleEnum_admin;
    case 'member':
      return _$getApiAuthMe200ResponseDataMembershipsInnerRoleEnum_member;
    case 'unknownDefaultOpenApi':
      return _$getApiAuthMe200ResponseDataMembershipsInnerRoleEnum_unknownDefaultOpenApi;
    default:
      return _$getApiAuthMe200ResponseDataMembershipsInnerRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum>
    _$getApiAuthMe200ResponseDataMembershipsInnerRoleEnumValues = BuiltSet<
        GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum>(const <GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum>[
  _$getApiAuthMe200ResponseDataMembershipsInnerRoleEnum_owner,
  _$getApiAuthMe200ResponseDataMembershipsInnerRoleEnum_admin,
  _$getApiAuthMe200ResponseDataMembershipsInnerRoleEnum_member,
  _$getApiAuthMe200ResponseDataMembershipsInnerRoleEnum_unknownDefaultOpenApi,
]);

const GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum
    _$getApiAuthMe200ResponseDataMembershipsInnerTypeEnum_personal =
    const GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum._('personal');
const GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum
    _$getApiAuthMe200ResponseDataMembershipsInnerTypeEnum_team =
    const GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum._('team');
const GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum
    _$getApiAuthMe200ResponseDataMembershipsInnerTypeEnum_unknownDefaultOpenApi =
    const GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum._(
        'unknownDefaultOpenApi');

GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum
    _$getApiAuthMe200ResponseDataMembershipsInnerTypeEnumValueOf(String name) {
  switch (name) {
    case 'personal':
      return _$getApiAuthMe200ResponseDataMembershipsInnerTypeEnum_personal;
    case 'team':
      return _$getApiAuthMe200ResponseDataMembershipsInnerTypeEnum_team;
    case 'unknownDefaultOpenApi':
      return _$getApiAuthMe200ResponseDataMembershipsInnerTypeEnum_unknownDefaultOpenApi;
    default:
      return _$getApiAuthMe200ResponseDataMembershipsInnerTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum>
    _$getApiAuthMe200ResponseDataMembershipsInnerTypeEnumValues = BuiltSet<
        GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum>(const <GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum>[
  _$getApiAuthMe200ResponseDataMembershipsInnerTypeEnum_personal,
  _$getApiAuthMe200ResponseDataMembershipsInnerTypeEnum_team,
  _$getApiAuthMe200ResponseDataMembershipsInnerTypeEnum_unknownDefaultOpenApi,
]);

Serializer<GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum>
    _$getApiAuthMe200ResponseDataMembershipsInnerRoleEnumSerializer =
    _$GetApiAuthMe200ResponseDataMembershipsInnerRoleEnumSerializer();
Serializer<GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum>
    _$getApiAuthMe200ResponseDataMembershipsInnerTypeEnumSerializer =
    _$GetApiAuthMe200ResponseDataMembershipsInnerTypeEnumSerializer();

class _$GetApiAuthMe200ResponseDataMembershipsInnerRoleEnumSerializer
    implements
        PrimitiveSerializer<
            GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum> {
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
    GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum
  ];
  @override
  final String wireName = 'GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum';

  @override
  Object serialize(Serializers serializers,
          GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GetApiAuthMe200ResponseDataMembershipsInnerTypeEnumSerializer
    implements
        PrimitiveSerializer<
            GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum> {
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
    GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum
  ];
  @override
  final String wireName = 'GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum';

  @override
  Object serialize(Serializers serializers,
          GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GetApiAuthMe200ResponseDataMembershipsInner
    extends GetApiAuthMe200ResponseDataMembershipsInner {
  @override
  final int? legacyId;
  @override
  final String name;
  @override
  final GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum role;
  @override
  final String slug;
  @override
  final GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum type;
  @override
  final int workspaceId;

  factory _$GetApiAuthMe200ResponseDataMembershipsInner(
          [void Function(GetApiAuthMe200ResponseDataMembershipsInnerBuilder)?
              updates]) =>
      (GetApiAuthMe200ResponseDataMembershipsInnerBuilder()..update(updates))
          ._build();

  _$GetApiAuthMe200ResponseDataMembershipsInner._(
      {this.legacyId,
      required this.name,
      required this.role,
      required this.slug,
      required this.type,
      required this.workspaceId})
      : super._();
  @override
  GetApiAuthMe200ResponseDataMembershipsInner rebuild(
          void Function(GetApiAuthMe200ResponseDataMembershipsInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiAuthMe200ResponseDataMembershipsInnerBuilder toBuilder() =>
      GetApiAuthMe200ResponseDataMembershipsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetApiAuthMe200ResponseDataMembershipsInner &&
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
            r'GetApiAuthMe200ResponseDataMembershipsInner')
          ..add('legacyId', legacyId)
          ..add('name', name)
          ..add('role', role)
          ..add('slug', slug)
          ..add('type', type)
          ..add('workspaceId', workspaceId))
        .toString();
  }
}

class GetApiAuthMe200ResponseDataMembershipsInnerBuilder
    implements
        Builder<GetApiAuthMe200ResponseDataMembershipsInner,
            GetApiAuthMe200ResponseDataMembershipsInnerBuilder> {
  _$GetApiAuthMe200ResponseDataMembershipsInner? _$v;

  int? _legacyId;
  int? get legacyId => _$this._legacyId;
  set legacyId(int? legacyId) => _$this._legacyId = legacyId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum? _role;
  GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum? get role => _$this._role;
  set role(GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum? role) =>
      _$this._role = role;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum? _type;
  GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum? get type => _$this._type;
  set type(GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum? type) =>
      _$this._type = type;

  int? _workspaceId;
  int? get workspaceId => _$this._workspaceId;
  set workspaceId(int? workspaceId) => _$this._workspaceId = workspaceId;

  GetApiAuthMe200ResponseDataMembershipsInnerBuilder() {
    GetApiAuthMe200ResponseDataMembershipsInner._defaults(this);
  }

  GetApiAuthMe200ResponseDataMembershipsInnerBuilder get _$this {
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
  void replace(GetApiAuthMe200ResponseDataMembershipsInner other) {
    _$v = other as _$GetApiAuthMe200ResponseDataMembershipsInner;
  }

  @override
  void update(
      void Function(GetApiAuthMe200ResponseDataMembershipsInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiAuthMe200ResponseDataMembershipsInner build() => _build();

  _$GetApiAuthMe200ResponseDataMembershipsInner _build() {
    final _$result = _$v ??
        _$GetApiAuthMe200ResponseDataMembershipsInner._(
          legacyId: legacyId,
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'GetApiAuthMe200ResponseDataMembershipsInner', 'name'),
          role: BuiltValueNullFieldError.checkNotNull(
              role, r'GetApiAuthMe200ResponseDataMembershipsInner', 'role'),
          slug: BuiltValueNullFieldError.checkNotNull(
              slug, r'GetApiAuthMe200ResponseDataMembershipsInner', 'slug'),
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'GetApiAuthMe200ResponseDataMembershipsInner', 'type'),
          workspaceId: BuiltValueNullFieldError.checkNotNull(workspaceId,
              r'GetApiAuthMe200ResponseDataMembershipsInner', 'workspaceId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
