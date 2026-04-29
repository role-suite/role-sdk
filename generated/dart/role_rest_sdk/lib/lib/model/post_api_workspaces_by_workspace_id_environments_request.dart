//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_workspaces_by_workspace_id_environments_request.g.dart';

/// PostApiWorkspacesByWorkspaceIdEnvironmentsRequest
///
/// Properties:
/// * [name] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdEnvironmentsRequest implements Built<PostApiWorkspacesByWorkspaceIdEnvironmentsRequest, PostApiWorkspacesByWorkspaceIdEnvironmentsRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  PostApiWorkspacesByWorkspaceIdEnvironmentsRequest._();

  factory PostApiWorkspacesByWorkspaceIdEnvironmentsRequest([void updates(PostApiWorkspacesByWorkspaceIdEnvironmentsRequestBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdEnvironmentsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdEnvironmentsRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdEnvironmentsRequest> get serializer => _$PostApiWorkspacesByWorkspaceIdEnvironmentsRequestSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdEnvironmentsRequestSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdEnvironmentsRequest> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdEnvironmentsRequest, _$PostApiWorkspacesByWorkspaceIdEnvironmentsRequest];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdEnvironmentsRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdEnvironmentsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdEnvironmentsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiWorkspacesByWorkspaceIdEnvironmentsRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostApiWorkspacesByWorkspaceIdEnvironmentsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdEnvironmentsRequestBuilder();
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

