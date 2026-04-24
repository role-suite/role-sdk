// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_environments200_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData
    _$GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['items'],
            );
            final val =
                GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData(
              items: $checkedConvert(
                  'items',
                  (v) => (v as List<dynamic>)
                      .map((e) =>
                          GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner
                              .fromJson(e as Map<String, dynamic>))
                      .toList()),
            );
            return val;
          },
        );

Map<String,
    dynamic> _$GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataToJson(
        GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
    };
