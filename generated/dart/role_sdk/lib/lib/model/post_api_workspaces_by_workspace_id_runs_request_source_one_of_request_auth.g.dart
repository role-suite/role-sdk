// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs_request_source_one_of_request_auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth
    _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['type', 'token', 'password', 'username'],
            );
            final val =
                PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth(
              type: $checkedConvert('type', (v) => v as String),
              token: $checkedConvert('token', (v) => v as String),
              password: $checkedConvert('password', (v) => v as String),
              username: $checkedConvert('username', (v) => v as String),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthToJson(
            PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth
                instance) =>
        <String, dynamic>{
          'type': instance.type,
          'token': instance.token,
          'password': instance.password,
          'username': instance.username,
        };
