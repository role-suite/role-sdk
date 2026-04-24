//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_workspaces_by_workspace_id_runs_request_options.g.dart';

/// PostApiWorkspacesByWorkspaceIdRunsRequestOptions
///
/// Properties:
/// * [followRedirects] 
/// * [maxResponseBytes] 
/// * [timeoutMs] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdRunsRequestOptions implements Built<PostApiWorkspacesByWorkspaceIdRunsRequestOptions, PostApiWorkspacesByWorkspaceIdRunsRequestOptionsBuilder> {
  @BuiltValueField(wireName: r'followRedirects')
  bool? get followRedirects;

  @BuiltValueField(wireName: r'maxResponseBytes')
  int? get maxResponseBytes;

  @BuiltValueField(wireName: r'timeoutMs')
  int? get timeoutMs;

  PostApiWorkspacesByWorkspaceIdRunsRequestOptions._();

  factory PostApiWorkspacesByWorkspaceIdRunsRequestOptions([void updates(PostApiWorkspacesByWorkspaceIdRunsRequestOptionsBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdRunsRequestOptions;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdRunsRequestOptionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdRunsRequestOptions> get serializer => _$PostApiWorkspacesByWorkspaceIdRunsRequestOptionsSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdRunsRequestOptionsSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdRunsRequestOptions> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdRunsRequestOptions, _$PostApiWorkspacesByWorkspaceIdRunsRequestOptions];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdRunsRequestOptions';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRunsRequestOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.followRedirects != null) {
      yield r'followRedirects';
      yield serializers.serialize(
        object.followRedirects,
        specifiedType: const FullType(bool),
      );
    }
    if (object.maxResponseBytes != null) {
      yield r'maxResponseBytes';
      yield serializers.serialize(
        object.maxResponseBytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.timeoutMs != null) {
      yield r'timeoutMs';
      yield serializers.serialize(
        object.timeoutMs,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRunsRequestOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiWorkspacesByWorkspaceIdRunsRequestOptionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'followRedirects':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.followRedirects = valueDes;
          break;
        case r'maxResponseBytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxResponseBytes = valueDes;
          break;
        case r'timeoutMs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.timeoutMs = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestOptions deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdRunsRequestOptionsBuilder();
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

