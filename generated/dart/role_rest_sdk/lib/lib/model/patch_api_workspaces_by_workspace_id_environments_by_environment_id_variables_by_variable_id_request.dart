//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patch_api_workspaces_by_workspace_id_environments_by_environment_id_variables_by_variable_id_request.g.dart';

/// PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest
///
/// Properties:
/// * [enabled] 
/// * [isSecret] 
/// * [key] 
/// * [position] 
/// * [value] 
@BuiltValue()
abstract class PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest implements Built<PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest, PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequestBuilder> {
  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'isSecret')
  bool? get isSecret;

  @BuiltValueField(wireName: r'key')
  String? get key;

  @BuiltValueField(wireName: r'position')
  int? get position;

  @BuiltValueField(wireName: r'value')
  String? get value;

  PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest._();

  factory PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest([void updates(PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequestBuilder b)]) = _$PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest> get serializer => _$PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequestSerializer();
}

class _$PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequestSerializer implements PrimitiveSerializer<PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest> {
  @override
  final Iterable<Type> types = const [PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest, _$PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest];

  @override
  final String wireName = r'PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isSecret != null) {
      yield r'isSecret';
      yield serializers.serialize(
        object.isSecret,
        specifiedType: const FullType(bool),
      );
    }
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(String),
      );
    }
    if (object.position != null) {
      yield r'position';
      yield serializers.serialize(
        object.position,
        specifiedType: const FullType(int),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        case r'isSecret':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isSecret = valueDes;
          break;
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.key = valueDes;
          break;
        case r'position':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.position = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequestBuilder();
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

