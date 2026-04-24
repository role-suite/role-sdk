//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_collections200_response_data_items_inner_description.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_api_workspaces_by_workspace_id_collections200_response_data_items_inner.g.dart';

/// GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner
///
/// Properties:
/// * [legacyId] 
/// * [createdAt] 
/// * [createdByUserId] 
/// * [description] 
/// * [id] 
/// * [name] 
/// * [updatedAt] 
/// * [workspaceId] 
@BuiltValue()
abstract class GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner implements Built<GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner, GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerBuilder> {
  @BuiltValueField(wireName: r'_id')
  int? get legacyId;

  @BuiltValueField(wireName: r'createdAt')
  String get createdAt;

  @BuiltValueField(wireName: r'createdByUserId')
  int get createdByUserId;

  @BuiltValueField(wireName: r'description')
  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription get description;

  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'updatedAt')
  String get updatedAt;

  @BuiltValueField(wireName: r'workspaceId')
  int get workspaceId;

  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner._();

  factory GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner([void updates(GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerBuilder b)]) = _$GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner> get serializer => _$GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerSerializer();
}

class _$GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerSerializer implements PrimitiveSerializer<GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner> {
  @override
  final Iterable<Type> types = const [GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner, _$GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner];

  @override
  final String wireName = r'GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.legacyId != null) {
      yield r'_id';
      yield serializers.serialize(
        object.legacyId,
        specifiedType: const FullType(int),
      );
    }
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
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(String),
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
    GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.legacyId = valueDes;
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
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription),
          ) as GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription;
          result.description.replace(valueDes);
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.updatedAt = valueDes;
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
  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerBuilder();
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

