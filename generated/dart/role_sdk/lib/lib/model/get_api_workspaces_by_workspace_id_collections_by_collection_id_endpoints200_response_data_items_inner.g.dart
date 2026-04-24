// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInner
    _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInner',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const [
                'auth',
                'body',
                'collectionId',
                'createdAt',
                'createdByUserId',
                'folderId',
                'headers',
                'id',
                'method',
                'name',
                'position',
                'queryParams',
                'updatedAt',
                'url'
              ],
            );
            final val =
                GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInner(
              auth: $checkedConvert(
                  'auth',
                  (v) =>
                      GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuth
                          .fromJson(v as Map<String, dynamic>)),
              body: $checkedConvert(
                  'body',
                  (v) =>
                      GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBody
                          .fromJson(v as Map<String, dynamic>)),
              collectionId:
                  $checkedConvert('collectionId', (v) => (v as num).toInt()),
              createdAt: $checkedConvert('createdAt', (v) => v as String),
              createdByUserId:
                  $checkedConvert('createdByUserId', (v) => (v as num).toInt()),
              folderId: $checkedConvert(
                  'folderId',
                  (v) =>
                      GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerFolderId
                          .fromJson(v as Map<String, dynamic>)),
              headers: $checkedConvert(
                  'headers',
                  (v) => (v as List<dynamic>)
                      .map((e) =>
                          GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner
                              .fromJson(e as Map<String, dynamic>))
                      .toList()),
              id: $checkedConvert('id', (v) => (v as num).toInt()),
              method: $checkedConvert(
                  'method',
                  (v) => $enumDecode(
                      _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerMethodEnumEnumMap,
                      v)),
              name: $checkedConvert('name', (v) => v as String),
              position: $checkedConvert('position', (v) => (v as num).toInt()),
              queryParams: $checkedConvert(
                  'queryParams',
                  (v) => (v as List<dynamic>)
                      .map((e) =>
                          GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner
                              .fromJson(e as Map<String, dynamic>))
                      .toList()),
              updatedAt: $checkedConvert('updatedAt', (v) => v as String),
              url: $checkedConvert('url', (v) => v as String),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerToJson(
            GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInner
                instance) =>
        <String, dynamic>{
          'auth': instance.auth.toJson(),
          'body': instance.body.toJson(),
          'collectionId': instance.collectionId,
          'createdAt': instance.createdAt,
          'createdByUserId': instance.createdByUserId,
          'folderId': instance.folderId.toJson(),
          'headers': instance.headers.map((e) => e.toJson()).toList(),
          'id': instance.id,
          'method':
              _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerMethodEnumEnumMap[
                  instance.method]!,
          'name': instance.name,
          'position': instance.position,
          'queryParams': instance.queryParams.map((e) => e.toJson()).toList(),
          'updatedAt': instance.updatedAt,
          'url': instance.url,
        };

const _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerMethodEnumEnumMap =
    {
  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerMethodEnum
      .GET: 'GET',
  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerMethodEnum
      .POST: 'POST',
  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerMethodEnum
      .PUT: 'PUT',
  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerMethodEnum
      .PATCH: 'PATCH',
  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerMethodEnum
      .DELETE: 'DELETE',
  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerMethodEnum
      .HEAD: 'HEAD',
  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerMethodEnum
      .OPTIONS: 'OPTIONS',
  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerMethodEnum
      .unknownDefaultOpenApi: 'unknown_default_open_api',
};
