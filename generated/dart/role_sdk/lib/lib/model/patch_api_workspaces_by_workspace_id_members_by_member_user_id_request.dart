//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patch_api_workspaces_by_workspace_id_members_by_member_user_id_request.g.dart';

/// PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest
///
/// Properties:
/// * [role] 
@BuiltValue()
abstract class PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest implements Built<PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest, PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestBuilder> {
  @BuiltValueField(wireName: r'role')
  PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum get role;
  // enum roleEnum {  admin,  member,  };

  PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest._();

  factory PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest([void updates(PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestBuilder b)]) = _$PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest> get serializer => _$PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestSerializer();
}

class _$PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestSerializer implements PrimitiveSerializer<PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest> {
  @override
  final Iterable<Type> types = const [PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest, _$PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest];

  @override
  final String wireName = r'PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum),
          ) as PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum;
          result.role = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'admin')
  static const PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum admin = _$patchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum_admin;
  @BuiltValueEnumConst(wireName: r'member')
  static const PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum member = _$patchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum_member;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum unknownDefaultOpenApi = _$patchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum_unknownDefaultOpenApi;

  static Serializer<PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum> get serializer => _$patchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnumSerializer;

  const PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum._(String name): super(name);

  static BuiltSet<PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum> get values => _$patchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnumValues;
  static PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnum valueOf(String name) => _$patchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequestRoleEnumValueOf(name);
}

