//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'get_api_workspaces_by_workspace_id_environments200_response_data_items_inner.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner {
  /// Returns a new [GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner] instance.
  GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner({

    required  this.createdAt,

    required  this.createdByUserId,

    required  this.id,

    required  this.name,

    required  this.updatedAt,

    required  this.workspaceId,
  });

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
    
    name: r'updatedAt',
    required: true,
    includeIfNull: false
  )


  final String updatedAt;



          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'workspaceId',
    required: true,
    includeIfNull: false
  )


  final int workspaceId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner &&
      other.createdAt == createdAt &&
      other.createdByUserId == createdByUserId &&
      other.id == id &&
      other.name == name &&
      other.updatedAt == updatedAt &&
      other.workspaceId == workspaceId;

    @override
    int get hashCode =>
        createdAt.hashCode +
        createdByUserId.hashCode +
        id.hashCode +
        name.hashCode +
        updatedAt.hashCode +
        workspaceId.hashCode;

  factory GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner.fromJson(Map<String, dynamic> json) => _$GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInnerFromJson(json);

  Map<String, dynamic> toJson() => _$GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

