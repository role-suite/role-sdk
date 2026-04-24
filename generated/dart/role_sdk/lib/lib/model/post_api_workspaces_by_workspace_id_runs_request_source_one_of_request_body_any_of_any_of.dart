//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs_request_source_one_of_request_body_any_of_any_of_entries_inner.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_runs_request_source_one_of_request_body_any_of_any_of.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOf {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOf] instance.
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOf({

    required  this.entries,

    required  this.mode,
  });

  @JsonKey(
    
    name: r'entries',
    required: true,
    includeIfNull: false
  )


  final List<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInner> entries;



  @JsonKey(
    
    name: r'mode',
    required: true,
    includeIfNull: false
  )


  final String mode;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOf &&
      other.entries == entries &&
      other.mode == mode;

    @override
    int get hashCode =>
        entries.hashCode +
        mode.hashCode;

  factory PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOf.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

