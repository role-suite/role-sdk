//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:role_rest_sdk/lib/model/post_api_workspaces_by_workspace_id_runs201_response_data_response_any_of.dart';
import 'package:role_rest_sdk/lib/model/get_api_workspaces_by_workspace_id_collections200_response_data_items_inner_description.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'post_api_workspaces_by_workspace_id_runs201_response_data_response.g.dart';

/// PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse
///
/// Properties:
/// * [body] 
/// * [bodyBase64] 
/// * [headers] 
/// * [sizeBytes] 
/// * [status] 
/// * [truncated] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse implements Built<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse, PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseBuilder> {
  /// Any Of [PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf]
  AnyOf get anyOf;

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse._();

  factory PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse([void updates(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse> get serializer => _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse, _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

