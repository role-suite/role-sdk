// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_import_export_jobs200_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetApiWorkspacesByWorkspaceIdImportExportJobs200Response
    _$GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'GetApiWorkspacesByWorkspaceIdImportExportJobs200Response',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['data', 'success'],
            );
            final val =
                GetApiWorkspacesByWorkspaceIdImportExportJobs200Response(
              data: $checkedConvert(
                  'data',
                  (v) =>
                      GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData
                          .fromJson(v as Map<String, dynamic>)),
              success: $checkedConvert('success', (v) => v as bool),
            );
            return val;
          },
        );

Map<String,
    dynamic> _$GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseToJson(
        GetApiWorkspacesByWorkspaceIdImportExportJobs200Response instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'success': instance.success,
    };
