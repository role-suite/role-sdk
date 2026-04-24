//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_environments200_response_data_items_inner.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_environments201_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdEnvironments201Response {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdEnvironments201Response] instance.
  PostApiWorkspacesByWorkspaceIdEnvironments201Response({

    required  this.data,

    required  this.success,
  });

  @JsonKey(
    
    name: r'data',
    required: true,
    includeIfNull: false
  )


  final GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner data;



  @JsonKey(
    
    name: r'success',
    required: true,
    includeIfNull: false
  )


  final bool success;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdEnvironments201Response &&
      other.data == data &&
      other.success == success;

    @override
    int get hashCode =>
        data.hashCode +
        success.hashCode;

  factory PostApiWorkspacesByWorkspaceIdEnvironments201Response.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdEnvironments201ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdEnvironments201ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

