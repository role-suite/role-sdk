// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_environments200_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetApiWorkspacesByWorkspaceIdEnvironments200Response
    _$GetApiWorkspacesByWorkspaceIdEnvironments200ResponseFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'GetApiWorkspacesByWorkspaceIdEnvironments200Response',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['data', 'success'],
            );
            final val = GetApiWorkspacesByWorkspaceIdEnvironments200Response(
              data: $checkedConvert(
                  'data',
                  (v) =>
                      GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData
                          .fromJson(v as Map<String, dynamic>)),
              success: $checkedConvert('success', (v) => v as bool),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$GetApiWorkspacesByWorkspaceIdEnvironments200ResponseToJson(
            GetApiWorkspacesByWorkspaceIdEnvironments200Response instance) =>
        <String, dynamic>{
          'data': instance.data.toJson(),
          'success': instance.success,
        };
