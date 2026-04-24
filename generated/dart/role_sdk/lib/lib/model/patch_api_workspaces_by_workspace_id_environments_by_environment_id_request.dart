//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'patch_api_workspaces_by_workspace_id_environments_by_environment_id_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdRequest {
  /// Returns a new [PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdRequest] instance.
  PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdRequest({

     this.name,
  });

  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdRequest &&
      other.name == name;

    @override
    int get hashCode =>
        name.hashCode;

  factory PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdRequest.fromJson(Map<String, dynamic> json) => _$PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

