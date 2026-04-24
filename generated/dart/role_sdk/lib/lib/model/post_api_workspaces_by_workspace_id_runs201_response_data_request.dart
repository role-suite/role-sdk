//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_body_any_of_any_of1_entries_inner.dart';
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_auth_any_of.dart';
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs201_response_data_request_body.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_runs201_response_data_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest] instance.
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest({

    required  this.auth,

    required  this.body,

    required  this.headers,

    required  this.method,

    required  this.queryParams,

    required  this.resolvedVariables,

    required  this.timeoutMs,

    required  this.url,
  });

  @JsonKey(
    
    name: r'auth',
    required: true,
    includeIfNull: false
  )


  final GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOf auth;



  @JsonKey(
    
    name: r'body',
    required: true,
    includeIfNull: false
  )


  final PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBody body;



  @JsonKey(
    
    name: r'headers',
    required: true,
    includeIfNull: false
  )


  final List<GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner> headers;



  @JsonKey(
    
    name: r'method',
    required: true,
    includeIfNull: false
  )


  final PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum method;



  @JsonKey(
    
    name: r'queryParams',
    required: true,
    includeIfNull: false
  )


  final List<GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner> queryParams;



  @JsonKey(
    
    name: r'resolvedVariables',
    required: true,
    includeIfNull: false
  )


  final Map<String, String> resolvedVariables;



          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'timeoutMs',
    required: true,
    includeIfNull: false
  )


  final int timeoutMs;



  @JsonKey(
    
    name: r'url',
    required: true,
    includeIfNull: false
  )


  final String url;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest &&
      other.auth == auth &&
      other.body == body &&
      other.headers == headers &&
      other.method == method &&
      other.queryParams == queryParams &&
      other.resolvedVariables == resolvedVariables &&
      other.timeoutMs == timeoutMs &&
      other.url == url;

    @override
    int get hashCode =>
        auth.hashCode +
        body.hashCode +
        headers.hashCode +
        method.hashCode +
        queryParams.hashCode +
        resolvedVariables.hashCode +
        timeoutMs.hashCode +
        url.hashCode;

  factory PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum {
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


