// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_members200_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetApiWorkspacesByWorkspaceIdMembers200Response
    _$GetApiWorkspacesByWorkspaceIdMembers200ResponseFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'GetApiWorkspacesByWorkspaceIdMembers200Response',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['data', 'success'],
            );
            final val = GetApiWorkspacesByWorkspaceIdMembers200Response(
              data: $checkedConvert(
                  'data',
                  (v) => GetApiWorkspacesByWorkspaceIdMembers200ResponseData
                      .fromJson(v as Map<String, dynamic>)),
              success: $checkedConvert('success', (v) => v as bool),
            );
            return val;
          },
        );

Map<String, dynamic> _$GetApiWorkspacesByWorkspaceIdMembers200ResponseToJson(
        GetApiWorkspacesByWorkspaceIdMembers200Response instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'success': instance.success,
    };
