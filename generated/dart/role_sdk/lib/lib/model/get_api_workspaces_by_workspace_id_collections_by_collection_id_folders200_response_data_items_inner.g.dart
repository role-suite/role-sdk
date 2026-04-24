// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_collections_by_collection_id_folders200_response_data_items_inner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner
    _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInnerFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const [
                'collectionId',
                'createdAt',
                'createdByUserId',
                'id',
                'name',
                'parentFolderId',
                'position',
                'updatedAt'
              ],
            );
            final val =
                GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner(
              collectionId:
                  $checkedConvert('collectionId', (v) => (v as num).toInt()),
              createdAt: $checkedConvert('createdAt', (v) => v as String),
              createdByUserId:
                  $checkedConvert('createdByUserId', (v) => (v as num).toInt()),
              id: $checkedConvert('id', (v) => (v as num).toInt()),
              name: $checkedConvert('name', (v) => v as String),
              parentFolderId: $checkedConvert(
                  'parentFolderId',
                  (v) =>
                      PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId
                          .fromJson(v as Map<String, dynamic>)),
              position: $checkedConvert('position', (v) => (v as num).toInt()),
              updatedAt: $checkedConvert('updatedAt', (v) => v as String),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInnerToJson(
            GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner
                instance) =>
        <String, dynamic>{
          'collectionId': instance.collectionId,
          'createdAt': instance.createdAt,
          'createdByUserId': instance.createdByUserId,
          'id': instance.id,
          'name': instance.name,
          'parentFolderId': instance.parentFolderId.toJson(),
          'position': instance.position,
          'updatedAt': instance.updatedAt,
        };
