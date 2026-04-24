// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs_request_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiWorkspacesByWorkspaceIdRunsRequestSource
    _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PostApiWorkspacesByWorkspaceIdRunsRequestSource',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const [
                'request',
                'type',
                'collectionId',
                'endpointId'
              ],
            );
            final val = PostApiWorkspacesByWorkspaceIdRunsRequestSource(
              request: $checkedConvert(
                  'request',
                  (v) =>
                      PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest
                          .fromJson(v as Map<String, dynamic>)),
              type: $checkedConvert('type', (v) => v as String),
              collectionId:
                  $checkedConvert('collectionId', (v) => (v as num).toInt()),
              endpointId:
                  $checkedConvert('endpointId', (v) => (v as num).toInt()),
            );
            return val;
          },
        );

Map<String, dynamic> _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceToJson(
        PostApiWorkspacesByWorkspaceIdRunsRequestSource instance) =>
    <String, dynamic>{
      'request': instance.request.toJson(),
      'type': instance.type,
      'collectionId': instance.collectionId,
      'endpointId': instance.endpointId,
    };
