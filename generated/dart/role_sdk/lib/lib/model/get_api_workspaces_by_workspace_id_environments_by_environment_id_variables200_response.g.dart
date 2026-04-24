// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_environments_by_environment_id_variables200_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response
    _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['data', 'success'],
            );
            final val =
                GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response(
              data: $checkedConvert(
                  'data',
                  (v) =>
                      GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData
                          .fromJson(v as Map<String, dynamic>)),
              success: $checkedConvert('success', (v) => v as bool),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseToJson(
            GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response
                instance) =>
        <String, dynamic>{
          'data': instance.data.toJson(),
          'success': instance.success,
        };
