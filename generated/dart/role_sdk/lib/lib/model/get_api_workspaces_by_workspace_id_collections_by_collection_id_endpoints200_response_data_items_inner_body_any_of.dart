//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_body_any_of_any_of4.dart';
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_body_any_of_any_of2_entries_inner.dart';
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_body_any_of_any_of1.dart';
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_body_any_of_any_of2.dart';
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_body_any_of_any_of3.dart';
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_body_any_of_any_of.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_body_any_of.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOf {
  /// Returns a new [GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOf] instance.
  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOf({

     this.contentType,

    required  this.mode,

    required  this.raw,

    required  this.entries,

    required  this.dataBase64,

    required  this.fileName,
  });

  @JsonKey(
    
    name: r'contentType',
    required: false,
    includeIfNull: false
  )


  final String? contentType;



  @JsonKey(
    
    name: r'mode',
    required: true,
    includeIfNull: false
  )


  final String mode;



  @JsonKey(
    
    name: r'raw',
    required: true,
    includeIfNull: false
  )


  final String raw;



  @JsonKey(
    
    name: r'entries',
    required: true,
    includeIfNull: false
  )


  final List<GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf2EntriesInner> entries;



  @JsonKey(
    
    name: r'dataBase64',
    required: true,
    includeIfNull: false
  )


  final String dataBase64;



  @JsonKey(
    
    name: r'fileName',
    required: true,
    includeIfNull: false
  )


  final String fileName;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOf &&
      other.contentType == contentType &&
      other.mode == mode &&
      other.raw == raw &&
      other.entries == entries &&
      other.dataBase64 == dataBase64 &&
      other.fileName == fileName;

    @override
    int get hashCode =>
        contentType.hashCode +
        mode.hashCode +
        raw.hashCode +
        entries.hashCode +
        dataBase64.hashCode +
        fileName.hashCode;

  factory GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOf.fromJson(Map<String, dynamic> json) => _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfFromJson(json);

  Map<String, dynamic> toJson() => _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

