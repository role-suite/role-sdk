//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs_request_source_one_of_request_body_any_of_any_of_entries_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_workspaces_by_workspace_id_runs_request_source_one_of_request_body_any_of_any_of.g.dart';

/// PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOf
///
/// Properties:
/// * [entries] 
/// * [mode] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOf implements Built<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOf, PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfBuilder> {
  @BuiltValueField(wireName: r'entries')
  BuiltList<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInner> get entries;

  @BuiltValueField(wireName: r'mode')
  String get mode;

  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOf._();

  factory PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOf([void updates(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOf> get serializer => _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOf> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOf, _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOf];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'entries';
    yield serializers.serialize(
      object.entries,
      specifiedType: const FullType(BuiltList, [FullType(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInner)]),
    );
    yield r'mode';
    yield serializers.serialize(
      object.mode,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInner)]),
          ) as BuiltList<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInner>;
          result.entries.replace(valueDes);
          break;
        case r'mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfBuilder();
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

