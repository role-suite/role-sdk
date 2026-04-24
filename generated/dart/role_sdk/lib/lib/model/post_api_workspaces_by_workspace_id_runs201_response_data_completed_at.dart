//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/model_null.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'post_api_workspaces_by_workspace_id_runs201_response_data_completed_at.g.dart';

/// PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt implements Built<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt, PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAtBuilder> {
  /// Any Of [ModelNull], [String]
  AnyOf get anyOf;

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt._();

  factory PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt([void updates(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAtBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAtBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt> get serializer => _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAtSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAtSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt, _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAtBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(String), FullType(ModelNull), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

