//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_auth_login200_response_data_tokens.g.dart';

/// PostApiAuthLogin200ResponseDataTokens
///
/// Properties:
/// * [accessToken] 
/// * [accessTokenTtlSeconds] 
/// * [refreshToken] 
/// * [refreshTokenTtlSeconds] 
@BuiltValue()
abstract class PostApiAuthLogin200ResponseDataTokens implements Built<PostApiAuthLogin200ResponseDataTokens, PostApiAuthLogin200ResponseDataTokensBuilder> {
  @BuiltValueField(wireName: r'accessToken')
  String get accessToken;

  @BuiltValueField(wireName: r'accessTokenTtlSeconds')
  int get accessTokenTtlSeconds;

  @BuiltValueField(wireName: r'refreshToken')
  String get refreshToken;

  @BuiltValueField(wireName: r'refreshTokenTtlSeconds')
  int get refreshTokenTtlSeconds;

  PostApiAuthLogin200ResponseDataTokens._();

  factory PostApiAuthLogin200ResponseDataTokens([void updates(PostApiAuthLogin200ResponseDataTokensBuilder b)]) = _$PostApiAuthLogin200ResponseDataTokens;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiAuthLogin200ResponseDataTokensBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiAuthLogin200ResponseDataTokens> get serializer => _$PostApiAuthLogin200ResponseDataTokensSerializer();
}

class _$PostApiAuthLogin200ResponseDataTokensSerializer implements PrimitiveSerializer<PostApiAuthLogin200ResponseDataTokens> {
  @override
  final Iterable<Type> types = const [PostApiAuthLogin200ResponseDataTokens, _$PostApiAuthLogin200ResponseDataTokens];

  @override
  final String wireName = r'PostApiAuthLogin200ResponseDataTokens';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiAuthLogin200ResponseDataTokens object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'accessToken';
    yield serializers.serialize(
      object.accessToken,
      specifiedType: const FullType(String),
    );
    yield r'accessTokenTtlSeconds';
    yield serializers.serialize(
      object.accessTokenTtlSeconds,
      specifiedType: const FullType(int),
    );
    yield r'refreshToken';
    yield serializers.serialize(
      object.refreshToken,
      specifiedType: const FullType(String),
    );
    yield r'refreshTokenTtlSeconds';
    yield serializers.serialize(
      object.refreshTokenTtlSeconds,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiAuthLogin200ResponseDataTokens object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiAuthLogin200ResponseDataTokensBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accessToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accessToken = valueDes;
          break;
        case r'accessTokenTtlSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.accessTokenTtlSeconds = valueDes;
          break;
        case r'refreshToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.refreshToken = valueDes;
          break;
        case r'refreshTokenTtlSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.refreshTokenTtlSeconds = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostApiAuthLogin200ResponseDataTokens deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiAuthLogin200ResponseDataTokensBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

