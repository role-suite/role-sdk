// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_body_any_of2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf2
    _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf2FromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf2',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['entries', 'mode'],
            );
            final val =
                PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf2(
              entries: $checkedConvert(
                  'entries',
                  (v) => (v as List<dynamic>)
                      .map((e) =>
                          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf2EntriesInner
                              .fromJson(e as Map<String, dynamic>))
                      .toList()),
              mode: $checkedConvert('mode', (v) => v as String),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf2ToJson(
            PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf2
                instance) =>
        <String, dynamic>{
          'entries': instance.entries.map((e) => e.toJson()).toList(),
          'mode': instance.mode,
        };
