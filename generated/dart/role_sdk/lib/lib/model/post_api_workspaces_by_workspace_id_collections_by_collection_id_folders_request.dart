//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_folder_id.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_collections_by_collection_id_folders_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest] instance.
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest({

    required  this.name,

     this.parentFolderId,

     this.position,
  });

  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



  @JsonKey(
    
    name: r'parentFolderId',
    required: false,
    includeIfNull: false
  )


  final PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId? parentFolderId;



          // minimum: 0
          // maximum: 100000
  @JsonKey(
    
    name: r'position',
    required: false,
    includeIfNull: false
  )


  final int? position;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest &&
      other.name == name &&
      other.parentFolderId == parentFolderId &&
      other.position == position;

    @override
    int get hashCode =>
        name.hashCode +
        parentFolderId.hashCode +
        position.hashCode;

  factory PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

