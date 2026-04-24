// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_body_any_of1.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1
    _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1FromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['entries', 'mode'],
            );
            final val =
                PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1(
              entries: $checkedConvert(
                  'entries',
                  (v) => (v as List<dynamic>)
                      .map((e) =>
                          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1EntriesInner
                              .fromJson(e as Map<String, dynamic>))
                      .toList()),
              mode: $checkedConvert('mode', (v) => v as String),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1ToJson(
            PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1
                instance) =>
        <String, dynamic>{
          'entries': instance.entries.map((e) => e.toJson()).toList(),
          'mode': instance.mode,
        };
