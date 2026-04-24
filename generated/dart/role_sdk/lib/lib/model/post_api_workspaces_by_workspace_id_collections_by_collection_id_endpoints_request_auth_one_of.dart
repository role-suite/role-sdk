//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_auth_one_of.g.dart';

/// PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOf
///
/// Properties:
/// * [token] 
/// * [type] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOf implements Built<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOf, PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOfBuilder> {
  @BuiltValueField(wireName: r'token')
  String get token;

  @BuiltValueField(wireName: r'type')
  String get type;

  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOf._();

  factory PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOf([void updates(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOfBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOf> get serializer => _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOfSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOfSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOf> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOf, _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOf];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'token';
    yield serializers.serialize(
      object.token,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.token = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOfBuilder();
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

