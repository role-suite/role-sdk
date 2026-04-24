//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'post_api_auth_login401_response_error.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiAuthLogin401ResponseError {
  /// Returns a new [PostApiAuthLogin401ResponseError] instance.
  PostApiAuthLogin401ResponseError({

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


  final Map<String, Object> details;



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
    bool operator ==(Object other) => identical(this, other) || other is PostApiAuthLogin401ResponseError &&
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

  factory PostApiAuthLogin401ResponseError.fromJson(Map<String, dynamic> json) => _$PostApiAuthLogin401ResponseErrorFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiAuthLogin401ResponseErrorToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

