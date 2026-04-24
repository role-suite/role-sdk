//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_auth_login200_response_data_workspace.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces201_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspaces201Response {
  /// Returns a new [PostApiWorkspaces201Response] instance.
  PostApiWorkspaces201Response({

    required  this.data,

    required  this.success,
  });

  @JsonKey(
    
    name: r'data',
    required: true,
    includeIfNull: false
  )


  final PostApiAuthLogin200ResponseDataWorkspace data;



  @JsonKey(
    
    name: r'success',
    required: true,
    includeIfNull: false
  )


  final bool success;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspaces201Response &&
      other.data == data &&
      other.success == success;

    @override
    int get hashCode =>
        data.hashCode +
        success.hashCode;

  factory PostApiWorkspaces201Response.fromJson(Map<String, dynamic> json) => _$PostApiWorkspaces201ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspaces201ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

