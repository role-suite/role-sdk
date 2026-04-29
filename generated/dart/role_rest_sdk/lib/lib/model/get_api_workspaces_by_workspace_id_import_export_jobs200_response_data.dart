//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:role_rest_sdk/lib/model/post_api_workspaces_by_workspace_id_import_export_exports201_response_data.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_api_workspaces_by_workspace_id_import_export_jobs200_response_data.g.dart';

/// GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData
///
/// Properties:
/// * [items] 
@BuiltValue()
abstract class GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData implements Built<GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData, GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData> get items;

  GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData._();

  factory GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData([void updates(GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseDataBuilder b)]) = _$GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData> get serializer => _$GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseDataSerializer();
}

class _$GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseDataSerializer implements PrimitiveSerializer<GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData> {
  @override
  final Iterable<Type> types = const [GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData, _$GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData];

  @override
  final String wireName = r'GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData)]),
          ) as BuiltList<PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData>;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseDataBuilder();
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

