// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_updates200_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetApiWorkspacesByWorkspaceIdUpdates200Response
    _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'GetApiWorkspacesByWorkspaceIdUpdates200Response',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['data', 'success'],
            );
            final val = GetApiWorkspacesByWorkspaceIdUpdates200Response(
              data: $checkedConvert(
                  'data',
                  (v) => GetApiWorkspacesByWorkspaceIdUpdates200ResponseData
                      .fromJson(v as Map<String, dynamic>)),
              success: $checkedConvert('success', (v) => v as bool),
            );
            return val;
          },
        );

Map<String, dynamic> _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseToJson(
        GetApiWorkspacesByWorkspaceIdUpdates200Response instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'success': instance.success,
    };
