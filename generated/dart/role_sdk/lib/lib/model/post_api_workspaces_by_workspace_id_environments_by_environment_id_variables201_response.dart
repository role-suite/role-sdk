//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_environments_by_environment_id_variables200_response_data_items_inner.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_workspaces_by_workspace_id_environments_by_environment_id_variables201_response.g.dart';

/// PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response
///
/// Properties:
/// * [data] 
/// * [success] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response implements Built<PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response, PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner get data;

  @BuiltValueField(wireName: r'success')
  bool get success;

  PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response._();

  factory PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response([void updates(PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201ResponseBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response> get serializer => _$PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201ResponseSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201ResponseSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response, _$PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner),
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
    PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner),
          ) as GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner;
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
  PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201ResponseBuilder();
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

