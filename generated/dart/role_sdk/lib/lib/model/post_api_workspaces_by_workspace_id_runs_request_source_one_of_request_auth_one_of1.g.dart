// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs_request_source_one_of_request_auth_one_of1.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1
    _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1FromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['password', 'type', 'username'],
            );
            final val =
                PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1(
              password: $checkedConvert('password', (v) => v as String),
              type: $checkedConvert('type', (v) => v as String),
              username: $checkedConvert('username', (v) => v as String),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1ToJson(
            PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf1
                instance) =>
        <String, dynamic>{
          'password': instance.password,
          'type': instance.type,
          'username': instance.username,
        };
