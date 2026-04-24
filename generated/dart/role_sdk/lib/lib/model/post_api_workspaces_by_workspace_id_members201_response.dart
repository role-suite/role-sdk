//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_members200_response_data_items_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_workspaces_by_workspace_id_members201_response.g.dart';

/// PostApiWorkspacesByWorkspaceIdMembers201Response
///
/// Properties:
/// * [data] 
/// * [success] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdMembers201Response implements Built<PostApiWorkspacesByWorkspaceIdMembers201Response, PostApiWorkspacesByWorkspaceIdMembers201ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner get data;

  @BuiltValueField(wireName: r'success')
  bool get success;

  PostApiWorkspacesByWorkspaceIdMembers201Response._();

  factory PostApiWorkspacesByWorkspaceIdMembers201Response([void updates(PostApiWorkspacesByWorkspaceIdMembers201ResponseBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdMembers201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdMembers201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdMembers201Response> get serializer => _$PostApiWorkspacesByWorkspaceIdMembers201ResponseSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdMembers201ResponseSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdMembers201Response> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdMembers201Response, _$PostApiWorkspacesByWorkspaceIdMembers201Response];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdMembers201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdMembers201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner),
    );
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdMembers201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiWorkspacesByWorkspaceIdMembers201ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner),
          ) as GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner;
          result.data = valueDes;
          break;
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostApiWorkspacesByWorkspaceIdMembers201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdMembers201ResponseBuilder();
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

