//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_body_any_of_any_of3.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf3 {
  /// Returns a new [GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf3] instance.
  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf3({

     this.contentType,

    required  this.dataBase64,

    required  this.fileName,

    required  this.mode,
  });

  @JsonKey(
    
    name: r'contentType',
    required: false,
    includeIfNull: false
  )


  final String? contentType;



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



  @JsonKey(
    
    name: r'mode',
    required: true,
    includeIfNull: false
  )


  final String mode;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf3 &&
      other.contentType == contentType &&
      other.dataBase64 == dataBase64 &&
      other.fileName == fileName &&
      other.mode == mode;

    @override
    int get hashCode =>
        contentType.hashCode +
        dataBase64.hashCode +
        fileName.hashCode +
        mode.hashCode;

  factory GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf3.fromJson(Map<String, dynamic> json) => _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf3FromJson(json);

  Map<String, dynamic> toJson() => _$GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf3ToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

