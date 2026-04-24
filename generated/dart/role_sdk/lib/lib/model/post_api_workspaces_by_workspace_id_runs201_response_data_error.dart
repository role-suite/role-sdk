//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs201_response_data_error_any_of.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'post_api_workspaces_by_workspace_id_runs201_response_data_error.g.dart';

/// PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError
///
/// Properties:
/// * [code] 
/// * [details] 
/// * [message] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError implements Built<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError, PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorBuilder> {
  /// Any Of [PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf]
  AnyOf get anyOf;

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError._();

  factory PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError([void updates(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError> get serializer => _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError, _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

