//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_rest_sdk/lib/model/get_api_workspaces200_response_data.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_api_workspaces200_response.g.dart';

/// GetApiWorkspaces200Response
///
/// Properties:
/// * [data] 
/// * [success] 
@BuiltValue()
abstract class GetApiWorkspaces200Response implements Built<GetApiWorkspaces200Response, GetApiWorkspaces200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  GetApiWorkspaces200ResponseData get data;

  @BuiltValueField(wireName: r'success')
  bool get success;

  GetApiWorkspaces200Response._();

  factory GetApiWorkspaces200Response([void updates(GetApiWorkspaces200ResponseBuilder b)]) = _$GetApiWorkspaces200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetApiWorkspaces200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetApiWorkspaces200Response> get serializer => _$GetApiWorkspaces200ResponseSerializer();
}

class _$GetApiWorkspaces200ResponseSerializer implements PrimitiveSerializer<GetApiWorkspaces200Response> {
  @override
  final Iterable<Type> types = const [GetApiWorkspaces200Response, _$GetApiWorkspaces200Response];

  @override
  final String wireName = r'GetApiWorkspaces200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetApiWorkspaces200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(GetApiWorkspaces200ResponseData),
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
    GetApiWorkspaces200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetApiWorkspaces200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetApiWorkspaces200ResponseData),
          ) as GetApiWorkspaces200ResponseData;
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
  GetApiWorkspaces200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetApiWorkspaces200ResponseBuilder();
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

