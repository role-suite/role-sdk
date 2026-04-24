//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_body_any_of2_entries_inner.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_body_any_of2.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf2 {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf2] instance.
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf2({

    required  this.entries,

    required  this.mode,
  });

  @JsonKey(
    
    name: r'entries',
    required: true,
    includeIfNull: false
  )


  final List<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf2EntriesInner> entries;



  @JsonKey(
    
    name: r'mode',
    required: true,
    includeIfNull: false
  )


  final String mode;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf2 &&
      other.entries == entries &&
      other.mode == mode;

    @override
    int get hashCode =>
        entries.hashCode +
        mode.hashCode;

  factory PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf2.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf2FromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf2ToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

