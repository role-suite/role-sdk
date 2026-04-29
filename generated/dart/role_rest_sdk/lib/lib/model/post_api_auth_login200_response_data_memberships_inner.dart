//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_auth_login200_response_data_memberships_inner.g.dart';

/// PostApiAuthLogin200ResponseDataMembershipsInner
///
/// Properties:
/// * [legacyId] 
/// * [name] 
/// * [role] 
/// * [slug] 
/// * [type] 
/// * [workspaceId] 
@BuiltValue()
abstract class PostApiAuthLogin200ResponseDataMembershipsInner implements Built<PostApiAuthLogin200ResponseDataMembershipsInner, PostApiAuthLogin200ResponseDataMembershipsInnerBuilder> {
  @BuiltValueField(wireName: r'_id')
  int? get legacyId;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'role')
  PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum get role;
  // enum roleEnum {  owner,  admin,  member,  };

  @BuiltValueField(wireName: r'slug')
  String get slug;

  @BuiltValueField(wireName: r'type')
  PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum get type;
  // enum typeEnum {  personal,  team,  };

  @BuiltValueField(wireName: r'workspaceId')
  int get workspaceId;

  PostApiAuthLogin200ResponseDataMembershipsInner._();

  factory PostApiAuthLogin200ResponseDataMembershipsInner([void updates(PostApiAuthLogin200ResponseDataMembershipsInnerBuilder b)]) = _$PostApiAuthLogin200ResponseDataMembershipsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiAuthLogin200ResponseDataMembershipsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiAuthLogin200ResponseDataMembershipsInner> get serializer => _$PostApiAuthLogin200ResponseDataMembershipsInnerSerializer();
}

class _$PostApiAuthLogin200ResponseDataMembershipsInnerSerializer implements PrimitiveSerializer<PostApiAuthLogin200ResponseDataMembershipsInner> {
  @override
  final Iterable<Type> types = const [PostApiAuthLogin200ResponseDataMembershipsInner, _$PostApiAuthLogin200ResponseDataMembershipsInner];

  @override
  final String wireName = r'PostApiAuthLogin200ResponseDataMembershipsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiAuthLogin200ResponseDataMembershipsInner object, {
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
      specifiedType: const FullType(PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum),
    );
    yield r'slug';
    yield serializers.serialize(
      object.slug,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum),
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
    PostApiAuthLogin200ResponseDataMembershipsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiAuthLogin200ResponseDataMembershipsInnerBuilder result,
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
            specifiedType: const FullType(PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum),
          ) as PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum;
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
            specifiedType: const FullType(PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum),
          ) as PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum;
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
  PostApiAuthLogin200ResponseDataMembershipsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiAuthLogin200ResponseDataMembershipsInnerBuilder();
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

class PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'owner')
  static const PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum owner = _$postApiAuthLogin200ResponseDataMembershipsInnerRoleEnum_owner;
  @BuiltValueEnumConst(wireName: r'admin')
  static const PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum admin = _$postApiAuthLogin200ResponseDataMembershipsInnerRoleEnum_admin;
  @BuiltValueEnumConst(wireName: r'member')
  static const PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum member = _$postApiAuthLogin200ResponseDataMembershipsInnerRoleEnum_member;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum unknownDefaultOpenApi = _$postApiAuthLogin200ResponseDataMembershipsInnerRoleEnum_unknownDefaultOpenApi;

  static Serializer<PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum> get serializer => _$postApiAuthLogin200ResponseDataMembershipsInnerRoleEnumSerializer;

  const PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum._(String name): super(name);

  static BuiltSet<PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum> get values => _$postApiAuthLogin200ResponseDataMembershipsInnerRoleEnumValues;
  static PostApiAuthLogin200ResponseDataMembershipsInnerRoleEnum valueOf(String name) => _$postApiAuthLogin200ResponseDataMembershipsInnerRoleEnumValueOf(name);
}

class PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'personal')
  static const PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum personal = _$postApiAuthLogin200ResponseDataMembershipsInnerTypeEnum_personal;
  @BuiltValueEnumConst(wireName: r'team')
  static const PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum team = _$postApiAuthLogin200ResponseDataMembershipsInnerTypeEnum_team;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum unknownDefaultOpenApi = _$postApiAuthLogin200ResponseDataMembershipsInnerTypeEnum_unknownDefaultOpenApi;

  static Serializer<PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum> get serializer => _$postApiAuthLogin200ResponseDataMembershipsInnerTypeEnumSerializer;

  const PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum._(String name): super(name);

  static BuiltSet<PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum> get values => _$postApiAuthLogin200ResponseDataMembershipsInnerTypeEnumValues;
  static PostApiAuthLogin200ResponseDataMembershipsInnerTypeEnum valueOf(String name) => _$postApiAuthLogin200ResponseDataMembershipsInnerTypeEnumValueOf(name);
}

