//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs_request_source_one_of1.dart';
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs_request_source_one_of_request.dart';
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs_request_source_one_of.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'post_api_workspaces_by_workspace_id_runs_request_source.g.dart';

/// PostApiWorkspacesByWorkspaceIdRunsRequestSource
///
/// Properties:
/// * [request] 
/// * [type] 
/// * [collectionId] 
/// * [endpointId] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdRunsRequestSource implements Built<PostApiWorkspacesByWorkspaceIdRunsRequestSource, PostApiWorkspacesByWorkspaceIdRunsRequestSourceBuilder> {
  /// One Of [PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf], [PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1]
  OneOf get oneOf;

  PostApiWorkspacesByWorkspaceIdRunsRequestSource._();

  factory PostApiWorkspacesByWorkspaceIdRunsRequestSource([void updates(PostApiWorkspacesByWorkspaceIdRunsRequestSourceBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdRunsRequestSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdRunsRequestSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdRunsRequestSource> get serializer => _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdRunsRequestSource> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdRunsRequestSource, _$PostApiWorkspacesByWorkspaceIdRunsRequestSource];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdRunsRequestSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRunsRequestSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRunsRequestSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdRunsRequestSourceBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf), FullType(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}

