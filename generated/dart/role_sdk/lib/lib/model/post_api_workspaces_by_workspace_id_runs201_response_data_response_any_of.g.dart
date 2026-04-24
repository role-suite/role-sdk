// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs201_response_data_response_any_of.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf
    _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOfFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const [
                'body',
                'bodyBase64',
                'headers',
                'sizeBytes',
                'status',
                'truncated'
              ],
            );
            final val =
                PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf(
              body: $checkedConvert(
                  'body',
                  (v) =>
                      GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription
                          .fromJson(v as Map<String, dynamic>)),
              bodyBase64: $checkedConvert(
                  'bodyBase64',
                  (v) =>
                      GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription
                          .fromJson(v as Map<String, dynamic>)),
              headers: $checkedConvert(
                  'headers', (v) => Map<String, String>.from(v as Map)),
              sizeBytes:
                  $checkedConvert('sizeBytes', (v) => (v as num).toInt()),
              status: $checkedConvert('status', (v) => (v as num).toInt()),
              truncated: $checkedConvert('truncated', (v) => v as bool),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOfToJson(
            PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf
                instance) =>
        <String, dynamic>{
          'body': instance.body.toJson(),
          'bodyBase64': instance.bodyBase64.toJson(),
          'headers': instance.headers,
          'sizeBytes': instance.sizeBytes,
          'status': instance.status,
          'truncated': instance.truncated,
        };
