//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_workspaces_by_workspace_id_import_export_exports_request.g.dart';

/// PostApiWorkspacesByWorkspaceIdImportExportExportsRequest
///
/// Properties:
/// * [format] 
/// * [includeCollections] 
/// * [includeEnvironments] 
/// * [includeRuns] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdImportExportExportsRequest implements Built<PostApiWorkspacesByWorkspaceIdImportExportExportsRequest, PostApiWorkspacesByWorkspaceIdImportExportExportsRequestBuilder> {
  @BuiltValueField(wireName: r'format')
  PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum? get format;
  // enum formatEnum {  json,  };

  @BuiltValueField(wireName: r'includeCollections')
  bool? get includeCollections;

  @BuiltValueField(wireName: r'includeEnvironments')
  bool? get includeEnvironments;

  @BuiltValueField(wireName: r'includeRuns')
  bool? get includeRuns;

  PostApiWorkspacesByWorkspaceIdImportExportExportsRequest._();

  factory PostApiWorkspacesByWorkspaceIdImportExportExportsRequest([void updates(PostApiWorkspacesByWorkspaceIdImportExportExportsRequestBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdImportExportExportsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdImportExportExportsRequestBuilder b) => b
      ..format = const PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum._('json');

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdImportExportExportsRequest> get serializer => _$PostApiWorkspacesByWorkspaceIdImportExportExportsRequestSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdImportExportExportsRequestSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdImportExportExportsRequest> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdImportExportExportsRequest, _$PostApiWorkspacesByWorkspaceIdImportExportExportsRequest];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdImportExportExportsRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdImportExportExportsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.format != null) {
      yield r'format';
      yield serializers.serialize(
        object.format,
        specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum),
      );
    }
    if (object.includeCollections != null) {
      yield r'includeCollections';
      yield serializers.serialize(
        object.includeCollections,
        specifiedType: const FullType(bool),
      );
    }
    if (object.includeEnvironments != null) {
      yield r'includeEnvironments';
      yield serializers.serialize(
        object.includeEnvironments,
        specifiedType: const FullType(bool),
      );
    }
    if (object.includeRuns != null) {
      yield r'includeRuns';
      yield serializers.serialize(
        object.includeRuns,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdImportExportExportsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiWorkspacesByWorkspaceIdImportExportExportsRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum),
          ) as PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum;
          result.format = valueDes;
          break;
        case r'includeCollections':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.includeCollections = valueDes;
          break;
        case r'includeEnvironments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.includeEnvironments = valueDes;
          break;
        case r'includeRuns':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.includeRuns = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostApiWorkspacesByWorkspaceIdImportExportExportsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdImportExportExportsRequestBuilder();
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

class PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'json')
  static const PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum json = _$postApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum_json;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum unknownDefaultOpenApi = _$postApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum_unknownDefaultOpenApi;

  static Serializer<PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum> get serializer => _$postApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnumSerializer;

  const PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum._(String name): super(name);

  static BuiltSet<PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum> get values => _$postApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnumValues;
  static PostApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnum valueOf(String name) => _$postApiWorkspacesByWorkspaceIdImportExportExportsRequestFormatEnumValueOf(name);
}

