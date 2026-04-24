// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_auth_any_of.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOf
    _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOfFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOf',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['type', 'token', 'password', 'username'],
            );
            final val =
                GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOf(
              type: $checkedConvert('type', (v) => v as String),
              token: $checkedConvert('token', (v) => v as String),
              password: $checkedConvert('password', (v) => v as String),
              username: $checkedConvert('username', (v) => v as String),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOfToJson(
            GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOf
                instance) =>
        <String, dynamic>{
          'type': instance.type,
          'token': instance.token,
          'password': instance.password,
          'username': instance.username,
        };
