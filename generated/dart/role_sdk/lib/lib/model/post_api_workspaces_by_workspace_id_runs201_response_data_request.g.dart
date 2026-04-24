// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs201_response_data_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest
    _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const [
                'auth',
                'body',
                'headers',
                'method',
                'queryParams',
                'resolvedVariables',
                'timeoutMs',
                'url'
              ],
            );
            final val =
                PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest(
              auth: $checkedConvert(
                  'auth',
                  (v) =>
                      GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOf
                          .fromJson(v as Map<String, dynamic>)),
              body: $checkedConvert(
                  'body',
                  (v) =>
                      PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBody
                          .fromJson(v as Map<String, dynamic>)),
              headers: $checkedConvert(
                  'headers',
                  (v) => (v as List<dynamic>)
                      .map((e) =>
                          GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner
                              .fromJson(e as Map<String, dynamic>))
                      .toList()),
              method: $checkedConvert(
                  'method',
                  (v) => $enumDecode(
                      _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnumEnumMap,
                      v)),
              queryParams: $checkedConvert(
                  'queryParams',
                  (v) => (v as List<dynamic>)
                      .map((e) =>
                          GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner
                              .fromJson(e as Map<String, dynamic>))
                      .toList()),
              resolvedVariables: $checkedConvert('resolvedVariables',
                  (v) => Map<String, String>.from(v as Map)),
              timeoutMs:
                  $checkedConvert('timeoutMs', (v) => (v as num).toInt()),
              url: $checkedConvert('url', (v) => v as String),
            );
            return val;
          },
        );

Map<String,
    dynamic> _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestToJson(
        PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest instance) =>
    <String, dynamic>{
      'auth': instance.auth.toJson(),
      'body': instance.body.toJson(),
      'headers': instance.headers.map((e) => e.toJson()).toList(),
      'method':
          _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnumEnumMap[
              instance.method]!,
      'queryParams': instance.queryParams.map((e) => e.toJson()).toList(),
      'resolvedVariables': instance.resolvedVariables,
      'timeoutMs': instance.timeoutMs,
      'url': instance.url,
    };

const _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnumEnumMap =
    {
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum.GET: 'GET',
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum.POST:
      'POST',
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum.PUT: 'PUT',
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum.PATCH:
      'PATCH',
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum.DELETE:
      'DELETE',
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum.HEAD:
      'HEAD',
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum.OPTIONS:
      'OPTIONS',
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum
      .unknownDefaultOpenApi: 'unknown_default_open_api',
};
