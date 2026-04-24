//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs_request_source_one_of_request_auth_one_of1.dart';
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_auth_any_of_one_of.dart';
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs_request_source_one_of_request_auth_one_of.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'post_api_workspaces_by_workspace_id_runs_request_source_one_of_request_auth.g.dart';

/// PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth
///
/// Properties:
/// * [type] 
/// * [token] 
/// * [password] 
/// * [username] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth implements Built<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth, PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthBuilder> {
  /// One Of [GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOfOneOf], [PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf], [PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1]
  OneOf get oneOf;

  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth._();

  factory PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth([void updates(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth> get serializer => _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth, _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOfOneOf), FullType(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf), FullType(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}

