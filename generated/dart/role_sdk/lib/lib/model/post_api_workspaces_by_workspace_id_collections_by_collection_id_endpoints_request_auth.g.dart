// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuth
    _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuth',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['type', 'token', 'password', 'username'],
            );
            final val =
                PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuth(
              type: $checkedConvert('type', (v) => v as String),
              token: $checkedConvert('token', (v) => v as String),
              password: $checkedConvert('password', (v) => v as String),
              username: $checkedConvert('username', (v) => v as String),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthToJson(
            PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuth
                instance) =>
        <String, dynamic>{
          'type': instance.type,
          'token': instance.token,
          'password': instance.password,
          'username': instance.username,
        };
