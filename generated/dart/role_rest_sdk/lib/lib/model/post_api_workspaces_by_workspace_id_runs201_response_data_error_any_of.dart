//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_workspaces_by_workspace_id_runs201_response_data_error_any_of.g.dart';

/// PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf
///
/// Properties:
/// * [code] 
/// * [details] 
/// * [message] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf implements Built<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf, PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOfBuilder> {
  @BuiltValueField(wireName: r'code')
  String get code;

  @BuiltValueField(wireName: r'details')
  BuiltMap<String, JsonObject?>? get details;

  @BuiltValueField(wireName: r'message')
  String get message;

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf._();

  factory PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf([void updates(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOfBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf> get serializer => _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOfSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOfSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf, _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(String),
    );
    if (object.details != null) {
      yield r'details';
      yield serializers.serialize(
        object.details,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.code = valueDes;
          break;
        case r'details':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.details.replace(valueDes);
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOfBuilder();
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

