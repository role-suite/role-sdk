// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints201_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response
    _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['data', 'success'],
            );
            final val =
                PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response(
              data: $checkedConvert(
                  'data',
                  (v) =>
                      PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseData
                          .fromJson(v as Map<String, dynamic>)),
              success: $checkedConvert('success', (v) => v as bool),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseToJson(
            PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response
                instance) =>
        <String, dynamic>{
          'data': instance.data.toJson(),
          'success': instance.success,
        };
