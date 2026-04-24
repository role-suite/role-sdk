//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesRequest {
  /// Returns a new [PostApiWorkspacesRequest] instance.
  PostApiWorkspacesRequest({

    required  this.name,
  });

  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesRequest &&
      other.name == name;

    @override
    int get hashCode =>
        name.hashCode;

  factory PostApiWorkspacesRequest.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

