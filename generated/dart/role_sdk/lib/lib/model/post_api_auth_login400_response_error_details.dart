//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'post_api_auth_login400_response_error_details.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiAuthLogin400ResponseErrorDetails {
  /// Returns a new [PostApiAuthLogin400ResponseErrorDetails] instance.
  PostApiAuthLogin400ResponseErrorDetails({

    required  this.fieldErrors,
  });

  @JsonKey(
    
    name: r'fieldErrors',
    required: true,
    includeIfNull: false
  )


  final Map<String, List<String>> fieldErrors;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiAuthLogin400ResponseErrorDetails &&
      other.fieldErrors == fieldErrors;

    @override
    int get hashCode =>
        fieldErrors.hashCode;

  factory PostApiAuthLogin400ResponseErrorDetails.fromJson(Map<String, dynamic> json) => _$PostApiAuthLogin400ResponseErrorDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiAuthLogin400ResponseErrorDetailsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

