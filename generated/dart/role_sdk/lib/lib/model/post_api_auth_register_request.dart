//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'post_api_auth_register_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiAuthRegisterRequest {
  /// Returns a new [PostApiAuthRegisterRequest] instance.
  PostApiAuthRegisterRequest({

    required  this.accountType,

    required  this.email,

    required  this.name,

    required  this.password,

     this.teamName,
  });

  @JsonKey(
    
    name: r'accountType',
    required: true,
    includeIfNull: false
  )


  final PostApiAuthRegisterRequestAccountTypeEnum accountType;



  @JsonKey(
    
    name: r'email',
    required: true,
    includeIfNull: false
  )


  final String email;



  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



  @JsonKey(
    
    name: r'password',
    required: true,
    includeIfNull: false
  )


  final String password;



  @JsonKey(
    
    name: r'teamName',
    required: false,
    includeIfNull: false
  )


  final String? teamName;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiAuthRegisterRequest &&
      other.accountType == accountType &&
      other.email == email &&
      other.name == name &&
      other.password == password &&
      other.teamName == teamName;

    @override
    int get hashCode =>
        accountType.hashCode +
        email.hashCode +
        name.hashCode +
        password.hashCode +
        teamName.hashCode;

  factory PostApiAuthRegisterRequest.fromJson(Map<String, dynamic> json) => _$PostApiAuthRegisterRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiAuthRegisterRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum PostApiAuthRegisterRequestAccountTypeEnum {
  @JsonValue(r'single')
  single,
  @JsonValue(r'team')
  team,
  @JsonValue(r'unknown_default_open_api')
  unknownDefaultOpenApi,
}


