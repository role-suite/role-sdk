// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_import_export_exports201_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiWorkspacesByWorkspaceIdImportExportExports201Response
    _$PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PostApiWorkspacesByWorkspaceIdImportExportExports201Response',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['data', 'success'],
            );
            final val =
                PostApiWorkspacesByWorkspaceIdImportExportExports201Response(
              data: $checkedConvert(
                  'data',
                  (v) =>
                      PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData
                          .fromJson(v as Map<String, dynamic>)),
              success: $checkedConvert('success', (v) => v as bool),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseToJson(
            PostApiWorkspacesByWorkspaceIdImportExportExports201Response
                instance) =>
        <String, dynamic>{
          'data': instance.data.toJson(),
          'success': instance.success,
        };
