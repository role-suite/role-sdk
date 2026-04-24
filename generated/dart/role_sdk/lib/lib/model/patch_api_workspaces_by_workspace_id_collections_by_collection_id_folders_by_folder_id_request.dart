//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_folder_id.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patch_api_workspaces_by_workspace_id_collections_by_collection_id_folders_by_folder_id_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest {
  /// Returns a new [PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest] instance.
  PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest({

     this.name,

     this.parentFolderId,

     this.position,
  });

  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



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
    bool operator ==(Object other) => identical(this, other) || other is PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest &&
      other.name == name &&
      other.parentFolderId == parentFolderId &&
      other.position == position;

    @override
    int get hashCode =>
        name.hashCode +
        parentFolderId.hashCode +
        position.hashCode;

  factory PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest.fromJson(Map<String, dynamic> json) => _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

