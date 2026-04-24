//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_convert_to_team_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdConvertToTeamRequest {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdConvertToTeamRequest] instance.
  PostApiWorkspacesByWorkspaceIdConvertToTeamRequest({

     this.name,
  });

  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdConvertToTeamRequest &&
      other.name == name;

    @override
    int get hashCode =>
        name.hashCode;

  factory PostApiWorkspacesByWorkspaceIdConvertToTeamRequest.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdConvertToTeamRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdConvertToTeamRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

