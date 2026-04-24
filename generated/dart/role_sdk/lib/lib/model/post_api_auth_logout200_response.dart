//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:role_sdk/lib/model/post_api_auth_logout200_response_data.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_auth_logout200_response.g.dart';

/// PostApiAuthLogout200Response
///
/// Properties:
/// * [data] 
/// * [success] 
@BuiltValue()
abstract class PostApiAuthLogout200Response implements Built<PostApiAuthLogout200Response, PostApiAuthLogout200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  PostApiAuthLogout200ResponseData get data;

  @BuiltValueField(wireName: r'success')
  bool get success;

  PostApiAuthLogout200Response._();

  factory PostApiAuthLogout200Response([void updates(PostApiAuthLogout200ResponseBuilder b)]) = _$PostApiAuthLogout200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiAuthLogout200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiAuthLogout200Response> get serializer => _$PostApiAuthLogout200ResponseSerializer();
}

class _$PostApiAuthLogout200ResponseSerializer implements PrimitiveSerializer<PostApiAuthLogout200Response> {
  @override
  final Iterable<Type> types = const [PostApiAuthLogout200Response, _$PostApiAuthLogout200Response];

  @override
  final String wireName = r'PostApiAuthLogout200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiAuthLogout200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(PostApiAuthLogout200ResponseData),
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
    PostApiAuthLogout200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiAuthLogout200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiAuthLogout200ResponseData),
          ) as PostApiAuthLogout200ResponseData;
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
  PostApiAuthLogout200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiAuthLogout200ResponseBuilder();
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

