//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_auth_login401_response_error.g.dart';

/// PostApiAuthLogin401ResponseError
///
/// Properties:
/// * [code] 
/// * [details] 
/// * [message] 
/// * [requestId] 
@BuiltValue()
abstract class PostApiAuthLogin401ResponseError implements Built<PostApiAuthLogin401ResponseError, PostApiAuthLogin401ResponseErrorBuilder> {
  @BuiltValueField(wireName: r'code')
  String get code;

  @BuiltValueField(wireName: r'details')
  BuiltMap<String, JsonObject?> get details;

  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'requestId')
  String get requestId;

  PostApiAuthLogin401ResponseError._();

  factory PostApiAuthLogin401ResponseError([void updates(PostApiAuthLogin401ResponseErrorBuilder b)]) = _$PostApiAuthLogin401ResponseError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiAuthLogin401ResponseErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiAuthLogin401ResponseError> get serializer => _$PostApiAuthLogin401ResponseErrorSerializer();
}

class _$PostApiAuthLogin401ResponseErrorSerializer implements PrimitiveSerializer<PostApiAuthLogin401ResponseError> {
  @override
  final Iterable<Type> types = const [PostApiAuthLogin401ResponseError, _$PostApiAuthLogin401ResponseError];

  @override
  final String wireName = r'PostApiAuthLogin401ResponseError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiAuthLogin401ResponseError object, {
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
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
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
    PostApiAuthLogin401ResponseError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiAuthLogin401ResponseErrorBuilder result,
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
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
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
  PostApiAuthLogin401ResponseError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiAuthLogin401ResponseErrorBuilder();
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

