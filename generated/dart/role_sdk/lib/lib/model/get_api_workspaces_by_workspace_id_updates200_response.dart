//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_updates200_response_data.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_api_workspaces_by_workspace_id_updates200_response.g.dart';

/// GetApiWorkspacesByWorkspaceIdUpdates200Response
///
/// Properties:
/// * [data] 
/// * [success] 
@BuiltValue()
abstract class GetApiWorkspacesByWorkspaceIdUpdates200Response implements Built<GetApiWorkspacesByWorkspaceIdUpdates200Response, GetApiWorkspacesByWorkspaceIdUpdates200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  GetApiWorkspacesByWorkspaceIdUpdates200ResponseData get data;

  @BuiltValueField(wireName: r'success')
  bool get success;

  GetApiWorkspacesByWorkspaceIdUpdates200Response._();

  factory GetApiWorkspacesByWorkspaceIdUpdates200Response([void updates(GetApiWorkspacesByWorkspaceIdUpdates200ResponseBuilder b)]) = _$GetApiWorkspacesByWorkspaceIdUpdates200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetApiWorkspacesByWorkspaceIdUpdates200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetApiWorkspacesByWorkspaceIdUpdates200Response> get serializer => _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseSerializer();
}

class _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseSerializer implements PrimitiveSerializer<GetApiWorkspacesByWorkspaceIdUpdates200Response> {
  @override
  final Iterable<Type> types = const [GetApiWorkspacesByWorkspaceIdUpdates200Response, _$GetApiWorkspacesByWorkspaceIdUpdates200Response];

  @override
  final String wireName = r'GetApiWorkspacesByWorkspaceIdUpdates200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetApiWorkspacesByWorkspaceIdUpdates200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdUpdates200ResponseData),
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
    GetApiWorkspacesByWorkspaceIdUpdates200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetApiWorkspacesByWorkspaceIdUpdates200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdUpdates200ResponseData),
          ) as GetApiWorkspacesByWorkspaceIdUpdates200ResponseData;
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
  GetApiWorkspacesByWorkspaceIdUpdates200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetApiWorkspacesByWorkspaceIdUpdates200ResponseBuilder();
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

