// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_updates200_response_data_cursor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor
    _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursorFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['hasMore', 'next'],
            );
            final val =
                GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor(
              hasMore: $checkedConvert('hasMore', (v) => v as bool),
              next: $checkedConvert('next', (v) => (v as num).toInt()),
            );
            return val;
          },
        );

Map<String,
    dynamic> _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursorToJson(
        GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor instance) =>
    <String, dynamic>{
      'hasMore': instance.hasMore,
      'next': instance.next,
    };
