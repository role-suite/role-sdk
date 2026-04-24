//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_collections200_response_data_items_inner_description.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_workspaces_by_workspace_id_runs201_response_data_response_any_of.g.dart';

/// PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf
///
/// Properties:
/// * [body] 
/// * [bodyBase64] 
/// * [headers] 
/// * [sizeBytes] 
/// * [status] 
/// * [truncated] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf implements Built<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf, PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOfBuilder> {
  @BuiltValueField(wireName: r'body')
  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription get body;

  @BuiltValueField(wireName: r'bodyBase64')
  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription get bodyBase64;

  @BuiltValueField(wireName: r'headers')
  BuiltMap<String, String> get headers;

  @BuiltValueField(wireName: r'sizeBytes')
  int get sizeBytes;

  @BuiltValueField(wireName: r'status')
  int get status;

  @BuiltValueField(wireName: r'truncated')
  bool get truncated;

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf._();

  factory PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf([void updates(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOfBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf> get serializer => _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOfSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOfSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf, _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'body';
    yield serializers.serialize(
      object.body,
      specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription),
    );
    yield r'bodyBase64';
    yield serializers.serialize(
      object.bodyBase64,
      specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription),
    );
    yield r'headers';
    yield serializers.serialize(
      object.headers,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
    );
    yield r'sizeBytes';
    yield serializers.serialize(
      object.sizeBytes,
      specifiedType: const FullType(int),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(int),
    );
    yield r'truncated';
    yield serializers.serialize(
      object.truncated,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'body':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription),
          ) as GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription;
          result.body.replace(valueDes);
          break;
        case r'bodyBase64':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription),
          ) as GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription;
          result.bodyBase64.replace(valueDes);
          break;
        case r'headers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.headers.replace(valueDes);
          break;
        case r'sizeBytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sizeBytes = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.status = valueDes;
          break;
        case r'truncated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.truncated = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOfBuilder();
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

