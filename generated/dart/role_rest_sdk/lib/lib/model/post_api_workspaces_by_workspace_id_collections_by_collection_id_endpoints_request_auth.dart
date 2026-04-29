//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_rest_sdk/lib/model/get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_auth_any_of_one_of.dart';
import 'package:role_rest_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_auth_one_of1.dart';
import 'package:role_rest_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_auth_one_of.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_auth.g.dart';

/// PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuth
///
/// Properties:
/// * [type] 
/// * [token] 
/// * [password] 
/// * [username] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuth implements Built<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuth, PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthBuilder> {
  /// One Of [GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOfOneOf], [PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOf], [PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOf1]
  OneOf get oneOf;

  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuth._();

  factory PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuth([void updates(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuth;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuth> get serializer => _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuth> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuth, _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuth];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuth';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuth object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuth object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuth deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOfOneOf), FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOf), FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOf1), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}

