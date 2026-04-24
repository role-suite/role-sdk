//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'patch_api_workspaces_by_workspace_id_environments_by_environment_id_variables_by_variable_id_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest {
  /// Returns a new [PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest] instance.
  PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest({

     this.enabled,

     this.isSecret,

     this.key,

     this.position,

     this.value,
  });

  @JsonKey(
    
    name: r'enabled',
    required: false,
    includeIfNull: false
  )


  final bool? enabled;



  @JsonKey(
    
    name: r'isSecret',
    required: false,
    includeIfNull: false
  )


  final bool? isSecret;



  @JsonKey(
    
    name: r'key',
    required: false,
    includeIfNull: false
  )


  final String? key;



          // minimum: 0
          // maximum: 100000
  @JsonKey(
    
    name: r'position',
    required: false,
    includeIfNull: false
  )


  final int? position;



  @JsonKey(
    
    name: r'value',
    required: false,
    includeIfNull: false
  )


  final String? value;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest &&
      other.enabled == enabled &&
      other.isSecret == isSecret &&
      other.key == key &&
      other.position == position &&
      other.value == value;

    @override
    int get hashCode =>
        enabled.hashCode +
        isSecret.hashCode +
        key.hashCode +
        position.hashCode +
        value.hashCode;

  factory PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest.fromJson(Map<String, dynamic> json) => _$PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

