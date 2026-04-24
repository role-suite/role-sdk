//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'get_api_workspaces_by_workspace_id_updates200_response_data_items_inner_payload.g.dart';

/// GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload
@BuiltValue()
abstract class GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload implements Built<GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload, GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayloadBuilder> {
  /// Any Of [BuiltMap<String, JsonObject>]
  AnyOf get anyOf;

  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload._();

  factory GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload([void updates(GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayloadBuilder b)]) = _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload> get serializer => _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayloadSerializer();
}

class _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayloadSerializer implements PrimitiveSerializer<GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload> {
  @override
  final Iterable<Type> types = const [GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload, _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload];

  @override
  final String wireName = r'GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayloadBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

