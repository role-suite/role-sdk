// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs201_response_data_request_body_any_of.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf
    _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOfFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['entries', 'mode'],
            );
            final val =
                PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf(
              entries: $checkedConvert(
                  'entries',
                  (v) => (v as List<dynamic>)
                      .map((e) => (e as Map<String, dynamic>).map(
                            (k, e) => MapEntry(k, e as Object),
                          ))
                      .toList()),
              mode: $checkedConvert('mode', (v) => v as String),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOfToJson(
            PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf
                instance) =>
        <String, dynamic>{
          'entries': instance.entries,
          'mode': instance.mode,
        };
