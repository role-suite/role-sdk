// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_by_endpoint_id_examples201_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples201Response
    _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples201ResponseFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples201Response',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['data', 'success'],
            );
            final val =
                PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples201Response(
              data: $checkedConvert(
                  'data',
                  (v) =>
                      GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples200ResponseDataItemsInner
                          .fromJson(v as Map<String, dynamic>)),
              success: $checkedConvert('success', (v) => v as bool),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples201ResponseToJson(
            PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples201Response
                instance) =>
        <String, dynamic>{
          'data': instance.data.toJson(),
          'success': instance.success,
        };
