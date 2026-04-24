//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs_request_source_one_of_request_body_any_of.dart';
import 'package:built_collection/built_collection.dart';
import 'package:role_sdk/lib/model/model_null.dart';
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_body_any_of2_entries_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'post_api_workspaces_by_workspace_id_runs_request_source_one_of_request_body.g.dart';

/// PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody
///
/// Properties:
/// * [contentType] 
/// * [mode] 
/// * [raw] 
/// * [entries] 
/// * [dataBase64] 
/// * [fileName] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody implements Built<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody, PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyBuilder> {
  /// Any Of [ModelNull], [PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOf]
  AnyOf get anyOf;

  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody._();

  factory PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody([void updates(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody> get serializer => _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodySerializer();
}

class _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodySerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody, _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOf), FullType(ModelNull), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

