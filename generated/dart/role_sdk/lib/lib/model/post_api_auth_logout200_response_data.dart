//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_auth_logout200_response_data.g.dart';

/// PostApiAuthLogout200ResponseData
///
/// Properties:
/// * [action] 
@BuiltValue()
abstract class PostApiAuthLogout200ResponseData implements Built<PostApiAuthLogout200ResponseData, PostApiAuthLogout200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'action')
  String get action;

  PostApiAuthLogout200ResponseData._();

  factory PostApiAuthLogout200ResponseData([void updates(PostApiAuthLogout200ResponseDataBuilder b)]) = _$PostApiAuthLogout200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiAuthLogout200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiAuthLogout200ResponseData> get serializer => _$PostApiAuthLogout200ResponseDataSerializer();
}

class _$PostApiAuthLogout200ResponseDataSerializer implements PrimitiveSerializer<PostApiAuthLogout200ResponseData> {
  @override
  final Iterable<Type> types = const [PostApiAuthLogout200ResponseData, _$PostApiAuthLogout200ResponseData];

  @override
  final String wireName = r'PostApiAuthLogout200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiAuthLogout200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'action';
    yield serializers.serialize(
      object.action,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiAuthLogout200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiAuthLogout200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.action = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostApiAuthLogout200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiAuthLogout200ResponseDataBuilder();
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

