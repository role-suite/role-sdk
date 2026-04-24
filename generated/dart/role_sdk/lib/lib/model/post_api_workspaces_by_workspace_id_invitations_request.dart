//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_workspaces_by_workspace_id_invitations_request.g.dart';

/// PostApiWorkspacesByWorkspaceIdInvitationsRequest
///
/// Properties:
/// * [email] 
/// * [role] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdInvitationsRequest implements Built<PostApiWorkspacesByWorkspaceIdInvitationsRequest, PostApiWorkspacesByWorkspaceIdInvitationsRequestBuilder> {
  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'role')
  PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum? get role;
  // enum roleEnum {  admin,  member,  };

  PostApiWorkspacesByWorkspaceIdInvitationsRequest._();

  factory PostApiWorkspacesByWorkspaceIdInvitationsRequest([void updates(PostApiWorkspacesByWorkspaceIdInvitationsRequestBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdInvitationsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdInvitationsRequestBuilder b) => b
      ..role = const PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum._('member');

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdInvitationsRequest> get serializer => _$PostApiWorkspacesByWorkspaceIdInvitationsRequestSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdInvitationsRequestSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdInvitationsRequest> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdInvitationsRequest, _$PostApiWorkspacesByWorkspaceIdInvitationsRequest];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdInvitationsRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdInvitationsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdInvitationsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiWorkspacesByWorkspaceIdInvitationsRequestBuilder result,
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
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum),
          ) as PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum;
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
  PostApiWorkspacesByWorkspaceIdInvitationsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdInvitationsRequestBuilder();
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

class PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'admin')
  static const PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum admin = _$postApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum_admin;
  @BuiltValueEnumConst(wireName: r'member')
  static const PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum member = _$postApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum_member;

  static Serializer<PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum> get serializer => _$postApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnumSerializer;

  const PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum._(String name): super(name);

  static BuiltSet<PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum> get values => _$postApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnumValues;
  static PostApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnum valueOf(String name) => _$postApiWorkspacesByWorkspaceIdInvitationsRequestRoleEnumValueOf(name);
}

