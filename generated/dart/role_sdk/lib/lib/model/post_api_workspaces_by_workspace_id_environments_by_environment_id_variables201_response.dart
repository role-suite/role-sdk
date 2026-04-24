//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_environments_by_environment_id_variables200_response_data_items_inner.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_environments_by_environment_id_variables201_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response] instance.
  PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response({

    required  this.data,

    required  this.success,
  });

  @JsonKey(
    
    name: r'data',
    required: true,
    includeIfNull: false
  )


  final GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner data;



  @JsonKey(
    
    name: r'success',
    required: true,
    includeIfNull: false
  )


  final bool success;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response &&
      other.data == data &&
      other.success == success;

    @override
    int get hashCode =>
        data.hashCode +
        success.hashCode;

  factory PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

