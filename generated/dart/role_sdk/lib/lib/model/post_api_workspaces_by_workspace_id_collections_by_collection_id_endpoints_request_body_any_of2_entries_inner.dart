//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_body_any_of2_entries_inner_one_of1.dart';
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_body_any_of2_entries_inner_one_of.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_body_any_of2_entries_inner.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf2EntriesInner {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf2EntriesInner] instance.
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf2EntriesInner({

     this.enabled,

    required  this.key,

    required  this.type,

    required  this.value,

     this.contentType,

    required  this.dataBase64,

    required  this.fileName,
  });

  @JsonKey(
    
    name: r'enabled',
    required: false,
    includeIfNull: false
  )


  final bool? enabled;



  @JsonKey(
    
    name: r'key',
    required: true,
    includeIfNull: false
  )


  final String key;



  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final String type;



  @JsonKey(
    
    name: r'value',
    required: true,
    includeIfNull: false
  )


  final String value;



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





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf2EntriesInner &&
      other.enabled == enabled &&
      other.key == key &&
      other.type == type &&
      other.value == value &&
      other.contentType == contentType &&
      other.dataBase64 == dataBase64 &&
      other.fileName == fileName;

    @override
    int get hashCode =>
        enabled.hashCode +
        key.hashCode +
        type.hashCode +
        value.hashCode +
        contentType.hashCode +
        dataBase64.hashCode +
        fileName.hashCode;

  factory PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf2EntriesInner.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf2EntriesInnerFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf2EntriesInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

