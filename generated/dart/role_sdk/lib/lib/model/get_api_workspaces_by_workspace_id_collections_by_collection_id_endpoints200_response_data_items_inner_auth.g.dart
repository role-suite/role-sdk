// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuth
    _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuth',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['type', 'token', 'password', 'username'],
            );
            final val =
                GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuth(
              type: $checkedConvert('type', (v) => v as String),
              token: $checkedConvert('token', (v) => v as String),
              password: $checkedConvert('password', (v) => v as String),
              username: $checkedConvert('username', (v) => v as String),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthToJson(
            GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuth
                instance) =>
        <String, dynamic>{
          'type': instance.type,
          'token': instance.token,
          'password': instance.password,
          'username': instance.username,
        };
