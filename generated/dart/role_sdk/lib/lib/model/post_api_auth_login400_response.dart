//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_auth_login400_response_error.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_auth_login400_response.g.dart';

/// PostApiAuthLogin400Response
///
/// Properties:
/// * [error] 
/// * [success] 
@BuiltValue()
abstract class PostApiAuthLogin400Response implements Built<PostApiAuthLogin400Response, PostApiAuthLogin400ResponseBuilder> {
  @BuiltValueField(wireName: r'error')
  PostApiAuthLogin400ResponseError get error;

  @BuiltValueField(wireName: r'success')
  bool get success;

  PostApiAuthLogin400Response._();

  factory PostApiAuthLogin400Response([void updates(PostApiAuthLogin400ResponseBuilder b)]) = _$PostApiAuthLogin400Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiAuthLogin400ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiAuthLogin400Response> get serializer => _$PostApiAuthLogin400ResponseSerializer();
}

class _$PostApiAuthLogin400ResponseSerializer implements PrimitiveSerializer<PostApiAuthLogin400Response> {
  @override
  final Iterable<Type> types = const [PostApiAuthLogin400Response, _$PostApiAuthLogin400Response];

  @override
  final String wireName = r'PostApiAuthLogin400Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiAuthLogin400Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'error';
    yield serializers.serialize(
      object.error,
      specifiedType: const FullType(PostApiAuthLogin400ResponseError),
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
    PostApiAuthLogin400Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiAuthLogin400ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiAuthLogin400ResponseError),
          ) as PostApiAuthLogin400ResponseError;
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
  PostApiAuthLogin400Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiAuthLogin400ResponseBuilder();
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

