// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_members200_response_data_items_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum
    _$getApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum_owner =
    const GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum
        ._('owner');
const GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum
    _$getApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum_admin =
    const GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum
        ._('admin');
const GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum
    _$getApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum_member =
    const GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum
        ._('member');
const GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum
    _$getApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum_unknownDefaultOpenApi =
    const GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum
        ._('unknownDefaultOpenApi');

GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum
    _$getApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnumValueOf(
        String name) {
  switch (name) {
    case 'owner':
      return _$getApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum_owner;
    case 'admin':
      return _$getApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum_admin;
    case 'member':
      return _$getApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum_member;
    case 'unknownDefaultOpenApi':
      return _$getApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum_unknownDefaultOpenApi;
    default:
      return _$getApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<
        GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum>
    _$getApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnumValues =
    BuiltSet<
        GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum>(const <GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum>[
  _$getApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum_owner,
  _$getApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum_admin,
  _$getApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum_member,
  _$getApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum_unknownDefaultOpenApi,
]);

Serializer<
        GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum>
    _$getApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnumSerializer =
    _$GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnumSerializer();

class _$GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnumSerializer
    implements
        PrimitiveSerializer<
            GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum> {
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
    GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum
  ];
  @override
  final String wireName =
      'GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum';

  @override
  Object serialize(
          Serializers serializers,
          GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum
              object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum
      deserialize(
              Serializers serializers, Object serialized,
              {FullType specifiedType = FullType.unspecified}) =>
          GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum
              .valueOf(_fromWire[serialized] ??
                  (serialized is String ? serialized : ''));
}

class _$GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner
    extends GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner {
  @override
  final String email;
  @override
  final String name;
  @override
  final GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum
      role;
  @override
  final int userId;

  factory _$GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner(
          [void Function(
                  GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerBuilder)?
              updates]) =>
      (GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerBuilder()
            ..update(updates))
          ._build();

  _$GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner._(
      {required this.email,
      required this.name,
      required this.role,
      required this.userId})
      : super._();
  @override
  GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner rebuild(
          void Function(
                  GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerBuilder
      toBuilder() =>
          GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner &&
        email == other.email &&
        name == other.name &&
        role == other.role &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner')
          ..add('email', email)
          ..add('name', name)
          ..add('role', role)
          ..add('userId', userId))
        .toString();
  }
}

class GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerBuilder
    implements
        Builder<GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner,
            GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerBuilder> {
  _$GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum? _role;
  GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum?
      get role => _$this._role;
  set role(
          GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum?
              role) =>
      _$this._role = role;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerBuilder() {
    GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner._defaults(
        this);
  }

  GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _name = $v.name;
      _role = $v.role;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner other) {
    _$v = other
        as _$GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner;
  }

  @override
  void update(
      void Function(
              GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner build() =>
      _build();

  _$GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner _build() {
    final _$result = _$v ??
        _$GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner._(
          email: BuiltValueNullFieldError.checkNotNull(
              email,
              r'GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner',
              'email'),
          name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner',
              'name'),
          role: BuiltValueNullFieldError.checkNotNull(
              role,
              r'GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner',
              'role'),
          userId: BuiltValueNullFieldError.checkNotNull(
              userId,
              r'GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner',
              'userId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
