//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'post_api_auth_logout200_response_data.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiAuthLogout200ResponseData {
  /// Returns a new [PostApiAuthLogout200ResponseData] instance.
  PostApiAuthLogout200ResponseData({

    required  this.action,
  });

  @JsonKey(
    
    name: r'action',
    required: true,
    includeIfNull: false
  )


  final String action;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiAuthLogout200ResponseData &&
      other.action == action;

    @override
    int get hashCode =>
        action.hashCode;

  factory PostApiAuthLogout200ResponseData.fromJson(Map<String, dynamic> json) => _$PostApiAuthLogout200ResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiAuthLogout200ResponseDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

