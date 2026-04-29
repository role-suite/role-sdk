//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:role_rest_sdk/lib/model/post_api_auth_refresh200_response_data.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_auth_refresh200_response.g.dart';

/// PostApiAuthRefresh200Response
///
/// Properties:
/// * [data] 
/// * [success] 
@BuiltValue()
abstract class PostApiAuthRefresh200Response implements Built<PostApiAuthRefresh200Response, PostApiAuthRefresh200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  PostApiAuthRefresh200ResponseData get data;

  @BuiltValueField(wireName: r'success')
  bool get success;

  PostApiAuthRefresh200Response._();

  factory PostApiAuthRefresh200Response([void updates(PostApiAuthRefresh200ResponseBuilder b)]) = _$PostApiAuthRefresh200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiAuthRefresh200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiAuthRefresh200Response> get serializer => _$PostApiAuthRefresh200ResponseSerializer();
}

class _$PostApiAuthRefresh200ResponseSerializer implements PrimitiveSerializer<PostApiAuthRefresh200Response> {
  @override
  final Iterable<Type> types = const [PostApiAuthRefresh200Response, _$PostApiAuthRefresh200Response];

  @override
  final String wireName = r'PostApiAuthRefresh200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiAuthRefresh200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(PostApiAuthRefresh200ResponseData),
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
    PostApiAuthRefresh200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiAuthRefresh200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiAuthRefresh200ResponseData),
          ) as PostApiAuthRefresh200ResponseData;
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
  PostApiAuthRefresh200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiAuthRefresh200ResponseBuilder();
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

