//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:role_rest_sdk/lib/model/get_api_workspaces_by_workspace_id_collections_by_collection_id_folders200_response_data_items_inner.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_api_workspaces_by_workspace_id_collections_by_collection_id_folders200_response_data.g.dart';

/// GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData
///
/// Properties:
/// * [items] 
@BuiltValue()
abstract class GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData implements Built<GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData, GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner> get items;

  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData._();

  factory GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData([void updates(GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataBuilder b)]) = _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData> get serializer => _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataSerializer();
}

class _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataSerializer implements PrimitiveSerializer<GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData> {
  @override
  final Iterable<Type> types = const [GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData, _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData];

  @override
  final String wireName = r'GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner)]),
          ) as BuiltList<GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner>;
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
  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataBuilder();
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

