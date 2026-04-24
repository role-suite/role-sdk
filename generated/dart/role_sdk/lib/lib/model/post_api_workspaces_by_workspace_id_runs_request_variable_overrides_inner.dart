//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_runs_request_variable_overrides_inner.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner] instance.
  PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner({

    required  this.key,

    required  this.value,
  });

  @JsonKey(
    
    name: r'key',
    required: true,
    includeIfNull: false
  )


  final String key;



  @JsonKey(
    
    name: r'value',
    required: true,
    includeIfNull: false
  )


  final String value;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner &&
      other.key == key &&
      other.value == value;

    @override
    int get hashCode =>
        key.hashCode +
        value.hashCode;

  factory PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInnerFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

