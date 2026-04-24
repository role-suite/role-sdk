//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/model_null.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'post_api_workspaces_by_workspace_id_runs201_response_data_duration_ms.g.dart';

/// PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs implements Built<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs, PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMsBuilder> {
  /// Any Of [ModelNull], [int]
  AnyOf get anyOf;

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs._();

  factory PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs([void updates(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMsBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs> get serializer => _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMsSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMsSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs, _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMsBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(int), FullType(ModelNull), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

