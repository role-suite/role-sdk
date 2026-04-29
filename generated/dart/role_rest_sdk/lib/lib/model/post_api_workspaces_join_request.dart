//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_workspaces_join_request.g.dart';

/// PostApiWorkspacesJoinRequest
///
/// Properties:
/// * [token] 
@BuiltValue()
abstract class PostApiWorkspacesJoinRequest implements Built<PostApiWorkspacesJoinRequest, PostApiWorkspacesJoinRequestBuilder> {
  @BuiltValueField(wireName: r'token')
  String get token;

  PostApiWorkspacesJoinRequest._();

  factory PostApiWorkspacesJoinRequest([void updates(PostApiWorkspacesJoinRequestBuilder b)]) = _$PostApiWorkspacesJoinRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesJoinRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesJoinRequest> get serializer => _$PostApiWorkspacesJoinRequestSerializer();
}

class _$PostApiWorkspacesJoinRequestSerializer implements PrimitiveSerializer<PostApiWorkspacesJoinRequest> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesJoinRequest, _$PostApiWorkspacesJoinRequest];

  @override
  final String wireName = r'PostApiWorkspacesJoinRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesJoinRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'token';
    yield serializers.serialize(
      object.token,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiWorkspacesJoinRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiWorkspacesJoinRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.token = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostApiWorkspacesJoinRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesJoinRequestBuilder();
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

