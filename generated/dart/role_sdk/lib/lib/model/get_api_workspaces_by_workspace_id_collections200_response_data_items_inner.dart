//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_collections200_response_data_items_inner_description.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_api_workspaces_by_workspace_id_collections200_response_data_items_inner.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner {
  /// Returns a new [GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner] instance.
  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner({

     this.legacyId,

    required  this.createdAt,

    required  this.createdByUserId,

    required  this.description,

    required  this.id,

    required  this.name,

    required  this.updatedAt,

    required  this.workspaceId,
  });

          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'_id',
    required: false,
    includeIfNull: false
  )


  final int? legacyId;



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
    
    name: r'description',
    required: true,
    includeIfNull: false
  )


  final GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription description;



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
    bool operator ==(Object other) => identical(this, other) || other is GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner &&
      other.legacyId == legacyId &&
      other.createdAt == createdAt &&
      other.createdByUserId == createdByUserId &&
      other.description == description &&
      other.id == id &&
      other.name == name &&
      other.updatedAt == updatedAt &&
      other.workspaceId == workspaceId;

    @override
    int get hashCode =>
        legacyId.hashCode +
        createdAt.hashCode +
        createdByUserId.hashCode +
        description.hashCode +
        id.hashCode +
        name.hashCode +
        updatedAt.hashCode +
        workspaceId.hashCode;

  factory GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner.fromJson(Map<String, dynamic> json) => _$GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerFromJson(json);

  Map<String, dynamic> toJson() => _$GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

