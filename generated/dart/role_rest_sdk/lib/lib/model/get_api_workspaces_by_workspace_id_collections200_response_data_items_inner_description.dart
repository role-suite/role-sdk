//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'get_api_workspaces_by_workspace_id_collections200_response_data_items_inner_description.g.dart';

/// GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription
@BuiltValue()
abstract class GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription implements Built<GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription, GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescriptionBuilder> {
  /// Any Of [String]
  AnyOf get anyOf;

  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription._();

  factory GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription([void updates(GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescriptionBuilder b)]) = _$GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescriptionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription> get serializer => _$GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescriptionSerializer();
}

class _$GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescriptionSerializer implements PrimitiveSerializer<GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription> {
  @override
  final Iterable<Type> types = const [GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription, _$GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription];

  @override
  final String wireName = r'GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescriptionBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(String), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

