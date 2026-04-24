//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_environments200_response_data_items_inner.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_workspaces_by_workspace_id_environments201_response.g.dart';

/// PostApiWorkspacesByWorkspaceIdEnvironments201Response
///
/// Properties:
/// * [data] 
/// * [success] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdEnvironments201Response implements Built<PostApiWorkspacesByWorkspaceIdEnvironments201Response, PostApiWorkspacesByWorkspaceIdEnvironments201ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner get data;

  @BuiltValueField(wireName: r'success')
  bool get success;

  PostApiWorkspacesByWorkspaceIdEnvironments201Response._();

  factory PostApiWorkspacesByWorkspaceIdEnvironments201Response([void updates(PostApiWorkspacesByWorkspaceIdEnvironments201ResponseBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdEnvironments201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdEnvironments201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdEnvironments201Response> get serializer => _$PostApiWorkspacesByWorkspaceIdEnvironments201ResponseSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdEnvironments201ResponseSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdEnvironments201Response> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdEnvironments201Response, _$PostApiWorkspacesByWorkspaceIdEnvironments201Response];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdEnvironments201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdEnvironments201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner),
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
    PostApiWorkspacesByWorkspaceIdEnvironments201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiWorkspacesByWorkspaceIdEnvironments201ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner),
          ) as GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner;
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
  PostApiWorkspacesByWorkspaceIdEnvironments201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdEnvironments201ResponseBuilder();
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

