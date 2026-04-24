// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs_request_source_one_of_request_auth_one_of.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf
    _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOfFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['token', 'type'],
            );
            final val =
                PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf(
              token: $checkedConvert('token', (v) => v as String),
              type: $checkedConvert('type', (v) => v as String),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOfToJson(
            PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf
                instance) =>
        <String, dynamic>{
          'token': instance.token,
          'type': instance.type,
        };
