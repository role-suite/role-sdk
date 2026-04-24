//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:role_sdk/lib/model/post_api_auth_login401_response_error.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_auth_login401_response.g.dart';

/// PostApiAuthLogin401Response
///
/// Properties:
/// * [error] 
/// * [success] 
@BuiltValue()
abstract class PostApiAuthLogin401Response implements Built<PostApiAuthLogin401Response, PostApiAuthLogin401ResponseBuilder> {
  @BuiltValueField(wireName: r'error')
  PostApiAuthLogin401ResponseError get error;

  @BuiltValueField(wireName: r'success')
  bool get success;

  PostApiAuthLogin401Response._();

  factory PostApiAuthLogin401Response([void updates(PostApiAuthLogin401ResponseBuilder b)]) = _$PostApiAuthLogin401Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiAuthLogin401ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiAuthLogin401Response> get serializer => _$PostApiAuthLogin401ResponseSerializer();
}

class _$PostApiAuthLogin401ResponseSerializer implements PrimitiveSerializer<PostApiAuthLogin401Response> {
  @override
  final Iterable<Type> types = const [PostApiAuthLogin401Response, _$PostApiAuthLogin401Response];

  @override
  final String wireName = r'PostApiAuthLogin401Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiAuthLogin401Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'error';
    yield serializers.serialize(
      object.error,
      specifiedType: const FullType(PostApiAuthLogin401ResponseError),
    );
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiAuthLogin401Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiAuthLogin401ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiAuthLogin401ResponseError),
          ) as PostApiAuthLogin401ResponseError;
          result.error = valueDes;
          break;
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostApiAuthLogin401Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiAuthLogin401ResponseBuilder();
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

