//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'post_api_auth_logout_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiAuthLogoutRequest {
  /// Returns a new [PostApiAuthLogoutRequest] instance.
  PostApiAuthLogoutRequest({

    required  this.refreshToken,
  });

  @JsonKey(
    
    name: r'refreshToken',
    required: true,
    includeIfNull: false
  )


  final String refreshToken;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiAuthLogoutRequest &&
      other.refreshToken == refreshToken;

    @override
    int get hashCode =>
        refreshToken.hashCode;

  factory PostApiAuthLogoutRequest.fromJson(Map<String, dynamic> json) => _$PostApiAuthLogoutRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiAuthLogoutRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

