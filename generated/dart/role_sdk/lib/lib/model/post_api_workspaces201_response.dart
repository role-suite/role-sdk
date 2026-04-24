//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:role_sdk/lib/model/post_api_auth_login200_response_data_workspace.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_workspaces201_response.g.dart';

/// PostApiWorkspaces201Response
///
/// Properties:
/// * [data] 
/// * [success] 
@BuiltValue()
abstract class PostApiWorkspaces201Response implements Built<PostApiWorkspaces201Response, PostApiWorkspaces201ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  PostApiAuthLogin200ResponseDataWorkspace get data;

  @BuiltValueField(wireName: r'success')
  bool get success;

  PostApiWorkspaces201Response._();

  factory PostApiWorkspaces201Response([void updates(PostApiWorkspaces201ResponseBuilder b)]) = _$PostApiWorkspaces201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspaces201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspaces201Response> get serializer => _$PostApiWorkspaces201ResponseSerializer();
}

class _$PostApiWorkspaces201ResponseSerializer implements PrimitiveSerializer<PostApiWorkspaces201Response> {
  @override
  final Iterable<Type> types = const [PostApiWorkspaces201Response, _$PostApiWorkspaces201Response];

  @override
  final String wireName = r'PostApiWorkspaces201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspaces201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(PostApiAuthLogin200ResponseDataWorkspace),
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
    PostApiWorkspaces201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiWorkspaces201ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiAuthLogin200ResponseDataWorkspace),
          ) as PostApiAuthLogin200ResponseDataWorkspace;
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
  PostApiWorkspaces201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspaces201ResponseBuilder();
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

