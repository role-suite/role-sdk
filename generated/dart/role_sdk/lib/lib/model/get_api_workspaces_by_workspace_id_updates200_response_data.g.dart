// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_updates200_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetApiWorkspacesByWorkspaceIdUpdates200ResponseData
    _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'GetApiWorkspacesByWorkspaceIdUpdates200ResponseData',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['cursor', 'items'],
            );
            final val = GetApiWorkspacesByWorkspaceIdUpdates200ResponseData(
              cursor: $checkedConvert(
                  'cursor',
                  (v) =>
                      GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataCursor
                          .fromJson(v as Map<String, dynamic>)),
              items: $checkedConvert(
                  'items',
                  (v) => (v as List<dynamic>)
                      .map((e) =>
                          GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner
                              .fromJson(e as Map<String, dynamic>))
                      .toList()),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataToJson(
            GetApiWorkspacesByWorkspaceIdUpdates200ResponseData instance) =>
        <String, dynamic>{
          'cursor': instance.cursor.toJson(),
          'items': instance.items.map((e) => e.toJson()).toList(),
        };
