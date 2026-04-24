// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_environments200_response_data_items_inner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner
    _$GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInnerFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const [
                'createdAt',
                'createdByUserId',
                'id',
                'name',
                'updatedAt',
                'workspaceId'
              ],
            );
            final val =
                GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner(
              createdAt: $checkedConvert('createdAt', (v) => v as String),
              createdByUserId:
                  $checkedConvert('createdByUserId', (v) => (v as num).toInt()),
              id: $checkedConvert('id', (v) => (v as num).toInt()),
              name: $checkedConvert('name', (v) => v as String),
              updatedAt: $checkedConvert('updatedAt', (v) => v as String),
              workspaceId:
                  $checkedConvert('workspaceId', (v) => (v as num).toInt()),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInnerToJson(
            GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner
                instance) =>
        <String, dynamic>{
          'createdAt': instance.createdAt,
          'createdByUserId': instance.createdByUserId,
          'id': instance.id,
          'name': instance.name,
          'updatedAt': instance.updatedAt,
          'workspaceId': instance.workspaceId,
        };
