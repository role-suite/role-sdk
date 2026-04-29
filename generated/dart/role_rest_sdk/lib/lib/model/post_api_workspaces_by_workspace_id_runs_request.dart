//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:role_rest_sdk/lib/model/post_api_workspaces_by_workspace_id_runs_request_options.dart';
import 'package:role_rest_sdk/lib/model/post_api_workspaces_by_workspace_id_runs_request_variable_overrides_inner.dart';
import 'package:role_rest_sdk/lib/model/post_api_workspaces_by_workspace_id_runs_request_source.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_workspaces_by_workspace_id_runs_request.g.dart';

/// PostApiWorkspacesByWorkspaceIdRunsRequest
///
/// Properties:
/// * [environmentId] 
/// * [options] 
/// * [source_] 
/// * [variableOverrides] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdRunsRequest implements Built<PostApiWorkspacesByWorkspaceIdRunsRequest, PostApiWorkspacesByWorkspaceIdRunsRequestBuilder> {
  @BuiltValueField(wireName: r'environmentId')
  int? get environmentId;

  @BuiltValueField(wireName: r'options')
  PostApiWorkspacesByWorkspaceIdRunsRequestOptions? get options;

  @BuiltValueField(wireName: r'source')
  PostApiWorkspacesByWorkspaceIdRunsRequestSource get source_;

  @BuiltValueField(wireName: r'variableOverrides')
  BuiltList<PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner>? get variableOverrides;

  PostApiWorkspacesByWorkspaceIdRunsRequest._();

  factory PostApiWorkspacesByWorkspaceIdRunsRequest([void updates(PostApiWorkspacesByWorkspaceIdRunsRequestBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdRunsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdRunsRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdRunsRequest> get serializer => _$PostApiWorkspacesByWorkspaceIdRunsRequestSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdRunsRequestSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdRunsRequest> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdRunsRequest, _$PostApiWorkspacesByWorkspaceIdRunsRequest];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdRunsRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRunsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.environmentId != null) {
      yield r'environmentId';
      yield serializers.serialize(
        object.environmentId,
        specifiedType: const FullType(int),
      );
    }
    if (object.options != null) {
      yield r'options';
      yield serializers.serialize(
        object.options,
        specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdRunsRequestOptions),
      );
    }
    yield r'source';
    yield serializers.serialize(
      object.source_,
      specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdRunsRequestSource),
    );
    if (object.variableOverrides != null) {
      yield r'variableOverrides';
      yield serializers.serialize(
        object.variableOverrides,
        specifiedType: const FullType(BuiltList, [FullType(PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRunsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiWorkspacesByWorkspaceIdRunsRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'environmentId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.environmentId = valueDes;
          break;
        case r'options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdRunsRequestOptions),
          ) as PostApiWorkspacesByWorkspaceIdRunsRequestOptions;
          result.options = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdRunsRequestSource),
          ) as PostApiWorkspacesByWorkspaceIdRunsRequestSource;
          result.source_.replace(valueDes);
          break;
        case r'variableOverrides':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner)]),
          ) as BuiltList<PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner>;
          result.variableOverrides.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdRunsRequestBuilder();
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

