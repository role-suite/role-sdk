//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_collections_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdCollectionsRequest {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdCollectionsRequest] instance.
  PostApiWorkspacesByWorkspaceIdCollectionsRequest({

     this.description,

    required  this.name,
  });

  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false
  )


  final String? description;



  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdCollectionsRequest &&
      other.description == description &&
      other.name == name;

    @override
    int get hashCode =>
        description.hashCode +
        name.hashCode;

  factory PostApiWorkspacesByWorkspaceIdCollectionsRequest.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdCollectionsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdCollectionsRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

