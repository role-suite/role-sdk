// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patch_api_workspaces_by_workspace_id_members_by_member_user_id_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum
    _$patchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum_admin =
    const PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum._(
        'admin');
const PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum
    _$patchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum_member =
    const PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum._(
        'member');
const PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum
    _$patchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum_unknownDefaultOpenApi =
    const PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum._(
        'unknownDefaultOpenApi');

PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum
    _$patchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnumValueOf(
        String name) {
  switch (name) {
    case 'admin':
      return _$patchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum_admin;
    case 'member':
      return _$patchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum_member;
    case 'unknownDefaultOpenApi':
      return _$patchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum_unknownDefaultOpenApi;
    default:
      return _$patchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<
        PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum>
    _$patchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnumValues =
    BuiltSet<
        PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum>(const <PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum>[
  _$patchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum_admin,
  _$patchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum_member,
  _$patchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum_unknownDefaultOpenApi,
]);

Serializer<PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum>
    _$patchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnumSerializer =
    _$PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnumSerializer();

class _$PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnumSerializer
    implements
        PrimitiveSerializer<
            PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum> {
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
    PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum
  ];
  @override
  final String wireName =
      'PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum';

  @override
  Object serialize(
          Serializers serializers,
          PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum
              object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum
      deserialize(Serializers serializers, Object serialized,
              {FullType specifiedType = FullType.unspecified}) =>
          PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum
              .valueOf(_fromWire[serialized] ??
                  (serialized is String ? serialized : ''));
}

class _$PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest
    extends PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest {
  @override
  final PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum
      role;

  factory _$PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest(
          [void Function(
                  PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestBuilder)?
              updates]) =>
      (PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestBuilder()
            ..update(updates))
          ._build();

  _$PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest._(
      {required this.role})
      : super._();
  @override
  PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest rebuild(
          void Function(
                  PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestBuilder
      toBuilder() =>
          PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest &&
        role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest')
          ..add('role', role))
        .toString();
  }
}

class PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestBuilder
    implements
        Builder<PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest,
            PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestBuilder> {
  _$PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest? _$v;

  PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum? _role;
  PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum?
      get role => _$this._role;
  set role(
          PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum?
              role) =>
      _$this._role = role;

  PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestBuilder() {
    PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest._defaults(this);
  }

  PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest other) {
    _$v =
        other as _$PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest;
  }

  @override
  void update(
      void Function(
              PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest build() =>
      _build();

  _$PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest _build() {
    final _$result = _$v ??
        _$PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest._(
          role: BuiltValueNullFieldError.checkNotNull(
              role,
              r'PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest',
              'role'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
