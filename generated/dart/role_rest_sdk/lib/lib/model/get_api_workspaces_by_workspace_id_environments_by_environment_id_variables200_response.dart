//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:role_rest_sdk/lib/model/get_api_workspaces_by_workspace_id_environments_by_environment_id_variables200_response_data.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_api_workspaces_by_workspace_id_environments_by_environment_id_variables200_response.g.dart';

/// GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response
///
/// Properties:
/// * [data] 
/// * [success] 
@BuiltValue()
abstract class GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response implements Built<GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response, GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData get data;

  @BuiltValueField(wireName: r'success')
  bool get success;

  GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response._();

  factory GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response([void updates(GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseBuilder b)]) = _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response> get serializer => _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseSerializer();
}

class _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseSerializer implements PrimitiveSerializer<GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response> {
  @override
  final Iterable<Type> types = const [GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response, _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response];

  @override
  final String wireName = r'GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData),
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
    GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData),
          ) as GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData;
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
  GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseBuilder();
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

