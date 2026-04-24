// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs_request_source_one_of_request_body_any_of_any_of.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOf
    _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOf',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['entries', 'mode'],
            );
            final val =
                PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOf(
              entries: $checkedConvert(
                  'entries',
                  (v) => (v as List<dynamic>)
                      .map((e) =>
                          PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInner
                              .fromJson(e as Map<String, dynamic>))
                      .toList()),
              mode: $checkedConvert('mode', (v) => v as String),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfToJson(
            PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOf
                instance) =>
        <String, dynamic>{
          'entries': instance.entries.map((e) => e.toJson()).toList(),
          'mode': instance.mode,
        };
