// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs_request_source_one_of.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf
    _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['request', 'type'],
            );
            final val = PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf(
              request: $checkedConvert(
                  'request',
                  (v) =>
                      PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest
                          .fromJson(v as Map<String, dynamic>)),
              type: $checkedConvert('type', (v) => v as String),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfToJson(
            PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf instance) =>
        <String, dynamic>{
          'request': instance.request.toJson(),
          'type': instance.type,
        };
