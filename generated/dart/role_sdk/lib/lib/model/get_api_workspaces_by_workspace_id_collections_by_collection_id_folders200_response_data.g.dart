// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_collections_by_collection_id_folders200_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData
    _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['items'],
            );
            final val =
                GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData(
              items: $checkedConvert(
                  'items',
                  (v) => (v as List<dynamic>)
                      .map((e) =>
                          GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner
                              .fromJson(e as Map<String, dynamic>))
                      .toList()),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataToJson(
            GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseData
                instance) =>
        <String, dynamic>{
          'items': instance.items.map((e) => e.toJson()).toList(),
        };
