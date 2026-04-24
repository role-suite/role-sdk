//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'post_api_auth_login_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiAuthLoginRequest {
  /// Returns a new [PostApiAuthLoginRequest] instance.
  PostApiAuthLoginRequest({

    required  this.email,

    required  this.password,
  });

  @JsonKey(
    
    name: r'email',
    required: true,
    includeIfNull: false
  )


  final String email;



  @JsonKey(
    
    name: r'password',
    required: true,
    includeIfNull: false
  )


  final String password;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiAuthLoginRequest &&
      other.email == email &&
      other.password == password;

    @override
    int get hashCode =>
        email.hashCode +
        password.hashCode;

  factory PostApiAuthLoginRequest.fromJson(Map<String, dynamic> json) => _$PostApiAuthLoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiAuthLoginRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

