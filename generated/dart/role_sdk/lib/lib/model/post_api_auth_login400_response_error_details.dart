//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_auth_login400_response_error_details.g.dart';

/// PostApiAuthLogin400ResponseErrorDetails
///
/// Properties:
/// * [fieldErrors] 
@BuiltValue()
abstract class PostApiAuthLogin400ResponseErrorDetails implements Built<PostApiAuthLogin400ResponseErrorDetails, PostApiAuthLogin400ResponseErrorDetailsBuilder> {
  @BuiltValueField(wireName: r'fieldErrors')
  BuiltMap<String, BuiltList<String>> get fieldErrors;

  PostApiAuthLogin400ResponseErrorDetails._();

  factory PostApiAuthLogin400ResponseErrorDetails([void updates(PostApiAuthLogin400ResponseErrorDetailsBuilder b)]) = _$PostApiAuthLogin400ResponseErrorDetails;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiAuthLogin400ResponseErrorDetailsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiAuthLogin400ResponseErrorDetails> get serializer => _$PostApiAuthLogin400ResponseErrorDetailsSerializer();
}

class _$PostApiAuthLogin400ResponseErrorDetailsSerializer implements PrimitiveSerializer<PostApiAuthLogin400ResponseErrorDetails> {
  @override
  final Iterable<Type> types = const [PostApiAuthLogin400ResponseErrorDetails, _$PostApiAuthLogin400ResponseErrorDetails];

  @override
  final String wireName = r'PostApiAuthLogin400ResponseErrorDetails';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiAuthLogin400ResponseErrorDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'fieldErrors';
    yield serializers.serialize(
      object.fieldErrors,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltList, [FullType(String)])]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiAuthLogin400ResponseErrorDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiAuthLogin400ResponseErrorDetailsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fieldErrors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltList, [FullType(String)])]),
          ) as BuiltMap<String, BuiltList<String>>;
          result.fieldErrors.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostApiAuthLogin400ResponseErrorDetails deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiAuthLogin400ResponseErrorDetailsBuilder();
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

