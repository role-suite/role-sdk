//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_environments_by_environment_id_variables200_response_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_api_workspaces_by_workspace_id_environments_by_environment_id_variables200_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response {
  /// Returns a new [GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response] instance.
  GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response({

    required  this.data,

    required  this.success,
  });

  @JsonKey(
    
    name: r'data',
    required: true,
    includeIfNull: false
  )


  final GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData data;



  @JsonKey(
    
    name: r'success',
    required: true,
    includeIfNull: false
  )


  final bool success;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response &&
      other.data == data &&
      other.success == success;

    @override
    int get hashCode =>
        data.hashCode +
        success.hashCode;

  factory GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response.fromJson(Map<String, dynamic> json) => _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

