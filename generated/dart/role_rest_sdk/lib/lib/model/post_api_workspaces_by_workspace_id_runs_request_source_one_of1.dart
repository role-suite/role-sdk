//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_workspaces_by_workspace_id_runs_request_source_one_of1.g.dart';

/// PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1
///
/// Properties:
/// * [collectionId] 
/// * [endpointId] 
/// * [type] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1 implements Built<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1, PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1Builder> {
  @BuiltValueField(wireName: r'collectionId')
  int get collectionId;

  @BuiltValueField(wireName: r'endpointId')
  int get endpointId;

  @BuiltValueField(wireName: r'type')
  String get type;

  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1._();

  factory PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1([void updates(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1Builder b)]) = _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1Builder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1> get serializer => _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1Serializer();
}

class _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1Serializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1, _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1 object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'collectionId';
    yield serializers.serialize(
      object.collectionId,
      specifiedType: const FullType(int),
    );
    yield r'endpointId';
    yield serializers.serialize(
      object.endpointId,
      specifiedType: const FullType(int),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1 object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1Builder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'collectionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.collectionId = valueDes;
          break;
        case r'endpointId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.endpointId = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1 deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1Builder();
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

