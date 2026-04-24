//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs201_response_data_response_any_of.dart';
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_collections200_response_data_items_inner_description.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_runs201_response_data_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse] instance.
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse({

    required  this.body,

    required  this.bodyBase64,

    required  this.headers,

    required  this.sizeBytes,

    required  this.status,

    required  this.truncated,
  });

  @JsonKey(
    
    name: r'body',
    required: true,
    includeIfNull: false
  )


  final GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription body;



  @JsonKey(
    
    name: r'bodyBase64',
    required: true,
    includeIfNull: false
  )


  final GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription bodyBase64;



  @JsonKey(
    
    name: r'headers',
    required: true,
    includeIfNull: false
  )


  final Map<String, String> headers;



          // minimum: 0
          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'sizeBytes',
    required: true,
    includeIfNull: false
  )


  final int sizeBytes;



          // minimum: -9007199254740991
          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'status',
    required: true,
    includeIfNull: false
  )


  final int status;



  @JsonKey(
    
    name: r'truncated',
    required: true,
    includeIfNull: false
  )


  final bool truncated;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse &&
      other.body == body &&
      other.bodyBase64 == bodyBase64 &&
      other.headers == headers &&
      other.sizeBytes == sizeBytes &&
      other.status == status &&
      other.truncated == truncated;

    @override
    int get hashCode =>
        body.hashCode +
        bodyBase64.hashCode +
        headers.hashCode +
        sizeBytes.hashCode +
        status.hashCode +
        truncated.hashCode;

  factory PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

