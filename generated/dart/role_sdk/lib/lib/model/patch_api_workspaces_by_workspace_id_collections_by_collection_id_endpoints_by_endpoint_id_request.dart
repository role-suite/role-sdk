//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_auth.dart';
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_folder_id.dart';
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_body.dart';
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_body_any_of1_entries_inner.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patch_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_by_endpoint_id_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequest {
  /// Returns a new [PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequest] instance.
  PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequest({

     this.auth,

     this.body,

     this.folderId,

     this.headers,

     this.method,

     this.name,

     this.position,

     this.queryParams,

     this.url,
  });

  @JsonKey(
    
    name: r'auth',
    required: false,
    includeIfNull: false
  )


  final PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuth? auth;



  @JsonKey(
    
    name: r'body',
    required: false,
    includeIfNull: false
  )


  final PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBody? body;



  @JsonKey(
    
    name: r'folderId',
    required: false,
    includeIfNull: false
  )


  final PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId? folderId;



  @JsonKey(
    
    name: r'headers',
    required: false,
    includeIfNull: false
  )


  final List<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1EntriesInner>? headers;



  @JsonKey(
    
    name: r'method',
    required: false,
    includeIfNull: false
  )


  final PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestMethodEnum? method;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



          // minimum: 0
          // maximum: 100000
  @JsonKey(
    
    name: r'position',
    required: false,
    includeIfNull: false
  )


  final int? position;



  @JsonKey(
    
    name: r'queryParams',
    required: false,
    includeIfNull: false
  )


  final List<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1EntriesInner>? queryParams;



  @JsonKey(
    
    name: r'url',
    required: false,
    includeIfNull: false
  )


  final String? url;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequest &&
      other.auth == auth &&
      other.body == body &&
      other.folderId == folderId &&
      other.headers == headers &&
      other.method == method &&
      other.name == name &&
      other.position == position &&
      other.queryParams == queryParams &&
      other.url == url;

    @override
    int get hashCode =>
        auth.hashCode +
        body.hashCode +
        folderId.hashCode +
        headers.hashCode +
        method.hashCode +
        name.hashCode +
        position.hashCode +
        queryParams.hashCode +
        url.hashCode;

  factory PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequest.fromJson(Map<String, dynamic> json) => _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestMethodEnum {
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


