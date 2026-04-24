//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_auth_login200_response_data_user.g.dart';

/// PostApiAuthLogin200ResponseDataUser
///
/// Properties:
/// * [email] 
/// * [id] 
/// * [name] 
@BuiltValue()
abstract class PostApiAuthLogin200ResponseDataUser implements Built<PostApiAuthLogin200ResponseDataUser, PostApiAuthLogin200ResponseDataUserBuilder> {
  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  PostApiAuthLogin200ResponseDataUser._();

  factory PostApiAuthLogin200ResponseDataUser([void updates(PostApiAuthLogin200ResponseDataUserBuilder b)]) = _$PostApiAuthLogin200ResponseDataUser;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiAuthLogin200ResponseDataUserBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiAuthLogin200ResponseDataUser> get serializer => _$PostApiAuthLogin200ResponseDataUserSerializer();
}

class _$PostApiAuthLogin200ResponseDataUserSerializer implements PrimitiveSerializer<PostApiAuthLogin200ResponseDataUser> {
  @override
  final Iterable<Type> types = const [PostApiAuthLogin200ResponseDataUser, _$PostApiAuthLogin200ResponseDataUser];

  @override
  final String wireName = r'PostApiAuthLogin200ResponseDataUser';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiAuthLogin200ResponseDataUser object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiAuthLogin200ResponseDataUser object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiAuthLogin200ResponseDataUserBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostApiAuthLogin200ResponseDataUser deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiAuthLogin200ResponseDataUserBuilder();
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

