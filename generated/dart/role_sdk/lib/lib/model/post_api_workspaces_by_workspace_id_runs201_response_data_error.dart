//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs201_response_data_error_any_of.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_runs201_response_data_error.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError] instance.
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError({

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


  final Object? details;



  @JsonKey(
    
    name: r'message',
    required: true,
    includeIfNull: false
  )


  final String message;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError &&
      other.code == code &&
      other.details == details &&
      other.message == message;

    @override
    int get hashCode =>
        code.hashCode +
        details.hashCode +
        message.hashCode;

  factory PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

