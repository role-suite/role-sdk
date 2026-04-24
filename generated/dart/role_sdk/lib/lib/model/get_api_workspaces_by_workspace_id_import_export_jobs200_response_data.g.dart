// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_import_export_jobs200_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData
    _$GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseDataFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['items'],
            );
            final val =
                GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData(
              items: $checkedConvert(
                  'items',
                  (v) => (v as List<dynamic>)
                      .map((e) =>
                          PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData
                              .fromJson(e as Map<String, dynamic>))
                      .toList()),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseDataToJson(
            GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData
                instance) =>
        <String, dynamic>{
          'items': instance.items.map((e) => e.toJson()).toList(),
        };
