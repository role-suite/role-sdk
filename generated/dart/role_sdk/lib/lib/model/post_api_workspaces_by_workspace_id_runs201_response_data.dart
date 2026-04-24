//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs201_response_data_error.dart';
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs201_response_data_response.dart';
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs201_response_data_duration_ms.dart';
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs201_response_data_request.dart';
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs201_response_data_completed_at.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_runs201_response_data.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdRuns201ResponseData {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdRuns201ResponseData] instance.
  PostApiWorkspacesByWorkspaceIdRuns201ResponseData({

    required  this.completedAt,

    required  this.durationMs,

    required  this.error,

    required  this.request,

    required  this.response,

    required  this.runId,

    required  this.startedAt,

    required  this.status,
  });

  @JsonKey(
    
    name: r'completedAt',
    required: true,
    includeIfNull: false
  )


  final PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt completedAt;



  @JsonKey(
    
    name: r'durationMs',
    required: true,
    includeIfNull: false
  )


  final PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs durationMs;



  @JsonKey(
    
    name: r'error',
    required: true,
    includeIfNull: false
  )


  final PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError error;



  @JsonKey(
    
    name: r'request',
    required: true,
    includeIfNull: false
  )


  final PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest request;



  @JsonKey(
    
    name: r'response',
    required: true,
    includeIfNull: false
  )


  final PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse response;



          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'runId',
    required: true,
    includeIfNull: false
  )


  final int runId;



  @JsonKey(
    
    name: r'startedAt',
    required: true,
    includeIfNull: false
  )


  final String startedAt;



  @JsonKey(
    
    name: r'status',
    required: true,
    includeIfNull: false
  )


  final PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum status;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdRuns201ResponseData &&
      other.completedAt == completedAt &&
      other.durationMs == durationMs &&
      other.error == error &&
      other.request == request &&
      other.response == response &&
      other.runId == runId &&
      other.startedAt == startedAt &&
      other.status == status;

    @override
    int get hashCode =>
        completedAt.hashCode +
        durationMs.hashCode +
        error.hashCode +
        request.hashCode +
        response.hashCode +
        runId.hashCode +
        startedAt.hashCode +
        status.hashCode;

  factory PostApiWorkspacesByWorkspaceIdRuns201ResponseData.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum {
  @JsonValue(r'running')
  running,
  @JsonValue(r'completed')
  completed,
  @JsonValue(r'failed')
  failed,
  @JsonValue(r'cancelled')
  cancelled,
  @JsonValue(r'unknown_default_open_api')
  unknownDefaultOpenApi,
}


