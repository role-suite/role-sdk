//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs_request_source_one_of_request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_runs_request_source_one_of.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf] instance.
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf({

    required  this.request,

    required  this.type,
  });

  @JsonKey(
    
    name: r'request',
    required: true,
    includeIfNull: false
  )


  final PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest request;



  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final String type;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf &&
      other.request == request &&
      other.type == type;

    @override
    int get hashCode =>
        request.hashCode +
        type.hashCode;

  factory PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOf.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

