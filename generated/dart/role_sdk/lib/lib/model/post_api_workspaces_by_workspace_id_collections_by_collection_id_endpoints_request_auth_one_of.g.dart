// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_auth_one_of.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOf
    _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOfFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOf',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['token', 'type'],
            );
            final val =
                PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOf(
              token: $checkedConvert('token', (v) => v as String),
              type: $checkedConvert('type', (v) => v as String),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOfToJson(
            PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOf
                instance) =>
        <String, dynamic>{
          'token': instance.token,
          'type': instance.type,
        };
