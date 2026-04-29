//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:role_rest_sdk/lib/model/get_api_workspaces_by_workspace_id_environments200_response_data_items_inner.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_api_workspaces_by_workspace_id_environments200_response_data.g.dart';

/// GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData
///
/// Properties:
/// * [items] 
@BuiltValue()
abstract class GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData implements Built<GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData, GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner> get items;

  GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData._();

  factory GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData([void updates(GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataBuilder b)]) = _$GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData> get serializer => _$GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataSerializer();
}

class _$GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataSerializer implements PrimitiveSerializer<GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData> {
  @override
  final Iterable<Type> types = const [GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData, _$GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData];

  @override
  final String wireName = r'GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner)]),
          ) as BuiltList<GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner>;
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
  GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataBuilder();
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

