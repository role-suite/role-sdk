//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_rest_sdk/lib/model/get_api_workspaces_by_workspace_id_updates200_response_data_cursor.dart';
import 'package:role_rest_sdk/lib/model/get_api_workspaces_by_workspace_id_updates200_response_data_items_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_api_workspaces_by_workspace_id_updates200_response_data.g.dart';

/// GetApiWorkspacesByWorkspaceIdUpdates200ResponseData
///
/// Properties:
/// * [cursor] 
/// * [items] 
@BuiltValue()
abstract class GetApiWorkspacesByWorkspaceIdUpdates200ResponseData implements Built<GetApiWorkspacesByWorkspaceIdUpdates200ResponseData, GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'cursor')
  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor get cursor;

  @BuiltValueField(wireName: r'items')
  BuiltList<GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner> get items;

  GetApiWorkspacesByWorkspaceIdUpdates200ResponseData._();

  factory GetApiWorkspacesByWorkspaceIdUpdates200ResponseData([void updates(GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataBuilder b)]) = _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetApiWorkspacesByWorkspaceIdUpdates200ResponseData> get serializer => _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataSerializer();
}

class _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataSerializer implements PrimitiveSerializer<GetApiWorkspacesByWorkspaceIdUpdates200ResponseData> {
  @override
  final Iterable<Type> types = const [GetApiWorkspacesByWorkspaceIdUpdates200ResponseData, _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseData];

  @override
  final String wireName = r'GetApiWorkspacesByWorkspaceIdUpdates200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetApiWorkspacesByWorkspaceIdUpdates200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'cursor';
    yield serializers.serialize(
      object.cursor,
      specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor),
    );
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetApiWorkspacesByWorkspaceIdUpdates200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cursor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor),
          ) as GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor;
          result.cursor = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner)]),
          ) as BuiltList<GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner>;
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
  GetApiWorkspacesByWorkspaceIdUpdates200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataBuilder();
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

