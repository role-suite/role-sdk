// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints201_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseData
    _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseData',
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
                PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseData(
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
                      PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId
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
                      _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnumEnumMap,
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
    _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataToJson(
            PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseData
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
              _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnumEnumMap[
                  instance.method]!,
          'name': instance.name,
          'position': instance.position,
          'queryParams': instance.queryParams.map((e) => e.toJson()).toList(),
          'updatedAt': instance.updatedAt,
          'url': instance.url,
        };

const _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnumEnumMap =
    {
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum
      .GET: 'GET',
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum
      .POST: 'POST',
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum
      .PUT: 'PUT',
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum
      .PATCH: 'PATCH',
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum
      .DELETE: 'DELETE',
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum
      .HEAD: 'HEAD',
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum
      .OPTIONS: 'OPTIONS',
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum
      .unknownDefaultOpenApi: 'unknown_default_open_api',
};
