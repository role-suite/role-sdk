//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_auth_login200_response_data_workspace.g.dart';

/// PostApiAuthLogin200ResponseDataWorkspace
///
/// Properties:
/// * [id] 
/// * [id] 
/// * [name] 
/// * [role] 
/// * [slug] 
/// * [type] 
@BuiltValue()
abstract class PostApiAuthLogin200ResponseDataWorkspace implements Built<PostApiAuthLogin200ResponseDataWorkspace, PostApiAuthLogin200ResponseDataWorkspaceBuilder> {
  @BuiltValueField(wireName: r'_id')
  int get id;

  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'role')
  PostApiAuthLogin200ResponseDataWorkspaceRoleEnum get role;
  // enum roleEnum {  owner,  admin,  member,  };

  @BuiltValueField(wireName: r'slug')
  String get slug;

  @BuiltValueField(wireName: r'type')
  PostApiAuthLogin200ResponseDataWorkspaceTypeEnum get type;
  // enum typeEnum {  personal,  team,  };

  PostApiAuthLogin200ResponseDataWorkspace._();

  factory PostApiAuthLogin200ResponseDataWorkspace([void updates(PostApiAuthLogin200ResponseDataWorkspaceBuilder b)]) = _$PostApiAuthLogin200ResponseDataWorkspace;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiAuthLogin200ResponseDataWorkspaceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiAuthLogin200ResponseDataWorkspace> get serializer => _$PostApiAuthLogin200ResponseDataWorkspaceSerializer();
}

class _$PostApiAuthLogin200ResponseDataWorkspaceSerializer implements PrimitiveSerializer<PostApiAuthLogin200ResponseDataWorkspace> {
  @override
  final Iterable<Type> types = const [PostApiAuthLogin200ResponseDataWorkspace, _$PostApiAuthLogin200ResponseDataWorkspace];

  @override
  final String wireName = r'PostApiAuthLogin200ResponseDataWorkspace';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiAuthLogin200ResponseDataWorkspace object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'_id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(PostApiAuthLogin200ResponseDataWorkspaceRoleEnum),
    );
    yield r'slug';
    yield serializers.serialize(
      object.slug,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(PostApiAuthLogin200ResponseDataWorkspaceTypeEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiAuthLogin200ResponseDataWorkspace object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiAuthLogin200ResponseDataWorkspaceBuilder result,
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
          result.id = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
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
            specifiedType: const FullType(PostApiAuthLogin200ResponseDataWorkspaceRoleEnum),
          ) as PostApiAuthLogin200ResponseDataWorkspaceRoleEnum;
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
            specifiedType: const FullType(PostApiAuthLogin200ResponseDataWorkspaceTypeEnum),
          ) as PostApiAuthLogin200ResponseDataWorkspaceTypeEnum;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostApiAuthLogin200ResponseDataWorkspace deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiAuthLogin200ResponseDataWorkspaceBuilder();
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

class PostApiAuthLogin200ResponseDataWorkspaceRoleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'owner')
  static const PostApiAuthLogin200ResponseDataWorkspaceRoleEnum owner = _$postApiAuthLogin200ResponseDataWorkspaceRoleEnum_owner;
  @BuiltValueEnumConst(wireName: r'admin')
  static const PostApiAuthLogin200ResponseDataWorkspaceRoleEnum admin = _$postApiAuthLogin200ResponseDataWorkspaceRoleEnum_admin;
  @BuiltValueEnumConst(wireName: r'member')
  static const PostApiAuthLogin200ResponseDataWorkspaceRoleEnum member = _$postApiAuthLogin200ResponseDataWorkspaceRoleEnum_member;

  static Serializer<PostApiAuthLogin200ResponseDataWorkspaceRoleEnum> get serializer => _$postApiAuthLogin200ResponseDataWorkspaceRoleEnumSerializer;

  const PostApiAuthLogin200ResponseDataWorkspaceRoleEnum._(String name): super(name);

  static BuiltSet<PostApiAuthLogin200ResponseDataWorkspaceRoleEnum> get values => _$postApiAuthLogin200ResponseDataWorkspaceRoleEnumValues;
  static PostApiAuthLogin200ResponseDataWorkspaceRoleEnum valueOf(String name) => _$postApiAuthLogin200ResponseDataWorkspaceRoleEnumValueOf(name);
}

class PostApiAuthLogin200ResponseDataWorkspaceTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'personal')
  static const PostApiAuthLogin200ResponseDataWorkspaceTypeEnum personal = _$postApiAuthLogin200ResponseDataWorkspaceTypeEnum_personal;
  @BuiltValueEnumConst(wireName: r'team')
  static const PostApiAuthLogin200ResponseDataWorkspaceTypeEnum team = _$postApiAuthLogin200ResponseDataWorkspaceTypeEnum_team;

  static Serializer<PostApiAuthLogin200ResponseDataWorkspaceTypeEnum> get serializer => _$postApiAuthLogin200ResponseDataWorkspaceTypeEnumSerializer;

  const PostApiAuthLogin200ResponseDataWorkspaceTypeEnum._(String name): super(name);

  static BuiltSet<PostApiAuthLogin200ResponseDataWorkspaceTypeEnum> get values => _$postApiAuthLogin200ResponseDataWorkspaceTypeEnumValues;
  static PostApiAuthLogin200ResponseDataWorkspaceTypeEnum valueOf(String name) => _$postApiAuthLogin200ResponseDataWorkspaceTypeEnumValueOf(name);
}

