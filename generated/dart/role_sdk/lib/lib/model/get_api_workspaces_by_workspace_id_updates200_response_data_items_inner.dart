//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_folder_id.dart';
import 'package:built_collection/built_collection.dart';
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_updates200_response_data_items_inner_payload.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_api_workspaces_by_workspace_id_updates200_response_data_items_inner.g.dart';

/// GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner
///
/// Properties:
/// * [action] 
/// * [actorUserId] 
/// * [createdAt] 
/// * [entity] 
/// * [entityId] 
/// * [id] 
/// * [payload] 
/// * [workspaceId] 
@BuiltValue()
abstract class GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner implements Built<GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner, GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerBuilder> {
  @BuiltValueField(wireName: r'action')
  String get action;

  @BuiltValueField(wireName: r'actorUserId')
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId get actorUserId;

  @BuiltValueField(wireName: r'createdAt')
  String get createdAt;

  @BuiltValueField(wireName: r'entity')
  String get entity;

  @BuiltValueField(wireName: r'entityId')
  int get entityId;

  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'payload')
  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload get payload;

  @BuiltValueField(wireName: r'workspaceId')
  int get workspaceId;

  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner._();

  factory GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner([void updates(GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerBuilder b)]) = _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner> get serializer => _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerSerializer();
}

class _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerSerializer implements PrimitiveSerializer<GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner> {
  @override
  final Iterable<Type> types = const [GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner, _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner];

  @override
  final String wireName = r'GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'action';
    yield serializers.serialize(
      object.action,
      specifiedType: const FullType(String),
    );
    yield r'actorUserId';
    yield serializers.serialize(
      object.actorUserId,
      specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(String),
    );
    yield r'entity';
    yield serializers.serialize(
      object.entity,
      specifiedType: const FullType(String),
    );
    yield r'entityId';
    yield serializers.serialize(
      object.entityId,
      specifiedType: const FullType(int),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'payload';
    yield serializers.serialize(
      object.payload,
      specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload),
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
    GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.action = valueDes;
          break;
        case r'actorUserId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId),
          ) as PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId;
          result.actorUserId.replace(valueDes);
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        case r'entity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.entity = valueDes;
          break;
        case r'entityId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.entityId = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'payload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload),
          ) as GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload;
          result.payload.replace(valueDes);
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
  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerBuilder();
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

