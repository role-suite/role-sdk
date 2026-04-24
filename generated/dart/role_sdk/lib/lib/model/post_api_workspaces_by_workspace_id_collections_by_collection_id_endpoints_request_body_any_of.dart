//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_body_any_of.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf] instance.
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf({

     this.contentType,

    required  this.mode,

    required  this.raw,
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





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf &&
      other.contentType == contentType &&
      other.mode == mode &&
      other.raw == raw;

    @override
    int get hashCode =>
        contentType.hashCode +
        mode.hashCode +
        raw.hashCode;

  factory PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOfFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOfToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

