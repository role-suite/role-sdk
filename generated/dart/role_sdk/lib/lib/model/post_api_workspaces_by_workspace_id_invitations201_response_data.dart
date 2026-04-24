//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_workspaces_by_workspace_id_invitations201_response_data.g.dart';

/// PostApiWorkspacesByWorkspaceIdInvitations201ResponseData
///
/// Properties:
/// * [email] 
/// * [expiresAt] 
/// * [id] 
/// * [role] 
/// * [token] 
/// * [workspaceId] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdInvitations201ResponseData implements Built<PostApiWorkspacesByWorkspaceIdInvitations201ResponseData, PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataBuilder> {
  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'expiresAt')
  String get expiresAt;

  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'role')
  PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum get role;
  // enum roleEnum {  admin,  member,  };

  @BuiltValueField(wireName: r'token')
  String get token;

  @BuiltValueField(wireName: r'workspaceId')
  int get workspaceId;

  PostApiWorkspacesByWorkspaceIdInvitations201ResponseData._();

  factory PostApiWorkspacesByWorkspaceIdInvitations201ResponseData([void updates(PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdInvitations201ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdInvitations201ResponseData> get serializer => _$PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdInvitations201ResponseData> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdInvitations201ResponseData, _$PostApiWorkspacesByWorkspaceIdInvitations201ResponseData];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdInvitations201ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdInvitations201ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'expiresAt';
    yield serializers.serialize(
      object.expiresAt,
      specifiedType: const FullType(String),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum),
    );
    yield r'token';
    yield serializers.serialize(
      object.token,
      specifiedType: const FullType(String),
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
    PostApiWorkspacesByWorkspaceIdInvitations201ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataBuilder result,
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
        case r'expiresAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expiresAt = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum),
          ) as PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum;
          result.role = valueDes;
          break;
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.token = valueDes;
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
  PostApiWorkspacesByWorkspaceIdInvitations201ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataBuilder();
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

class PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'admin')
  static const PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum admin = _$postApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum_admin;
  @BuiltValueEnumConst(wireName: r'member')
  static const PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum member = _$postApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum_member;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum unknownDefaultOpenApi = _$postApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum_unknownDefaultOpenApi;

  static Serializer<PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum> get serializer => _$postApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnumSerializer;

  const PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum._(String name): super(name);

  static BuiltSet<PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum> get values => _$postApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnumValues;
  static PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnum valueOf(String name) => _$postApiWorkspacesByWorkspaceIdInvitations201ResponseDataRoleEnumValueOf(name);
}

