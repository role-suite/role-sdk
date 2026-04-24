//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_folder_id.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_api_workspaces_by_workspace_id_collections_by_collection_id_folders200_response_data_items_inner.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner {
  /// Returns a new [GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner] instance.
  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner({

    required  this.collectionId,

    required  this.createdAt,

    required  this.createdByUserId,

    required  this.id,

    required  this.name,

    required  this.parentFolderId,

    required  this.position,

    required  this.updatedAt,
  });

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



          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false
  )


  final int id;



  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



  @JsonKey(
    
    name: r'parentFolderId',
    required: true,
    includeIfNull: false
  )


  final PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId parentFolderId;



          // minimum: -9007199254740991
          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'position',
    required: true,
    includeIfNull: false
  )


  final int position;



  @JsonKey(
    
    name: r'updatedAt',
    required: true,
    includeIfNull: false
  )


  final String updatedAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner &&
      other.collectionId == collectionId &&
      other.createdAt == createdAt &&
      other.createdByUserId == createdByUserId &&
      other.id == id &&
      other.name == name &&
      other.parentFolderId == parentFolderId &&
      other.position == position &&
      other.updatedAt == updatedAt;

    @override
    int get hashCode =>
        collectionId.hashCode +
        createdAt.hashCode +
        createdByUserId.hashCode +
        id.hashCode +
        name.hashCode +
        parentFolderId.hashCode +
        position.hashCode +
        updatedAt.hashCode;

  factory GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInner.fromJson(Map<String, dynamic> json) => _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInnerFromJson(json);

  Map<String, dynamic> toJson() => _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200ResponseDataItemsInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

