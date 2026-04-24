//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_runs201_response_data_request_body_any_of.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf] instance.
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf({

    required  this.entries,

    required  this.mode,
  });

  @JsonKey(
    
    name: r'entries',
    required: true,
    includeIfNull: false
  )


  final List<Map<String, Object>> entries;



  @JsonKey(
    
    name: r'mode',
    required: true,
    includeIfNull: false
  )


  final String mode;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf &&
      other.entries == entries &&
      other.mode == mode;

    @override
    int get hashCode =>
        entries.hashCode +
        mode.hashCode;

  factory PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOf.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOfFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBodyAnyOfToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

