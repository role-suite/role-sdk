//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_runs_request_source_one_of_request_body_any_of_any_of_entries_inner.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInner {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInner] instance.
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInner({

     this.enabled,

    required  this.key,

    required  this.value,
  });

  @JsonKey(
    
    name: r'enabled',
    required: false,
    includeIfNull: false
  )


  final bool? enabled;



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
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInner &&
      other.enabled == enabled &&
      other.key == key &&
      other.value == value;

    @override
    int get hashCode =>
        enabled.hashCode +
        key.hashCode +
        value.hashCode;

  factory PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInner.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInnerFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

