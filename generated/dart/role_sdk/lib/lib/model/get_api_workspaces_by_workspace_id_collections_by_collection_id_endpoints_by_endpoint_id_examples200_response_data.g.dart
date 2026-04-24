// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_by_endpoint_id_examples200_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples200ResponseData
    _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples200ResponseDataFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples200ResponseData',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['items'],
            );
            final val =
                GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples200ResponseData(
              items: $checkedConvert(
                  'items',
                  (v) => (v as List<dynamic>)
                      .map((e) =>
                          GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples200ResponseDataItemsInner
                              .fromJson(e as Map<String, dynamic>))
                      .toList()),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples200ResponseDataToJson(
            GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples200ResponseData
                instance) =>
        <String, dynamic>{
          'items': instance.items.map((e) => e.toJson()).toList(),
        };
