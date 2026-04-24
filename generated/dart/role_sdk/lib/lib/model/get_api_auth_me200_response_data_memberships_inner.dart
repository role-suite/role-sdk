//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_api_auth_me200_response_data_memberships_inner.g.dart';

/// GetApiAuthMe200ResponseDataMembershipsInner
///
/// Properties:
/// * [legacyId] 
/// * [name] 
/// * [role] 
/// * [slug] 
/// * [type] 
/// * [workspaceId] 
@BuiltValue()
abstract class GetApiAuthMe200ResponseDataMembershipsInner implements Built<GetApiAuthMe200ResponseDataMembershipsInner, GetApiAuthMe200ResponseDataMembershipsInnerBuilder> {
  @BuiltValueField(wireName: r'_id')
  int? get legacyId;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'role')
  GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum get role;
  // enum roleEnum {  owner,  admin,  member,  };

  @BuiltValueField(wireName: r'slug')
  String get slug;

  @BuiltValueField(wireName: r'type')
  GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum get type;
  // enum typeEnum {  personal,  team,  };

  @BuiltValueField(wireName: r'workspaceId')
  int get workspaceId;

  GetApiAuthMe200ResponseDataMembershipsInner._();

  factory GetApiAuthMe200ResponseDataMembershipsInner([void updates(GetApiAuthMe200ResponseDataMembershipsInnerBuilder b)]) = _$GetApiAuthMe200ResponseDataMembershipsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetApiAuthMe200ResponseDataMembershipsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetApiAuthMe200ResponseDataMembershipsInner> get serializer => _$GetApiAuthMe200ResponseDataMembershipsInnerSerializer();
}

class _$GetApiAuthMe200ResponseDataMembershipsInnerSerializer implements PrimitiveSerializer<GetApiAuthMe200ResponseDataMembershipsInner> {
  @override
  final Iterable<Type> types = const [GetApiAuthMe200ResponseDataMembershipsInner, _$GetApiAuthMe200ResponseDataMembershipsInner];

  @override
  final String wireName = r'GetApiAuthMe200ResponseDataMembershipsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetApiAuthMe200ResponseDataMembershipsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.legacyId != null) {
      yield r'_id';
      yield serializers.serialize(
        object.legacyId,
        specifiedType: const FullType(int),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum),
    );
    yield r'slug';
    yield serializers.serialize(
      object.slug,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum),
    );
    yield r'workspaceId';
    yield serializers.serialize(
      object.workspaceId,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetApiAuthMe200ResponseDataMembershipsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetApiAuthMe200ResponseDataMembershipsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.legacyId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum),
          ) as GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum;
          result.role = valueDes;
          break;
        case r'slug':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.slug = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum),
          ) as GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum;
          result.type = valueDes;
          break;
        case r'workspaceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.workspaceId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetApiAuthMe200ResponseDataMembershipsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetApiAuthMe200ResponseDataMembershipsInnerBuilder();
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

class GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'owner')
  static const GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum owner = _$getApiAuthMe200ResponseDataMembershipsInnerRoleEnum_owner;
  @BuiltValueEnumConst(wireName: r'admin')
  static const GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum admin = _$getApiAuthMe200ResponseDataMembershipsInnerRoleEnum_admin;
  @BuiltValueEnumConst(wireName: r'member')
  static const GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum member = _$getApiAuthMe200ResponseDataMembershipsInnerRoleEnum_member;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum unknownDefaultOpenApi = _$getApiAuthMe200ResponseDataMembershipsInnerRoleEnum_unknownDefaultOpenApi;

  static Serializer<GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum> get serializer => _$getApiAuthMe200ResponseDataMembershipsInnerRoleEnumSerializer;

  const GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum._(String name): super(name);

  static BuiltSet<GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum> get values => _$getApiAuthMe200ResponseDataMembershipsInnerRoleEnumValues;
  static GetApiAuthMe200ResponseDataMembershipsInnerRoleEnum valueOf(String name) => _$getApiAuthMe200ResponseDataMembershipsInnerRoleEnumValueOf(name);
}

class GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'personal')
  static const GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum personal = _$getApiAuthMe200ResponseDataMembershipsInnerTypeEnum_personal;
  @BuiltValueEnumConst(wireName: r'team')
  static const GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum team = _$getApiAuthMe200ResponseDataMembershipsInnerTypeEnum_team;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum unknownDefaultOpenApi = _$getApiAuthMe200ResponseDataMembershipsInnerTypeEnum_unknownDefaultOpenApi;

  static Serializer<GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum> get serializer => _$getApiAuthMe200ResponseDataMembershipsInnerTypeEnumSerializer;

  const GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum._(String name): super(name);

  static BuiltSet<GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum> get values => _$getApiAuthMe200ResponseDataMembershipsInnerTypeEnumValues;
  static GetApiAuthMe200ResponseDataMembershipsInnerTypeEnum valueOf(String name) => _$getApiAuthMe200ResponseDataMembershipsInnerTypeEnumValueOf(name);
}

