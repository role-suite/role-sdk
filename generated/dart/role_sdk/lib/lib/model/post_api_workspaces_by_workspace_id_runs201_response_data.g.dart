// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs201_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiWorkspacesByWorkspaceIdRuns201ResponseData
    _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PostApiWorkspacesByWorkspaceIdRuns201ResponseData',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const [
                'completedAt',
                'durationMs',
                'error',
                'request',
                'response',
                'runId',
                'startedAt',
                'status'
              ],
            );
            final val = PostApiWorkspacesByWorkspaceIdRuns201ResponseData(
              completedAt: $checkedConvert(
                  'completedAt',
                  (v) =>
                      PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt
                          .fromJson(v as Map<String, dynamic>)),
              durationMs: $checkedConvert(
                  'durationMs',
                  (v) =>
                      PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs
                          .fromJson(v as Map<String, dynamic>)),
              error: $checkedConvert(
                  'error',
                  (v) => PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError
                      .fromJson(v as Map<String, dynamic>)),
              request: $checkedConvert(
                  'request',
                  (v) =>
                      PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest
                          .fromJson(v as Map<String, dynamic>)),
              response: $checkedConvert(
                  'response',
                  (v) =>
                      PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse
                          .fromJson(v as Map<String, dynamic>)),
              runId: $checkedConvert('runId', (v) => (v as num).toInt()),
              startedAt: $checkedConvert('startedAt', (v) => v as String),
              status: $checkedConvert(
                  'status',
                  (v) => $enumDecode(
                      _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnumEnumMap,
                      v)),
            );
            return val;
          },
        );

Map<String, dynamic> _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataToJson(
        PostApiWorkspacesByWorkspaceIdRuns201ResponseData instance) =>
    <String, dynamic>{
      'completedAt': instance.completedAt.toJson(),
      'durationMs': instance.durationMs.toJson(),
      'error': instance.error.toJson(),
      'request': instance.request.toJson(),
      'response': instance.response.toJson(),
      'runId': instance.runId,
      'startedAt': instance.startedAt,
      'status':
          _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnumEnumMap[
              instance.status]!,
    };

const _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnumEnumMap = {
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum.running:
      'running',
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum.completed:
      'completed',
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum.failed: 'failed',
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum.cancelled:
      'cancelled',
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum
      .unknownDefaultOpenApi: 'unknown_default_open_api',
};
