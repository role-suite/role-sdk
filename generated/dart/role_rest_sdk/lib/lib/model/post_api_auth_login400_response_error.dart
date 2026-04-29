//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:role_rest_sdk/lib/model/post_api_auth_login400_response_error_details.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_auth_login400_response_error.g.dart';

/// PostApiAuthLogin400ResponseError
///
/// Properties:
/// * [code] 
/// * [details] 
/// * [message] 
/// * [requestId] 
@BuiltValue()
abstract class PostApiAuthLogin400ResponseError implements Built<PostApiAuthLogin400ResponseError, PostApiAuthLogin400ResponseErrorBuilder> {
  @BuiltValueField(wireName: r'code')
  String get code;

  @BuiltValueField(wireName: r'details')
  PostApiAuthLogin400ResponseErrorDetails get details;

  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'requestId')
  String get requestId;

  PostApiAuthLogin400ResponseError._();

  factory PostApiAuthLogin400ResponseError([void updates(PostApiAuthLogin400ResponseErrorBuilder b)]) = _$PostApiAuthLogin400ResponseError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiAuthLogin400ResponseErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiAuthLogin400ResponseError> get serializer => _$PostApiAuthLogin400ResponseErrorSerializer();
}

class _$PostApiAuthLogin400ResponseErrorSerializer implements PrimitiveSerializer<PostApiAuthLogin400ResponseError> {
  @override
  final Iterable<Type> types = const [PostApiAuthLogin400ResponseError, _$PostApiAuthLogin400ResponseError];

  @override
  final String wireName = r'PostApiAuthLogin400ResponseError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiAuthLogin400ResponseError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(String),
    );
    yield r'details';
    yield serializers.serialize(
      object.details,
      specifiedType: const FullType(PostApiAuthLogin400ResponseErrorDetails),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    yield r'requestId';
    yield serializers.serialize(
      object.requestId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiAuthLogin400ResponseError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiAuthLogin400ResponseErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.code = valueDes;
          break;
        case r'details':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiAuthLogin400ResponseErrorDetails),
          ) as PostApiAuthLogin400ResponseErrorDetails;
          result.details.replace(valueDes);
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'requestId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requestId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostApiAuthLogin400ResponseError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiAuthLogin400ResponseErrorBuilder();
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

