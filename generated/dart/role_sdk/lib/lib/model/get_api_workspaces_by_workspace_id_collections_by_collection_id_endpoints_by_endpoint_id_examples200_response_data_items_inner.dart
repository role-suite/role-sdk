//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_body_any_of_any_of1_entries_inner.dart';
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_collections200_response_data_items_inner_description.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_by_endpoint_id_examples200_response_data_items_inner.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples200ResponseDataItemsInner {
  /// Returns a new [GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples200ResponseDataItemsInner] instance.
  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples200ResponseDataItemsInner({

    required  this.body,

    required  this.createdAt,

    required  this.createdByUserId,

    required  this.endpointId,

    required  this.headers,

    required  this.id,

    required  this.name,

    required  this.position,

    required  this.statusCode,

    required  this.updatedAt,
  });

  @JsonKey(
    
    name: r'body',
    required: true,
    includeIfNull: false
  )


  final GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription body;



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
    
    name: r'endpointId',
    required: true,
    includeIfNull: false
  )


  final int endpointId;



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



          // minimum: -9007199254740991
          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'statusCode',
    required: true,
    includeIfNull: false
  )


  final int statusCode;



  @JsonKey(
    
    name: r'updatedAt',
    required: true,
    includeIfNull: false
  )


  final String updatedAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples200ResponseDataItemsInner &&
      other.body == body &&
      other.createdAt == createdAt &&
      other.createdByUserId == createdByUserId &&
      other.endpointId == endpointId &&
      other.headers == headers &&
      other.id == id &&
      other.name == name &&
      other.position == position &&
      other.statusCode == statusCode &&
      other.updatedAt == updatedAt;

    @override
    int get hashCode =>
        body.hashCode +
        createdAt.hashCode +
        createdByUserId.hashCode +
        endpointId.hashCode +
        headers.hashCode +
        id.hashCode +
        name.hashCode +
        position.hashCode +
        statusCode.hashCode +
        updatedAt.hashCode;

  factory GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples200ResponseDataItemsInner.fromJson(Map<String, dynamic> json) => _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples200ResponseDataItemsInnerFromJson(json);

  Map<String, dynamic> toJson() => _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples200ResponseDataItemsInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

