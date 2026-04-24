//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:role_sdk/lib/model/post_api_auth_login200_response_data.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_auth_login200_response.g.dart';

/// PostApiAuthLogin200Response
///
/// Properties:
/// * [data] 
/// * [success] 
@BuiltValue()
abstract class PostApiAuthLogin200Response implements Built<PostApiAuthLogin200Response, PostApiAuthLogin200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  PostApiAuthLogin200ResponseData get data;

  @BuiltValueField(wireName: r'success')
  bool get success;

  PostApiAuthLogin200Response._();

  factory PostApiAuthLogin200Response([void updates(PostApiAuthLogin200ResponseBuilder b)]) = _$PostApiAuthLogin200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiAuthLogin200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiAuthLogin200Response> get serializer => _$PostApiAuthLogin200ResponseSerializer();
}

class _$PostApiAuthLogin200ResponseSerializer implements PrimitiveSerializer<PostApiAuthLogin200Response> {
  @override
  final Iterable<Type> types = const [PostApiAuthLogin200Response, _$PostApiAuthLogin200Response];

  @override
  final String wireName = r'PostApiAuthLogin200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiAuthLogin200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(PostApiAuthLogin200ResponseData),
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
    PostApiAuthLogin200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiAuthLogin200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiAuthLogin200ResponseData),
          ) as PostApiAuthLogin200ResponseData;
          result.data = valueDes;
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
  PostApiAuthLogin200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiAuthLogin200ResponseBuilder();
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

