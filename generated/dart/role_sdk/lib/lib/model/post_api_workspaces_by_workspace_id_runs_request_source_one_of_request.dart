//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs_request_source_one_of_request_body_any_of_any_of_entries_inner.dart';
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs_request_source_one_of_request_auth.dart';
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs_request_source_one_of_request_body.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_runs_request_source_one_of_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest] instance.
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest({

     this.auth,

     this.body,

     this.headers,

    required  this.method,

     this.queryParams,

    required  this.url,
  });

  @JsonKey(
    
    name: r'auth',
    required: false,
    includeIfNull: false
  )


  final PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth? auth;



  @JsonKey(
    
    name: r'body',
    required: false,
    includeIfNull: false
  )


  final PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody? body;



  @JsonKey(
    
    name: r'headers',
    required: false,
    includeIfNull: false
  )


  final List<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInner>? headers;



  @JsonKey(
    
    name: r'method',
    required: true,
    includeIfNull: false
  )


  final PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum method;



  @JsonKey(
    
    name: r'queryParams',
    required: false,
    includeIfNull: false
  )


  final List<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInner>? queryParams;



  @JsonKey(
    
    name: r'url',
    required: true,
    includeIfNull: false
  )


  final String url;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest &&
      other.auth == auth &&
      other.body == body &&
      other.headers == headers &&
      other.method == method &&
      other.queryParams == queryParams &&
      other.url == url;

    @override
    int get hashCode =>
        auth.hashCode +
        body.hashCode +
        headers.hashCode +
        method.hashCode +
        queryParams.hashCode +
        url.hashCode;

  factory PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum {
  @JsonValue(r'GET')
  GET,
  @JsonValue(r'POST')
  POST,
  @JsonValue(r'PUT')
  PUT,
  @JsonValue(r'PATCH')
  PATCH,
  @JsonValue(r'DELETE')
  DELETE,
  @JsonValue(r'HEAD')
  HEAD,
  @JsonValue(r'OPTIONS')
  OPTIONS,
  @JsonValue(r'unknown_default_open_api')
  unknownDefaultOpenApi,
}


