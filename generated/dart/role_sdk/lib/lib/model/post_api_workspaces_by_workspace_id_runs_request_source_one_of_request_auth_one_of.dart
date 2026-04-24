//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_runs_request_source_one_of_request_auth_one_of.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf] instance.
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf({

    required  this.token,

    required  this.type,
  });

  @JsonKey(
    
    name: r'token',
    required: true,
    includeIfNull: false
  )


  final String token;



  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final String type;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf &&
      other.token == token &&
      other.type == type;

    @override
    int get hashCode =>
        token.hashCode +
        type.hashCode;

  factory PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOf.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOfFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuthOneOfToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

