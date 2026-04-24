// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_updates200_response_data_items_inner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner
    _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const [
                'action',
                'actorUserId',
                'createdAt',
                'entity',
                'entityId',
                'id',
                'payload',
                'workspaceId'
              ],
            );
            final val =
                GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner(
              action: $checkedConvert('action', (v) => v as String),
              actorUserId: $checkedConvert(
                  'actorUserId',
                  (v) =>
                      PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId
                          .fromJson(v as Map<String, dynamic>)),
              createdAt: $checkedConvert('createdAt', (v) => v as String),
              entity: $checkedConvert('entity', (v) => v as String),
              entityId: $checkedConvert('entityId', (v) => (v as num).toInt()),
              id: $checkedConvert('id', (v) => (v as num).toInt()),
              payload: $checkedConvert(
                  'payload',
                  (v) =>
                      GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload
                          .fromJson(v as Map<String, dynamic>)),
              workspaceId:
                  $checkedConvert('workspaceId', (v) => (v as num).toInt()),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerToJson(
            GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner
                instance) =>
        <String, dynamic>{
          'action': instance.action,
          'actorUserId': instance.actorUserId.toJson(),
          'createdAt': instance.createdAt,
          'entity': instance.entity,
          'entityId': instance.entityId,
          'id': instance.id,
          'payload': instance.payload.toJson(),
          'workspaceId': instance.workspaceId,
        };
