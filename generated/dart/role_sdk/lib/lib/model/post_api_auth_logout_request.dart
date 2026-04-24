//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_auth_logout_request.g.dart';

/// PostApiAuthLogoutRequest
///
/// Properties:
/// * [refreshToken] 
@BuiltValue()
abstract class PostApiAuthLogoutRequest implements Built<PostApiAuthLogoutRequest, PostApiAuthLogoutRequestBuilder> {
  @BuiltValueField(wireName: r'refreshToken')
  String get refreshToken;

  PostApiAuthLogoutRequest._();

  factory PostApiAuthLogoutRequest([void updates(PostApiAuthLogoutRequestBuilder b)]) = _$PostApiAuthLogoutRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiAuthLogoutRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiAuthLogoutRequest> get serializer => _$PostApiAuthLogoutRequestSerializer();
}

class _$PostApiAuthLogoutRequestSerializer implements PrimitiveSerializer<PostApiAuthLogoutRequest> {
  @override
  final Iterable<Type> types = const [PostApiAuthLogoutRequest, _$PostApiAuthLogoutRequest];

  @override
  final String wireName = r'PostApiAuthLogoutRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiAuthLogoutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'refreshToken';
    yield serializers.serialize(
      object.refreshToken,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiAuthLogoutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiAuthLogoutRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'refreshToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.refreshToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostApiAuthLogoutRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiAuthLogoutRequestBuilder();
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

