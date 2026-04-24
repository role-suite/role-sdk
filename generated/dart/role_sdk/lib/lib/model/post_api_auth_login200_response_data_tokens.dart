//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'post_api_auth_login200_response_data_tokens.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostApiAuthLogin200ResponseDataTokens {
  /// Returns a new [PostApiAuthLogin200ResponseDataTokens] instance.
  PostApiAuthLogin200ResponseDataTokens({

    required  this.accessToken,

    required  this.accessTokenTtlSeconds,

    required  this.refreshToken,

    required  this.refreshTokenTtlSeconds,
  });

  @JsonKey(
    
    name: r'accessToken',
    required: true,
    includeIfNull: false
  )


  final String accessToken;



          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'accessTokenTtlSeconds',
    required: true,
    includeIfNull: false
  )


  final int accessTokenTtlSeconds;



  @JsonKey(
    
    name: r'refreshToken',
    required: true,
    includeIfNull: false
  )


  final String refreshToken;



          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'refreshTokenTtlSeconds',
    required: true,
    includeIfNull: false
  )


  final int refreshTokenTtlSeconds;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostApiAuthLogin200ResponseDataTokens &&
      other.accessToken == accessToken &&
      other.accessTokenTtlSeconds == accessTokenTtlSeconds &&
      other.refreshToken == refreshToken &&
      other.refreshTokenTtlSeconds == refreshTokenTtlSeconds;

    @override
    int get hashCode =>
        accessToken.hashCode +
        accessTokenTtlSeconds.hashCode +
        refreshToken.hashCode +
        refreshTokenTtlSeconds.hashCode;

  factory PostApiAuthLogin200ResponseDataTokens.fromJson(Map<String, dynamic> json) => _$PostApiAuthLogin200ResponseDataTokensFromJson(json);

  Map<String, dynamic> toJson() => _$PostApiAuthLogin200ResponseDataTokensToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

