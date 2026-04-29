//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_auth_register_request.g.dart';

/// PostApiAuthRegisterRequest
///
/// Properties:
/// * [accountType] 
/// * [email] 
/// * [name] 
/// * [password] 
/// * [teamName] 
@BuiltValue()
abstract class PostApiAuthRegisterRequest implements Built<PostApiAuthRegisterRequest, PostApiAuthRegisterRequestBuilder> {
  @BuiltValueField(wireName: r'accountType')
  PostApiAuthRegisterRequestAccountTypeEnum get accountType;
  // enum accountTypeEnum {  single,  team,  };

  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'password')
  String get password;

  @BuiltValueField(wireName: r'teamName')
  String? get teamName;

  PostApiAuthRegisterRequest._();

  factory PostApiAuthRegisterRequest([void updates(PostApiAuthRegisterRequestBuilder b)]) = _$PostApiAuthRegisterRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiAuthRegisterRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiAuthRegisterRequest> get serializer => _$PostApiAuthRegisterRequestSerializer();
}

class _$PostApiAuthRegisterRequestSerializer implements PrimitiveSerializer<PostApiAuthRegisterRequest> {
  @override
  final Iterable<Type> types = const [PostApiAuthRegisterRequest, _$PostApiAuthRegisterRequest];

  @override
  final String wireName = r'PostApiAuthRegisterRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiAuthRegisterRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'accountType';
    yield serializers.serialize(
      object.accountType,
      specifiedType: const FullType(PostApiAuthRegisterRequestAccountTypeEnum),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
    if (object.teamName != null) {
      yield r'teamName';
      yield serializers.serialize(
        object.teamName,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiAuthRegisterRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiAuthRegisterRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accountType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiAuthRegisterRequestAccountTypeEnum),
          ) as PostApiAuthRegisterRequestAccountTypeEnum;
          result.accountType = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'teamName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.teamName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostApiAuthRegisterRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiAuthRegisterRequestBuilder();
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

class PostApiAuthRegisterRequestAccountTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'single')
  static const PostApiAuthRegisterRequestAccountTypeEnum single = _$postApiAuthRegisterRequestAccountTypeEnum_single;
  @BuiltValueEnumConst(wireName: r'team')
  static const PostApiAuthRegisterRequestAccountTypeEnum team = _$postApiAuthRegisterRequestAccountTypeEnum_team;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PostApiAuthRegisterRequestAccountTypeEnum unknownDefaultOpenApi = _$postApiAuthRegisterRequestAccountTypeEnum_unknownDefaultOpenApi;

  static Serializer<PostApiAuthRegisterRequestAccountTypeEnum> get serializer => _$postApiAuthRegisterRequestAccountTypeEnumSerializer;

  const PostApiAuthRegisterRequestAccountTypeEnum._(String name): super(name);

  static BuiltSet<PostApiAuthRegisterRequestAccountTypeEnum> get values => _$postApiAuthRegisterRequestAccountTypeEnumValues;
  static PostApiAuthRegisterRequestAccountTypeEnum valueOf(String name) => _$postApiAuthRegisterRequestAccountTypeEnumValueOf(name);
}

