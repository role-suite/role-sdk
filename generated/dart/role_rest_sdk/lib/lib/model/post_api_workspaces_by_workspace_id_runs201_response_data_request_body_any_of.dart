//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_workspaces_by_workspace_id_runs201_response_data_request_body_any_of.g.dart';

/// PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf
///
/// Properties:
/// * [entries] 
/// * [mode] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf implements Built<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf, PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOfBuilder> {
  @BuiltValueField(wireName: r'entries')
  BuiltList<BuiltMap<String, JsonObject?>> get entries;

  @BuiltValueField(wireName: r'mode')
  String get mode;

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf._();

  factory PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf([void updates(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOfBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf> get serializer => _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOfSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOfSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf, _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'entries';
    yield serializers.serialize(
      object.entries,
      specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
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
    PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
          ) as BuiltList<BuiltMap<String, JsonObject?>>;
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
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOfBuilder();
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

