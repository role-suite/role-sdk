//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_auth_login400_response_error_details.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_api_auth_login400_response_error.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiAuthLogin400ResponseError {
  /// Returns a new [PostApiAuthLogin400ResponseError] instance.
  PostApiAuthLogin400ResponseError({

    required  this.code,

    required  this.details,

    required  this.message,

    required  this.requestId,
  });

  @JsonKey(
    
    name: r'code',
    required: true,
    includeIfNull: false
  )


  final String code;



  @JsonKey(
    
    name: r'details',
    required: true,
    includeIfNull: false
  )


  final PostApiAuthLogin400ResponseErrorDetails details;



  @JsonKey(
    
    name: r'message',
    required: true,
    includeIfNull: false
  )


  final String message;



  @JsonKey(
    
    name: r'requestId',
    required: true,
    includeIfNull: false
  )


  final String requestId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiAuthLogin400ResponseError &&
      other.code == code &&
      other.details == details &&
      other.message == message &&
      other.requestId == requestId;

    @override
    int get hashCode =>
        code.hashCode +
        details.hashCode +
        message.hashCode +
        requestId.hashCode;

  factory PostApiAuthLogin400ResponseError.fromJson(Map<String, dynamic> json) => _$PostApiAuthLogin400ResponseErrorFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiAuthLogin400ResponseErrorToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

