// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_environments_by_environment_id_variables200_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData
    _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['items'],
            );
            final val =
                GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData(
              items: $checkedConvert(
                  'items',
                  (v) => (v as List<dynamic>)
                      .map((e) =>
                          GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner
                              .fromJson(e as Map<String, dynamic>))
                      .toList()),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataToJson(
            GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData
                instance) =>
        <String, dynamic>{
          'items': instance.items.map((e) => e.toJson()).toList(),
        };
