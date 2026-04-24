//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'post_api_workspaces_join_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiWorkspacesJoinRequest {
  /// Returns a new [PostApiWorkspacesJoinRequest] instance.
  PostApiWorkspacesJoinRequest({

    required  this.token,
  });

  @JsonKey(
    
    name: r'token',
    required: true,
    includeIfNull: false
  )


  final String token;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiWorkspacesJoinRequest &&
      other.token == token;

    @override
    int get hashCode =>
        token.hashCode;

  factory PostApiWorkspacesJoinRequest.fromJson(Map<String, dynamic> json) => _$PostApiWorkspacesJoinRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiWorkspacesJoinRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

