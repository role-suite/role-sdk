// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_import_export_exports201_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData
    _$PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const [
                'completedAt',
                'createdAt',
                'createdByUserId',
                'format',
                'id',
                'status',
                'summary',
                'type',
                'workspaceId'
              ],
            );
            final val =
                PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData(
              completedAt: $checkedConvert('completedAt', (v) => v as String),
              createdAt: $checkedConvert('createdAt', (v) => v as String),
              createdByUserId:
                  $checkedConvert('createdByUserId', (v) => (v as num).toInt()),
              format: $checkedConvert('format', (v) => v as String),
              id: $checkedConvert('id', (v) => (v as num).toInt()),
              status: $checkedConvert('status', (v) => v as String),
              summary: $checkedConvert(
                  'summary',
                  (v) => (v as Map<String, dynamic>).map(
                        (k, e) => MapEntry(k, e as Object),
                      )),
              type: $checkedConvert(
                  'type',
                  (v) => $enumDecode(
                      _$PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnumEnumMap,
                      v)),
              workspaceId:
                  $checkedConvert('workspaceId', (v) => (v as num).toInt()),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataToJson(
            PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseData
                instance) =>
        <String, dynamic>{
          'completedAt': instance.completedAt,
          'createdAt': instance.createdAt,
          'createdByUserId': instance.createdByUserId,
          'format': instance.format,
          'id': instance.id,
          'status': instance.status,
          'summary': instance.summary,
          'type':
              _$PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnumEnumMap[
                  instance.type]!,
          'workspaceId': instance.workspaceId,
        };

const _$PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnumEnumMap =
    {
  PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum
      .export_: 'export',
  PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum
      .import_: 'import',
  PostApiWorkspacesByWorkspaceIdImportExportExports201ResponseDataTypeEnum
      .unknownDefaultOpenApi: 'unknown_default_open_api',
};
