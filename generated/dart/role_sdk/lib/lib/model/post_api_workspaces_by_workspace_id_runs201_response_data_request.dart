//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_body_any_of_any_of1_entries_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:role_sdk/lib/model/get_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints200_response_data_items_inner_auth_any_of.dart';
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_runs201_response_data_request_body.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_workspaces_by_workspace_id_runs201_response_data_request.g.dart';

/// PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest
///
/// Properties:
/// * [auth] 
/// * [body] 
/// * [headers] 
/// * [method] 
/// * [queryParams] 
/// * [resolvedVariables] 
/// * [timeoutMs] 
/// * [url] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest implements Built<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest, PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBuilder> {
  @BuiltValueField(wireName: r'auth')
  GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOf get auth;

  @BuiltValueField(wireName: r'body')
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBody get body;

  @BuiltValueField(wireName: r'headers')
  BuiltList<GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner> get headers;

  @BuiltValueField(wireName: r'method')
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum get method;
  // enum methodEnum {  GET,  POST,  PUT,  PATCH,  DELETE,  HEAD,  OPTIONS,  };

  @BuiltValueField(wireName: r'queryParams')
  BuiltList<GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner> get queryParams;

  @BuiltValueField(wireName: r'resolvedVariables')
  BuiltMap<String, String> get resolvedVariables;

  @BuiltValueField(wireName: r'timeoutMs')
  int get timeoutMs;

  @BuiltValueField(wireName: r'url')
  String get url;

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest._();

  factory PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest([void updates(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest> get serializer => _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest, _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'auth';
    yield serializers.serialize(
      object.auth,
      specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOf),
    );
    yield r'body';
    yield serializers.serialize(
      object.body,
      specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBody),
    );
    yield r'headers';
    yield serializers.serialize(
      object.headers,
      specifiedType: const FullType(BuiltList, [FullType(GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner)]),
    );
    yield r'method';
    yield serializers.serialize(
      object.method,
      specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum),
    );
    yield r'queryParams';
    yield serializers.serialize(
      object.queryParams,
      specifiedType: const FullType(BuiltList, [FullType(GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner)]),
    );
    yield r'resolvedVariables';
    yield serializers.serialize(
      object.resolvedVariables,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
    );
    yield r'timeoutMs';
    yield serializers.serialize(
      object.timeoutMs,
      specifiedType: const FullType(int),
    );
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'auth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOf),
          ) as GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerAuthAnyOf;
          result.auth.replace(valueDes);
          break;
        case r'body':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBody),
          ) as PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBody;
          result.body.replace(valueDes);
          break;
        case r'headers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner)]),
          ) as BuiltList<GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner>;
          result.headers.replace(valueDes);
          break;
        case r'method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum),
          ) as PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum;
          result.method = valueDes;
          break;
        case r'queryParams':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner)]),
          ) as BuiltList<GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200ResponseDataItemsInnerBodyAnyOfAnyOf1EntriesInner>;
          result.queryParams.replace(valueDes);
          break;
        case r'resolvedVariables':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.resolvedVariables.replace(valueDes);
          break;
        case r'timeoutMs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.timeoutMs = valueDes;
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
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBuilder();
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

class PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'GET')
  static const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum GET = _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum_GET;
  @BuiltValueEnumConst(wireName: r'POST')
  static const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum POST = _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum_POST;
  @BuiltValueEnumConst(wireName: r'PUT')
  static const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum PUT = _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum_PUT;
  @BuiltValueEnumConst(wireName: r'PATCH')
  static const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum PATCH = _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum_PATCH;
  @BuiltValueEnumConst(wireName: r'DELETE')
  static const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum DELETE = _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum_DELETE;
  @BuiltValueEnumConst(wireName: r'HEAD')
  static const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum HEAD = _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum_HEAD;
  @BuiltValueEnumConst(wireName: r'OPTIONS')
  static const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum OPTIONS = _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum_OPTIONS;

  static Serializer<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum> get serializer => _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnumSerializer;

  const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum._(String name): super(name);

  static BuiltSet<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum> get values => _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnumValues;
  static PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnum valueOf(String name) => _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestMethodEnumValueOf(name);
}

