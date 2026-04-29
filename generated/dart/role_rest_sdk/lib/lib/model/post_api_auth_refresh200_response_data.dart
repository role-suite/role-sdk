//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_rest_sdk/lib/model/get_api_auth_me200_response_data_memberships_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:role_rest_sdk/lib/model/post_api_auth_login200_response_data_tokens.dart';
import 'package:role_rest_sdk/lib/model/post_api_auth_login200_response_data_user.dart';
import 'package:role_rest_sdk/lib/model/post_api_auth_login200_response_data_workspace.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_auth_refresh200_response_data.g.dart';

/// PostApiAuthRefresh200ResponseData
///
/// Properties:
/// * [memberships] 
/// * [tokens] 
/// * [user] 
/// * [workspace] 
@BuiltValue()
abstract class PostApiAuthRefresh200ResponseData implements Built<PostApiAuthRefresh200ResponseData, PostApiAuthRefresh200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'memberships')
  BuiltList<GetApiAuthMe200ResponseDataMembershipsInner> get memberships;

  @BuiltValueField(wireName: r'tokens')
  PostApiAuthLogin200ResponseDataTokens get tokens;

  @BuiltValueField(wireName: r'user')
  PostApiAuthLogin200ResponseDataUser get user;

  @BuiltValueField(wireName: r'workspace')
  PostApiAuthLogin200ResponseDataWorkspace get workspace;

  PostApiAuthRefresh200ResponseData._();

  factory PostApiAuthRefresh200ResponseData([void updates(PostApiAuthRefresh200ResponseDataBuilder b)]) = _$PostApiAuthRefresh200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiAuthRefresh200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiAuthRefresh200ResponseData> get serializer => _$PostApiAuthRefresh200ResponseDataSerializer();
}

class _$PostApiAuthRefresh200ResponseDataSerializer implements PrimitiveSerializer<PostApiAuthRefresh200ResponseData> {
  @override
  final Iterable<Type> types = const [PostApiAuthRefresh200ResponseData, _$PostApiAuthRefresh200ResponseData];

  @override
  final String wireName = r'PostApiAuthRefresh200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiAuthRefresh200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'memberships';
    yield serializers.serialize(
      object.memberships,
      specifiedType: const FullType(BuiltList, [FullType(GetApiAuthMe200ResponseDataMembershipsInner)]),
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
    PostApiAuthRefresh200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiAuthRefresh200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'memberships':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GetApiAuthMe200ResponseDataMembershipsInner)]),
          ) as BuiltList<GetApiAuthMe200ResponseDataMembershipsInner>;
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
  PostApiAuthRefresh200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiAuthRefresh200ResponseDataBuilder();
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

