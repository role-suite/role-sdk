//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_workspaces_by_workspace_id_import_export_imports_request.g.dart';

/// PostApiWorkspacesByWorkspaceIdImportExportImportsRequest
///
/// Properties:
/// * [format] 
/// * [payload] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdImportExportImportsRequest implements Built<PostApiWorkspacesByWorkspaceIdImportExportImportsRequest, PostApiWorkspacesByWorkspaceIdImportExportImportsRequestBuilder> {
  @BuiltValueField(wireName: r'format')
  PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum? get format;
  // enum formatEnum {  json,  };

  @BuiltValueField(wireName: r'payload')
  BuiltMap<String, JsonObject?> get payload;

  PostApiWorkspacesByWorkspaceIdImportExportImportsRequest._();

  factory PostApiWorkspacesByWorkspaceIdImportExportImportsRequest([void updates(PostApiWorkspacesByWorkspaceIdImportExportImportsRequestBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdImportExportImportsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdImportExportImportsRequestBuilder b) => b
      ..format = const PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum._('json');

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdImportExportImportsRequest> get serializer => _$PostApiWorkspacesByWorkspaceIdImportExportImportsRequestSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdImportExportImportsRequestSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdImportExportImportsRequest> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdImportExportImportsRequest, _$PostApiWorkspacesByWorkspaceIdImportExportImportsRequest];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdImportExportImportsRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdImportExportImportsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.format != null) {
      yield r'format';
      yield serializers.serialize(
        object.format,
        specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum),
      );
    }
    yield r'payload';
    yield serializers.serialize(
      object.payload,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdImportExportImportsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiWorkspacesByWorkspaceIdImportExportImportsRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum),
          ) as PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum;
          result.format = valueDes;
          break;
        case r'payload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.payload.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostApiWorkspacesByWorkspaceIdImportExportImportsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdImportExportImportsRequestBuilder();
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

class PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'json')
  static const PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum json = _$postApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum_json;

  static Serializer<PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum> get serializer => _$postApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnumSerializer;

  const PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum._(String name): super(name);

  static BuiltSet<PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum> get values => _$postApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnumValues;
  static PostApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnum valueOf(String name) => _$postApiWorkspacesByWorkspaceIdImportExportImportsRequestFormatEnumValueOf(name);
}

