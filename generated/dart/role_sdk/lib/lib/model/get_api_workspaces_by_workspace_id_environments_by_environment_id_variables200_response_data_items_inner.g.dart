// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_environments_by_environment_id_variables200_response_data_items_inner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner
    _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInnerFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const [
                'createdAt',
                'createdByUserId',
                'enabled',
                'environmentId',
                'id',
                'isSecret',
                'key',
                'position',
                'updatedAt',
                'value'
              ],
            );
            final val =
                GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner(
              createdAt: $checkedConvert('createdAt', (v) => v as String),
              createdByUserId:
                  $checkedConvert('createdByUserId', (v) => (v as num).toInt()),
              enabled: $checkedConvert('enabled', (v) => v as bool),
              environmentId:
                  $checkedConvert('environmentId', (v) => (v as num).toInt()),
              id: $checkedConvert('id', (v) => (v as num).toInt()),
              isSecret: $checkedConvert('isSecret', (v) => v as bool),
              key: $checkedConvert('key', (v) => v as String),
              position: $checkedConvert('position', (v) => (v as num).toInt()),
              updatedAt: $checkedConvert('updatedAt', (v) => v as String),
              value: $checkedConvert('value', (v) => v as String),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInnerToJson(
            GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner
                instance) =>
        <String, dynamic>{
          'createdAt': instance.createdAt,
          'createdByUserId': instance.createdByUserId,
          'enabled': instance.enabled,
          'environmentId': instance.environmentId,
          'id': instance.id,
          'isSecret': instance.isSecret,
          'key': instance.key,
          'position': instance.position,
          'updatedAt': instance.updatedAt,
          'value': instance.value,
        };
