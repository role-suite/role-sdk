//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'post_api_auth_login200_response_data_user.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiAuthLogin200ResponseDataUser {
  /// Returns a new [PostApiAuthLogin200ResponseDataUser] instance.
  PostApiAuthLogin200ResponseDataUser({

    required  this.email,

    required  this.id,

    required  this.name,
  });

  @JsonKey(
    
    name: r'email',
    required: true,
    includeIfNull: false
  )


  final String email;



          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false
  )


  final int id;



  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiAuthLogin200ResponseDataUser &&
      other.email == email &&
      other.id == id &&
      other.name == name;

    @override
    int get hashCode =>
        email.hashCode +
        id.hashCode +
        name.hashCode;

  factory PostApiAuthLogin200ResponseDataUser.fromJson(Map<String, dynamic> json) => _$PostApiAuthLogin200ResponseDataUserFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiAuthLogin200ResponseDataUserToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

