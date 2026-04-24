// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_members200_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetApiWorkspacesByWorkspaceIdMembers200ResponseData
    _$GetApiWorkspacesByWorkspaceIdMembers200ResponseDataFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'GetApiWorkspacesByWorkspaceIdMembers200ResponseData',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['items'],
            );
            final val = GetApiWorkspacesByWorkspaceIdMembers200ResponseData(
              items: $checkedConvert(
                  'items',
                  (v) => (v as List<dynamic>)
                      .map((e) =>
                          GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner
                              .fromJson(e as Map<String, dynamic>))
                      .toList()),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$GetApiWorkspacesByWorkspaceIdMembers200ResponseDataToJson(
            GetApiWorkspacesByWorkspaceIdMembers200ResponseData instance) =>
        <String, dynamic>{
          'items': instance.items.map((e) => e.toJson()).toList(),
        };
