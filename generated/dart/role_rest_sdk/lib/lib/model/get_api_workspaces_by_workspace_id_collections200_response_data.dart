//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_rest_sdk/lib/model/get_api_workspaces_by_workspace_id_collections200_response_data_items_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_api_workspaces_by_workspace_id_collections200_response_data.g.dart';

/// GetApiWorkspacesByWorkspaceIdCollections200ResponseData
///
/// Properties:
/// * [items] 
@BuiltValue()
abstract class GetApiWorkspacesByWorkspaceIdCollections200ResponseData implements Built<GetApiWorkspacesByWorkspaceIdCollections200ResponseData, GetApiWorkspacesByWorkspaceIdCollections200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner> get items;

  GetApiWorkspacesByWorkspaceIdCollections200ResponseData._();

  factory GetApiWorkspacesByWorkspaceIdCollections200ResponseData([void updates(GetApiWorkspacesByWorkspaceIdCollections200ResponseDataBuilder b)]) = _$GetApiWorkspacesByWorkspaceIdCollections200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetApiWorkspacesByWorkspaceIdCollections200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetApiWorkspacesByWorkspaceIdCollections200ResponseData> get serializer => _$GetApiWorkspacesByWorkspaceIdCollections200ResponseDataSerializer();
}

class _$GetApiWorkspacesByWorkspaceIdCollections200ResponseDataSerializer implements PrimitiveSerializer<GetApiWorkspacesByWorkspaceIdCollections200ResponseData> {
  @override
  final Iterable<Type> types = const [GetApiWorkspacesByWorkspaceIdCollections200ResponseData, _$GetApiWorkspacesByWorkspaceIdCollections200ResponseData];

  @override
  final String wireName = r'GetApiWorkspacesByWorkspaceIdCollections200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetApiWorkspacesByWorkspaceIdCollections200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetApiWorkspacesByWorkspaceIdCollections200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetApiWorkspacesByWorkspaceIdCollections200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner)]),
          ) as BuiltList<GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner>;
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
  GetApiWorkspacesByWorkspaceIdCollections200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetApiWorkspacesByWorkspaceIdCollections200ResponseDataBuilder();
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

