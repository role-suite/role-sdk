//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_body_any_of4.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf4 {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf4] instance.
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf4({

     this.contentType,

     this.raw,
  });

  @JsonKey(
    
    name: r'contentType',
    required: false,
    includeIfNull: false
  )


  final String? contentType;



  @JsonKey(
    
    name: r'raw',
    required: false,
    includeIfNull: false
  )


  final String? raw;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf4 &&
      other.contentType == contentType &&
      other.raw == raw;

    @override
    int get hashCode =>
        contentType.hashCode +
        raw.hashCode;

  factory PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf4.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf4FromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf4ToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

