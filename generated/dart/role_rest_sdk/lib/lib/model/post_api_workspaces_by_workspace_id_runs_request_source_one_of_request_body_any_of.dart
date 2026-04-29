//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_rest_sdk/lib/model/post_api_workspaces_by_workspace_id_runs_request_source_one_of_request_body_any_of_any_of.dart';
import 'package:role_rest_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_body_any_of2.dart';
import 'package:role_rest_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_body_any_of2_entries_inner.dart';
import 'package:role_rest_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_body_any_of3.dart';
import 'package:built_collection/built_collection.dart';
import 'package:role_rest_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_body_any_of4.dart';
import 'package:role_rest_sdk/lib/model/get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_body_any_of_any_of4.dart';
import 'package:role_rest_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_body_any_of.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'post_api_workspaces_by_workspace_id_runs_request_source_one_of_request_body_any_of.g.dart';

/// PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOf
///
/// Properties:
/// * [contentType] 
/// * [mode] 
/// * [raw] 
/// * [entries] 
/// * [dataBase64] 
/// * [fileName] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOf implements Built<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOf, PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfBuilder> {
  /// Any Of [GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf4], [PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf], [PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf2], [PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf3], [PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf4], [PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOf]
  AnyOf get anyOf;

  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOf._();

  factory PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOf([void updates(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOf> get serializer => _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOf> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOf, _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOf];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf), FullType(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOf), FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf2), FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf3), FullType(GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf4), FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf4), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

