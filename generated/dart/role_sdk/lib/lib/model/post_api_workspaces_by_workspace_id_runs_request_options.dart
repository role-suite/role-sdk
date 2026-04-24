//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_runs_request_options.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdRunsRequestOptions {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdRunsRequestOptions] instance.
  PostApiWorkspacesByWorkspaceIdRunsRequestOptions({

     this.followRedirects,

     this.maxResponseBytes,

     this.timeoutMs,
  });

  @JsonKey(
    
    name: r'followRedirects',
    required: false,
    includeIfNull: false
  )


  final bool? followRedirects;



          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'maxResponseBytes',
    required: false,
    includeIfNull: false
  )


  final int? maxResponseBytes;



          // maximum: 60000
  @JsonKey(
    
    name: r'timeoutMs',
    required: false,
    includeIfNull: false
  )


  final int? timeoutMs;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdRunsRequestOptions &&
      other.followRedirects == followRedirects &&
      other.maxResponseBytes == maxResponseBytes &&
      other.timeoutMs == timeoutMs;

    @override
    int get hashCode =>
        followRedirects.hashCode +
        maxResponseBytes.hashCode +
        timeoutMs.hashCode;

  factory PostApiWorkspacesByWorkspaceIdRunsRequestOptions.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdRunsRequestOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdRunsRequestOptionsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

