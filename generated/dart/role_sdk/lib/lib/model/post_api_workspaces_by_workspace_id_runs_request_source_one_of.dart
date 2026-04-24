//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs_request_source_one_of_request.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_workspaces_by_workspace_id_runs_request_source_one_of.g.dart';

/// PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf
///
/// Properties:
/// * [request] 
/// * [type] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf implements Built<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf, PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfBuilder> {
  @BuiltValueField(wireName: r'request')
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest get request;

  @BuiltValueField(wireName: r'type')
  String get type;

  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf._();

  factory PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf([void updates(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf> get serializer => _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf, _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'request';
    yield serializers.serialize(
      object.request,
      specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest),
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
    PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'request':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest),
          ) as PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest;
          result.request = valueDes;
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
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfBuilder();
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

