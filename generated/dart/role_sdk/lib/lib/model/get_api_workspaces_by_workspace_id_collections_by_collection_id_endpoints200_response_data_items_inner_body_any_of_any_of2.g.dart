// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_body_any_of_any_of2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf2
    _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf2FromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf2',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['entries', 'mode'],
            );
            final val =
                GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf2(
              entries: $checkedConvert(
                  'entries',
                  (v) => (v as List<dynamic>)
                      .map((e) =>
                          GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf2EntriesInner
                              .fromJson(e as Map<String, dynamic>))
                      .toList()),
              mode: $checkedConvert('mode', (v) => v as String),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf2ToJson(
            GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf2
                instance) =>
        <String, dynamic>{
          'entries': instance.entries.map((e) => e.toJson()).toList(),
          'mode': instance.mode,
        };
