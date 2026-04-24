//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_folder_id.dart';
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_updates200_response_data_items_inner_payload.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_api_workspaces_by_workspace_id_updates200_response_data_items_inner.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner {
  /// Returns a new [GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner] instance.
  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner({

    required  this.action,

    required  this.actorUserId,

    required  this.createdAt,

    required  this.entity,

    required  this.entityId,

    required  this.id,

    required  this.payload,

    required  this.workspaceId,
  });

  @JsonKey(
    
    name: r'action',
    required: true,
    includeIfNull: false
  )


  final String action;



  @JsonKey(
    
    name: r'actorUserId',
    required: true,
    includeIfNull: false
  )


  final PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId actorUserId;



  @JsonKey(
    
    name: r'createdAt',
    required: true,
    includeIfNull: false
  )


  final String createdAt;



  @JsonKey(
    
    name: r'entity',
    required: true,
    includeIfNull: false
  )


  final String entity;



          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'entityId',
    required: true,
    includeIfNull: false
  )


  final int entityId;



          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false
  )


  final int id;



  @JsonKey(
    
    name: r'payload',
    required: true,
    includeIfNull: false
  )


  final GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerPayload payload;



          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'workspaceId',
    required: true,
    includeIfNull: false
  )


  final int workspaceId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner &&
      other.action == action &&
      other.actorUserId == actorUserId &&
      other.createdAt == createdAt &&
      other.entity == entity &&
      other.entityId == entityId &&
      other.id == id &&
      other.payload == payload &&
      other.workspaceId == workspaceId;

    @override
    int get hashCode =>
        action.hashCode +
        actorUserId.hashCode +
        createdAt.hashCode +
        entity.hashCode +
        entityId.hashCode +
        id.hashCode +
        payload.hashCode +
        workspaceId.hashCode;

  factory GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInner.fromJson(Map<String, dynamic> json) => _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerFromJson(json);

  Map<String, dynamic> toJson() => _$GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataItemsInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

