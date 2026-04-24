//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_workspaces_by_workspace_id_import_export_exports201_response_data.g.dart';

/// PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData
///
/// Properties:
/// * [completedAt] 
/// * [createdAt] 
/// * [createdByUserId] 
/// * [format] 
/// * [id] 
/// * [status] 
/// * [summary] 
/// * [type] 
/// * [workspaceId] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData implements Built<PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData, PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataBuilder> {
  @BuiltValueField(wireName: r'completedAt')
  String get completedAt;

  @BuiltValueField(wireName: r'createdAt')
  String get createdAt;

  @BuiltValueField(wireName: r'createdByUserId')
  int get createdByUserId;

  @BuiltValueField(wireName: r'format')
  String get format;

  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'summary')
  BuiltMap<String, JsonObject?> get summary;

  @BuiltValueField(wireName: r'type')
  PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum get type;
  // enum typeEnum {  export,  import,  };

  @BuiltValueField(wireName: r'workspaceId')
  int get workspaceId;

  PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData._();

  factory PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData([void updates(PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData> get serializer => _$PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData, _$PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'completedAt';
    yield serializers.serialize(
      object.completedAt,
      specifiedType: const FullType(String),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(String),
    );
    yield r'createdByUserId';
    yield serializers.serialize(
      object.createdByUserId,
      specifiedType: const FullType(int),
    );
    yield r'format';
    yield serializers.serialize(
      object.format,
      specifiedType: const FullType(String),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    yield r'summary';
    yield serializers.serialize(
      object.summary,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum),
    );
    yield r'workspaceId';
    yield serializers.serialize(
      object.workspaceId,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'completedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.completedAt = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        case r'createdByUserId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.createdByUserId = valueDes;
          break;
        case r'format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.format = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'summary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.summary.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum),
          ) as PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum;
          result.type = valueDes;
          break;
        case r'workspaceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.workspaceId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataBuilder();
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

class PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'export')
  static const PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum export_ = _$postApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum_export_;
  @BuiltValueEnumConst(wireName: r'import')
  static const PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum import_ = _$postApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum_import_;

  static Serializer<PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum> get serializer => _$postApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnumSerializer;

  const PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum._(String name): super(name);

  static BuiltSet<PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum> get values => _$postApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnumValues;
  static PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum valueOf(String name) => _$postApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnumValueOf(name);
}

