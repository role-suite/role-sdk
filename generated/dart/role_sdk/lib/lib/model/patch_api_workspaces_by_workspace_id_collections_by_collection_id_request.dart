//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'patch_api_workspaces_by_workspace_id_collections_by_collection_id_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest {
  /// Returns a new [PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest] instance.
  PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest({

     this.description,

     this.name,
  });

  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false
  )


  final String? description;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest &&
      other.description == description &&
      other.name == name;

    @override
    int get hashCode =>
        description.hashCode +
        name.hashCode;

  factory PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest.fromJson(Map<String, dynamic> json) => _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

