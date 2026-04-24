//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_runs201_response_data_error_any_of.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf] instance.
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf({

    required  this.code,

     this.details,

    required  this.message,
  });

  @JsonKey(
    
    name: r'code',
    required: true,
    includeIfNull: false
  )


  final String code;



  @JsonKey(
    
    name: r'details',
    required: false,
    includeIfNull: false
  )


  final Map<String, Object>? details;



  @JsonKey(
    
    name: r'message',
    required: true,
    includeIfNull: false
  )


  final String message;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf &&
      other.code == code &&
      other.details == details &&
      other.message == message;

    @override
    int get hashCode =>
        code.hashCode +
        details.hashCode +
        message.hashCode;

  factory PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOf.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOfFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorAnyOfToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

