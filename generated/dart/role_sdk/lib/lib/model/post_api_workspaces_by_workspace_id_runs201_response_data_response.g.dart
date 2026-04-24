// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs201_response_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse
    _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse',
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
                PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse(
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

Map<String,
    dynamic> _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseToJson(
        PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse instance) =>
    <String, dynamic>{
      'body': instance.body.toJson(),
      'bodyBase64': instance.bodyBase64.toJson(),
      'headers': instance.headers,
      'sizeBytes': instance.sizeBytes,
      'status': instance.status,
      'truncated': instance.truncated,
    };
