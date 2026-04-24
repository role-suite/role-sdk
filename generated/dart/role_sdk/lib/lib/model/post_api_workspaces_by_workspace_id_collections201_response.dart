//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_collections200_response_data_items_inner.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_by_workspace_id_collections201_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesByWorkspaceIdCollections201Response {
  /// Returns a new [PostApiWorkspacesByWorkspaceIdCollections201Response] instance.
  PostApiWorkspacesByWorkspaceIdCollections201Response({

    required  this.data,

    required  this.success,
  });

  @JsonKey(
    
    name: r'data',
    required: true,
    includeIfNull: false
  )


  final GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner data;



  @JsonKey(
    
    name: r'success',
    required: true,
    includeIfNull: false
  )


  final bool success;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesByWorkspaceIdCollections201Response &&
      other.data == data &&
      other.success == success;

    @override
    int get hashCode =>
        data.hashCode +
        success.hashCode;

  factory PostApiWorkspacesByWorkspaceIdCollections201Response.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesByWorkspaceIdCollections201ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesByWorkspaceIdCollections201ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

