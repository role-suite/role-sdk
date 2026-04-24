//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_auth_login400_response_error.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_api_auth_login400_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiAuthLogin400Response {
  /// Returns a new [PostApiAuthLogin400Response] instance.
  PostApiAuthLogin400Response({

    required  this.error,

    required  this.success,
  });

  @JsonKey(
    
    name: r'error',
    required: true,
    includeIfNull: false
  )


  final PostApiAuthLogin400ResponseError error;



  @JsonKey(
    
    name: r'success',
    required: true,
    includeIfNull: false
  )


  final bool success;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiAuthLogin400Response &&
      other.error == error &&
      other.success == success;

    @override
    int get hashCode =>
        error.hashCode +
        success.hashCode;

  factory PostApiAuthLogin400Response.fromJson(Map<String, dynamic> json) => _$PostApiAuthLogin400ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiAuthLogin400ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

