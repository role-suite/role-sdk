//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_auth.dart';
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_body_any_of_any_of1_entries_inner.dart';
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_folder_id.dart';
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_body.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints201_response_data.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseData {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseData] instance.
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseData({

    required  this.auth,

    required  this.body,

    required  this.collectionId,

    required  this.createdAt,

    required  this.createdByUserId,

    required  this.folderId,

    required  this.headers,

    required  this.id,

    required  this.method,

    required  this.name,

    required  this.position,

    required  this.queryParams,

    required  this.updatedAt,

    required  this.url,
  });

  @JsonKey(
    
    name: r'auth',
    required: true,
    includeIfNull: false
  )


  final GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuth auth;



  @JsonKey(
    
    name: r'body',
    required: true,
    includeIfNull: false
  )


  final GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBody body;



          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'collectionId',
    required: true,
    includeIfNull: false
  )


  final int collectionId;



  @JsonKey(
    
    name: r'createdAt',
    required: true,
    includeIfNull: false
  )


  final String createdAt;



          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'createdByUserId',
    required: true,
    includeIfNull: false
  )


  final int createdByUserId;



  @JsonKey(
    
    name: r'folderId',
    required: true,
    includeIfNull: false
  )


  final PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId folderId;



  @JsonKey(
    
    name: r'headers',
    required: true,
    includeIfNull: false
  )


  final List<GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner> headers;



          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false
  )


  final int id;



  @JsonKey(
    
    name: r'method',
    required: true,
    includeIfNull: false
  )


  final PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum method;



  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



          // minimum: -9007199254740991
          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'position',
    required: true,
    includeIfNull: false
  )


  final int position;



  @JsonKey(
    
    name: r'queryParams',
    required: true,
    includeIfNull: false
  )


  final List<GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner> queryParams;



  @JsonKey(
    
    name: r'updatedAt',
    required: true,
    includeIfNull: false
  )


  final String updatedAt;



  @JsonKey(
    
    name: r'url',
    required: true,
    includeIfNull: false
  )


  final String url;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseData &&
      other.auth == auth &&
      other.body == body &&
      other.collectionId == collectionId &&
      other.createdAt == createdAt &&
      other.createdByUserId == createdByUserId &&
      other.folderId == folderId &&
      other.headers == headers &&
      other.id == id &&
      other.method == method &&
      other.name == name &&
      other.position == position &&
      other.queryParams == queryParams &&
      other.updatedAt == updatedAt &&
      other.url == url;

    @override
    int get hashCode =>
        auth.hashCode +
        body.hashCode +
        collectionId.hashCode +
        createdAt.hashCode +
        createdByUserId.hashCode +
        folderId.hashCode +
        headers.hashCode +
        id.hashCode +
        method.hashCode +
        name.hashCode +
        position.hashCode +
        queryParams.hashCode +
        updatedAt.hashCode +
        url.hashCode;

  factory PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseData.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataMethodEnum {
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


