//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_rest_sdk/lib/model/get_api_auth_me200_response_data.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_api_auth_me200_response.g.dart';

/// GetApiAuthMe200Response
///
/// Properties:
/// * [data] 
/// * [success] 
@BuiltValue()
abstract class GetApiAuthMe200Response implements Built<GetApiAuthMe200Response, GetApiAuthMe200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  GetApiAuthMe200ResponseData get data;

  @BuiltValueField(wireName: r'success')
  bool get success;

  GetApiAuthMe200Response._();

  factory GetApiAuthMe200Response([void updates(GetApiAuthMe200ResponseBuilder b)]) = _$GetApiAuthMe200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetApiAuthMe200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetApiAuthMe200Response> get serializer => _$GetApiAuthMe200ResponseSerializer();
}

class _$GetApiAuthMe200ResponseSerializer implements PrimitiveSerializer<GetApiAuthMe200Response> {
  @override
  final Iterable<Type> types = const [GetApiAuthMe200Response, _$GetApiAuthMe200Response];

  @override
  final String wireName = r'GetApiAuthMe200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetApiAuthMe200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(GetApiAuthMe200ResponseData),
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
    GetApiAuthMe200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetApiAuthMe200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetApiAuthMe200ResponseData),
          ) as GetApiAuthMe200ResponseData;
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
  GetApiAuthMe200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetApiAuthMe200ResponseBuilder();
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

