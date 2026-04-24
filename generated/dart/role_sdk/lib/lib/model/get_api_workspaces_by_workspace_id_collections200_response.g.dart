// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_collections200_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetApiWorkspacesByWorkspaceIdCollections200Response
    _$GetApiWorkspacesByWorkspaceIdCollections200ResponseFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'GetApiWorkspacesByWorkspaceIdCollections200Response',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['data', 'success'],
            );
            final val = GetApiWorkspacesByWorkspaceIdCollections200Response(
              data: $checkedConvert(
                  'data',
                  (v) => GetApiWorkspacesByWorkspaceIdCollections200ResponseData
                      .fromJson(v as Map<String, dynamic>)),
              success: $checkedConvert('success', (v) => v as bool),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$GetApiWorkspacesByWorkspaceIdCollections200ResponseToJson(
            GetApiWorkspacesByWorkspaceIdCollections200Response instance) =>
        <String, dynamic>{
          'data': instance.data.toJson(),
          'success': instance.success,
        };
