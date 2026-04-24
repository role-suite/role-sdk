//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_body_any_of2_entries_inner_one_of.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf2EntriesInnerOneOf {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf2EntriesInnerOneOf] instance.
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf2EntriesInnerOneOf({

     this.enabled,

    required  this.key,

    required  this.type,

    required  this.value,
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





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf2EntriesInnerOneOf &&
      other.enabled == enabled &&
      other.key == key &&
      other.type == type &&
      other.value == value;

    @override
    int get hashCode =>
        enabled.hashCode +
        key.hashCode +
        type.hashCode +
        value.hashCode;

  factory PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf2EntriesInnerOneOf.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf2EntriesInnerOneOfFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf2EntriesInnerOneOfToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

