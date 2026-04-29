//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_rest_sdk/lib/model/get_api_workspaces_by_workspace_id_collections200_response_data_items_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_workspaces_by_workspace_id_collections201_response.g.dart';

/// PostApiWorkspacesByWorkspaceIdCollections201Response
///
/// Properties:
/// * [data] 
/// * [success] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdCollections201Response implements Built<PostApiWorkspacesByWorkspaceIdCollections201Response, PostApiWorkspacesByWorkspaceIdCollections201ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner get data;

  @BuiltValueField(wireName: r'success')
  bool get success;

  PostApiWorkspacesByWorkspaceIdCollections201Response._();

  factory PostApiWorkspacesByWorkspaceIdCollections201Response([void updates(PostApiWorkspacesByWorkspaceIdCollections201ResponseBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdCollections201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdCollections201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdCollections201Response> get serializer => _$PostApiWorkspacesByWorkspaceIdCollections201ResponseSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdCollections201ResponseSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdCollections201Response> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdCollections201Response, _$PostApiWorkspacesByWorkspaceIdCollections201Response];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdCollections201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdCollections201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner),
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
    PostApiWorkspacesByWorkspaceIdCollections201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiWorkspacesByWorkspaceIdCollections201ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner),
          ) as GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner;
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
  PostApiWorkspacesByWorkspaceIdCollections201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdCollections201ResponseBuilder();
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

