//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs_request_source.dart';
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs_request_options.dart';
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs_request_variable_overrides_inner.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_runs_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdRunsRequest {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdRunsRequest] instance.
  PostApiWorkspacesByWorkspaceIdRunsRequest({

     this.environmentId,

     this.options,

    required  this.source_,

     this.variableOverrides,
  });

          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'environmentId',
    required: false,
    includeIfNull: false
  )


  final int? environmentId;



  @JsonKey(
    
    name: r'options',
    required: false,
    includeIfNull: false
  )


  final PostApiWorkspacesByWorkspaceIdRunsRequestOptions? options;



  @JsonKey(
    
    name: r'source',
    required: true,
    includeIfNull: false
  )


  final PostApiWorkspacesByWorkspaceIdRunsRequestSource source_;



  @JsonKey(
    
    name: r'variableOverrides',
    required: false,
    includeIfNull: false
  )


  final List<PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner>? variableOverrides;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdRunsRequest &&
      other.environmentId == environmentId &&
      other.options == options &&
      other.source_ == source_ &&
      other.variableOverrides == variableOverrides;

    @override
    int get hashCode =>
        environmentId.hashCode +
        options.hashCode +
        source_.hashCode +
        variableOverrides.hashCode;

  factory PostApiWorkspacesByWorkspaceIdRunsRequest.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdRunsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdRunsRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

