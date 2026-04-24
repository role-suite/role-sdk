//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_members200_response_data_items_inner.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_members201_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdMembers201Response {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdMembers201Response] instance.
  PostApiWorkspacesByWorkspaceIdMembers201Response({

    required  this.data,

    required  this.success,
  });

  @JsonKey(
    
    name: r'data',
    required: true,
    includeIfNull: false
  )


  final GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner data;



  @JsonKey(
    
    name: r'success',
    required: true,
    includeIfNull: false
  )


  final bool success;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdMembers201Response &&
      other.data == data &&
      other.success == success;

    @override
    int get hashCode =>
        data.hashCode +
        success.hashCode;

  factory PostApiWorkspacesByWorkspaceIdMembers201Response.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdMembers201ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdMembers201ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

