//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_api_workspaces_by_workspace_id_members200_response_data_items_inner.g.dart';

/// GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner
///
/// Properties:
/// * [email] 
/// * [name] 
/// * [role] 
/// * [userId] 
@BuiltValue()
abstract class GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner implements Built<GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner, GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerBuilder> {
  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'role')
  GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum get role;
  // enum roleEnum {  owner,  admin,  member,  };

  @BuiltValueField(wireName: r'userId')
  int get userId;

  GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner._();

  factory GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner([void updates(GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerBuilder b)]) = _$GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner> get serializer => _$GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerSerializer();
}

class _$GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerSerializer implements PrimitiveSerializer<GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner> {
  @override
  final Iterable<Type> types = const [GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner, _$GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner];

  @override
  final String wireName = r'GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum),
    );
    yield r'userId';
    yield serializers.serialize(
      object.userId,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
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
            specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum),
          ) as GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum;
          result.role = valueDes;
          break;
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.userId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerBuilder();
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

class GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'owner')
  static const GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum owner = _$getApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum_owner;
  @BuiltValueEnumConst(wireName: r'admin')
  static const GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum admin = _$getApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum_admin;
  @BuiltValueEnumConst(wireName: r'member')
  static const GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum member = _$getApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum_member;

  static Serializer<GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum> get serializer => _$getApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnumSerializer;

  const GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum._(String name): super(name);

  static BuiltSet<GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum> get values => _$getApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnumValues;
  static GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnum valueOf(String name) => _$getApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerRoleEnumValueOf(name);
}

