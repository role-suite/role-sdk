// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs_request_source_one_of1.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1
    _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1FromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['collectionId', 'endpointId', 'type'],
            );
            final val = PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1(
              collectionId:
                  $checkedConvert('collectionId', (v) => (v as num).toInt()),
              endpointId:
                  $checkedConvert('endpointId', (v) => (v as num).toInt()),
              type: $checkedConvert('type', (v) => v as String),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1ToJson(
            PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf1 instance) =>
        <String, dynamic>{
          'collectionId': instance.collectionId,
          'endpointId': instance.endpointId,
          'type': instance.type,
        };
