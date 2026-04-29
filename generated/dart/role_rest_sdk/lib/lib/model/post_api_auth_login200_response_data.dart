//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:role_rest_sdk/lib/model/post_api_auth_login200_response_data_tokens.dart';
import 'package:role_rest_sdk/lib/model/post_api_auth_login200_response_data_user.dart';
import 'package:role_rest_sdk/lib/model/post_api_auth_login200_response_data_memberships_inner.dart';
import 'package:role_rest_sdk/lib/model/post_api_auth_login200_response_data_workspace.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_auth_login200_response_data.g.dart';

/// PostApiAuthLogin200ResponseData
///
/// Properties:
/// * [memberships] 
/// * [tokens] 
/// * [user] 
/// * [workspace] 
@BuiltValue()
abstract class PostApiAuthLogin200ResponseData implements Built<PostApiAuthLogin200ResponseData, PostApiAuthLogin200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'memberships')
  BuiltList<PostApiAuthLogin200ResponseDataMembershipsInner> get memberships;

  @BuiltValueField(wireName: r'tokens')
  PostApiAuthLogin200ResponseDataTokens get tokens;

  @BuiltValueField(wireName: r'user')
  PostApiAuthLogin200ResponseDataUser get user;

  @BuiltValueField(wireName: r'workspace')
  PostApiAuthLogin200ResponseDataWorkspace get workspace;

  PostApiAuthLogin200ResponseData._();

  factory PostApiAuthLogin200ResponseData([void updates(PostApiAuthLogin200ResponseDataBuilder b)]) = _$PostApiAuthLogin200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiAuthLogin200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiAuthLogin200ResponseData> get serializer => _$PostApiAuthLogin200ResponseDataSerializer();
}

class _$PostApiAuthLogin200ResponseDataSerializer implements PrimitiveSerializer<PostApiAuthLogin200ResponseData> {
  @override
  final Iterable<Type> types = const [PostApiAuthLogin200ResponseData, _$PostApiAuthLogin200ResponseData];

  @override
  final String wireName = r'PostApiAuthLogin200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiAuthLogin200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'memberships';
    yield serializers.serialize(
      object.memberships,
      specifiedType: const FullType(BuiltList, [FullType(PostApiAuthLogin200ResponseDataMembershipsInner)]),
    );
    yield r'tokens';
    yield serializers.serialize(
      object.tokens,
      specifiedType: const FullType(PostApiAuthLogin200ResponseDataTokens),
    );
    yield r'user';
    yield serializers.serialize(
      object.user,
      specifiedType: const FullType(PostApiAuthLogin200ResponseDataUser),
    );
    yield r'workspace';
    yield serializers.serialize(
      object.workspace,
      specifiedType: const FullType(PostApiAuthLogin200ResponseDataWorkspace),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiAuthLogin200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiAuthLogin200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'memberships':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PostApiAuthLogin200ResponseDataMembershipsInner)]),
          ) as BuiltList<PostApiAuthLogin200ResponseDataMembershipsInner>;
          result.memberships.replace(valueDes);
          break;
        case r'tokens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiAuthLogin200ResponseDataTokens),
          ) as PostApiAuthLogin200ResponseDataTokens;
          result.tokens = valueDes;
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiAuthLogin200ResponseDataUser),
          ) as PostApiAuthLogin200ResponseDataUser;
          result.user = valueDes;
          break;
        case r'workspace':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiAuthLogin200ResponseDataWorkspace),
          ) as PostApiAuthLogin200ResponseDataWorkspace;
          result.workspace = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostApiAuthLogin200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiAuthLogin200ResponseDataBuilder();
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

