//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_workspaces_by_workspace_id_runs_request_variable_overrides_inner.g.dart';

/// PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner
///
/// Properties:
/// * [key] 
/// * [value] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner implements Built<PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner, PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInnerBuilder> {
  @BuiltValueField(wireName: r'key')
  String get key;

  @BuiltValueField(wireName: r'value')
  String get value;

  PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner._();

  factory PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner([void updates(PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInnerBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner> get serializer => _$PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInnerSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInnerSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner, _$PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(String),
    );
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.key = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInnerBuilder();
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

