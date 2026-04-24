//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_environments_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdEnvironmentsRequest {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdEnvironmentsRequest] instance.
  PostApiWorkspacesByWorkspaceIdEnvironmentsRequest({

    required  this.name,
  });

  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdEnvironmentsRequest &&
      other.name == name;

    @override
    int get hashCode =>
        name.hashCode;

  factory PostApiWorkspacesByWorkspaceIdEnvironmentsRequest.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdEnvironmentsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdEnvironmentsRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

