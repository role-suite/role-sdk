//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs_request_source_one_of_request_body_any_of_any_of_entries_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs_request_source_one_of_request_auth.dart';
import 'package:built_value/json_object.dart';
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs_request_source_one_of_request_body.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_workspaces_by_workspace_id_runs_request_source_one_of_request.g.dart';

/// PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest
///
/// Properties:
/// * [auth] 
/// * [body] 
/// * [headers] 
/// * [method] 
/// * [queryParams] 
/// * [url] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest implements Built<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest, PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBuilder> {
  @BuiltValueField(wireName: r'auth')
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth? get auth;

  @BuiltValueField(wireName: r'body')
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody? get body;

  @BuiltValueField(wireName: r'headers')
  BuiltList<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInner>? get headers;

  @BuiltValueField(wireName: r'method')
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum get method;
  // enum methodEnum {  GET,  POST,  PUT,  PATCH,  DELETE,  HEAD,  OPTIONS,  };

  @BuiltValueField(wireName: r'queryParams')
  BuiltList<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInner>? get queryParams;

  @BuiltValueField(wireName: r'url')
  String get url;

  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest._();

  factory PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest([void updates(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest> get serializer => _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest, _$PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.auth != null) {
      yield r'auth';
      yield serializers.serialize(
        object.auth,
        specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth),
      );
    }
    if (object.body != null) {
      yield r'body';
      yield serializers.serialize(
        object.body,
        specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody),
      );
    }
    if (object.headers != null) {
      yield r'headers';
      yield serializers.serialize(
        object.headers,
        specifiedType: const FullType(BuiltList, [FullType(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInner)]),
      );
    }
    yield r'method';
    yield serializers.serialize(
      object.method,
      specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum),
    );
    if (object.queryParams != null) {
      yield r'queryParams';
      yield serializers.serialize(
        object.queryParams,
        specifiedType: const FullType(BuiltList, [FullType(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInner)]),
      );
    }
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'auth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth),
          ) as PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestAuth;
          result.auth.replace(valueDes);
          break;
        case r'body':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody),
          ) as PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBody;
          result.body.replace(valueDes);
          break;
        case r'headers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInner)]),
          ) as BuiltList<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInner>;
          result.headers.replace(valueDes);
          break;
        case r'method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum),
          ) as PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum;
          result.method = valueDes;
          break;
        case r'queryParams':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInner)]),
          ) as BuiltList<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBodyAnyOfAnyOfEntriesInner>;
          result.queryParams.replace(valueDes);
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestBuilder();
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

class PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'GET')
  static const PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum GET = _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum_GET;
  @BuiltValueEnumConst(wireName: r'POST')
  static const PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum POST = _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum_POST;
  @BuiltValueEnumConst(wireName: r'PUT')
  static const PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum PUT = _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum_PUT;
  @BuiltValueEnumConst(wireName: r'PATCH')
  static const PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum PATCH = _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum_PATCH;
  @BuiltValueEnumConst(wireName: r'DELETE')
  static const PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum DELETE = _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum_DELETE;
  @BuiltValueEnumConst(wireName: r'HEAD')
  static const PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum HEAD = _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum_HEAD;
  @BuiltValueEnumConst(wireName: r'OPTIONS')
  static const PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum OPTIONS = _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum_OPTIONS;

  static Serializer<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum> get serializer => _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnumSerializer;

  const PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum._(String name): super(name);

  static BuiltSet<PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum> get values => _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnumValues;
  static PostApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnum valueOf(String name) => _$postApiWorkspacesByWorkspaceIdRunsRequestSourceOneOfRequestMethodEnumValueOf(name);
}

