//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:role_rest_sdk/lib/model/post_api_workspaces_by_workspace_id_import_export_exports201_response_data.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_workspaces_by_workspace_id_import_export_exports201_response.g.dart';

/// PostApiWorkspacesByWorkspaceIdImportExportExports201Response
///
/// Properties:
/// * [data] 
/// * [success] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdImportExportExports201Response implements Built<PostApiWorkspacesByWorkspaceIdImportExportExports201Response, PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData get data;

  @BuiltValueField(wireName: r'success')
  bool get success;

  PostApiWorkspacesByWorkspaceIdImportExportExports201Response._();

  factory PostApiWorkspacesByWorkspaceIdImportExportExports201Response([void updates(PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdImportExportExports201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdImportExportExports201Response> get serializer => _$PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdImportExportExports201Response> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdImportExportExports201Response, _$PostApiWorkspacesByWorkspaceIdImportExportExports201Response];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdImportExportExports201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdImportExportExports201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData),
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
    PostApiWorkspacesByWorkspaceIdImportExportExports201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData),
          ) as PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData;
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
  PostApiWorkspacesByWorkspaceIdImportExportExports201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseBuilder();
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

