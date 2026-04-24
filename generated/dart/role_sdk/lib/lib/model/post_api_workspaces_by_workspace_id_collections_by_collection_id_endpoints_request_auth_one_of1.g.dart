// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_auth_one_of1.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOf1
    _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOf1FromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOf1',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['password', 'type', 'username'],
            );
            final val =
                PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOf1(
              password: $checkedConvert('password', (v) => v as String),
              type: $checkedConvert('type', (v) => v as String),
              username: $checkedConvert('username', (v) => v as String),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOf1ToJson(
            PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuthOneOf1
                instance) =>
        <String, dynamic>{
          'password': instance.password,
          'type': instance.type,
          'username': instance.username,
        };
