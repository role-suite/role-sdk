// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_by_endpoint_id_examples200_response_data_items_inner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples200ResponseDataItemsInner
    _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples200ResponseDataItemsInnerFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples200ResponseDataItemsInner',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const [
                'body',
                'createdAt',
                'createdByUserId',
                'endpointId',
                'headers',
                'id',
                'name',
                'position',
                'statusCode',
                'updatedAt'
              ],
            );
            final val =
                GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples200ResponseDataItemsInner(
              body: $checkedConvert(
                  'body',
                  (v) =>
                      GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription
                          .fromJson(v as Map<String, dynamic>)),
              createdAt: $checkedConvert('createdAt', (v) => v as String),
              createdByUserId:
                  $checkedConvert('createdByUserId', (v) => (v as num).toInt()),
              endpointId:
                  $checkedConvert('endpointId', (v) => (v as num).toInt()),
              headers: $checkedConvert(
                  'headers',
                  (v) => (v as List<dynamic>)
                      .map((e) =>
                          GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner
                              .fromJson(e as Map<String, dynamic>))
                      .toList()),
              id: $checkedConvert('id', (v) => (v as num).toInt()),
              name: $checkedConvert('name', (v) => v as String),
              position: $checkedConvert('position', (v) => (v as num).toInt()),
              statusCode:
                  $checkedConvert('statusCode', (v) => (v as num).toInt()),
              updatedAt: $checkedConvert('updatedAt', (v) => v as String),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples200ResponseDataItemsInnerToJson(
            GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples200ResponseDataItemsInner
                instance) =>
        <String, dynamic>{
          'body': instance.body.toJson(),
          'createdAt': instance.createdAt,
          'createdByUserId': instance.createdByUserId,
          'endpointId': instance.endpointId,
          'headers': instance.headers.map((e) => e.toJson()).toList(),
          'id': instance.id,
          'name': instance.name,
          'position': instance.position,
          'statusCode': instance.statusCode,
          'updatedAt': instance.updatedAt,
        };
