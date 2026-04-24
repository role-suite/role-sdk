//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_auth.dart';
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_folder_id.dart';
import 'package:built_collection/built_collection.dart';
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_body.dart';
import 'package:role_sdk/lib/model/post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_body_any_of1_entries_inner.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patch_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_by_endpoint_id_request.g.dart';

/// PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequest
///
/// Properties:
/// * [auth] 
/// * [body] 
/// * [folderId] 
/// * [headers] 
/// * [method] 
/// * [name] 
/// * [position] 
/// * [queryParams] 
/// * [url] 
@BuiltValue()
abstract class PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequest implements Built<PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequest, PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestBuilder> {
  @BuiltValueField(wireName: r'auth')
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuth? get auth;

  @BuiltValueField(wireName: r'body')
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBody? get body;

  @BuiltValueField(wireName: r'folderId')
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId? get folderId;

  @BuiltValueField(wireName: r'headers')
  BuiltList<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1EntriesInner>? get headers;

  @BuiltValueField(wireName: r'method')
  PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestMethodEnum? get method;
  // enum methodEnum {  GET,  POST,  PUT,  PATCH,  DELETE,  HEAD,  OPTIONS,  };

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'position')
  int? get position;

  @BuiltValueField(wireName: r'queryParams')
  BuiltList<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1EntriesInner>? get queryParams;

  @BuiltValueField(wireName: r'url')
  String? get url;

  PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequest._();

  factory PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequest([void updates(PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestBuilder b)]) = _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequest> get serializer => _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestSerializer();
}

class _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestSerializer implements PrimitiveSerializer<PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequest> {
  @override
  final Iterable<Type> types = const [PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequest, _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequest];

  @override
  final String wireName = r'PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.auth != null) {
      yield r'auth';
      yield serializers.serialize(
        object.auth,
        specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuth),
      );
    }
    if (object.body != null) {
      yield r'body';
      yield serializers.serialize(
        object.body,
        specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBody),
      );
    }
    if (object.folderId != null) {
      yield r'folderId';
      yield serializers.serialize(
        object.folderId,
        specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId),
      );
    }
    if (object.headers != null) {
      yield r'headers';
      yield serializers.serialize(
        object.headers,
        specifiedType: const FullType(BuiltList, [FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1EntriesInner)]),
      );
    }
    if (object.method != null) {
      yield r'method';
      yield serializers.serialize(
        object.method,
        specifiedType: const FullType(PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestMethodEnum),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.position != null) {
      yield r'position';
      yield serializers.serialize(
        object.position,
        specifiedType: const FullType(int),
      );
    }
    if (object.queryParams != null) {
      yield r'queryParams';
      yield serializers.serialize(
        object.queryParams,
        specifiedType: const FullType(BuiltList, [FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1EntriesInner)]),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'auth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuth),
          ) as PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestAuth;
          result.auth.replace(valueDes);
          break;
        case r'body':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBody),
          ) as PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBody;
          result.body.replace(valueDes);
          break;
        case r'folderId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId),
          ) as PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId;
          result.folderId.replace(valueDes);
          break;
        case r'headers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1EntriesInner)]),
          ) as BuiltList<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1EntriesInner>;
          result.headers.replace(valueDes);
          break;
        case r'method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestMethodEnum),
          ) as PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestMethodEnum;
          result.method = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'position':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.position = valueDes;
          break;
        case r'queryParams':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1EntriesInner)]),
          ) as BuiltList<PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1EntriesInner>;
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
  PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestBuilder();
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

class PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestMethodEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'GET')
  static const PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestMethodEnum GET = _$patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestMethodEnum_GET;
  @BuiltValueEnumConst(wireName: r'POST')
  static const PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestMethodEnum POST = _$patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestMethodEnum_POST;
  @BuiltValueEnumConst(wireName: r'PUT')
  static const PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestMethodEnum PUT = _$patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestMethodEnum_PUT;
  @BuiltValueEnumConst(wireName: r'PATCH')
  static const PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestMethodEnum PATCH = _$patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestMethodEnum_PATCH;
  @BuiltValueEnumConst(wireName: r'DELETE')
  static const PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestMethodEnum DELETE = _$patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestMethodEnum_DELETE;
  @BuiltValueEnumConst(wireName: r'HEAD')
  static const PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestMethodEnum HEAD = _$patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestMethodEnum_HEAD;
  @BuiltValueEnumConst(wireName: r'OPTIONS')
  static const PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestMethodEnum OPTIONS = _$patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestMethodEnum_OPTIONS;

  static Serializer<PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestMethodEnum> get serializer => _$patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestMethodEnumSerializer;

  const PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestMethodEnum._(String name): super(name);

  static BuiltSet<PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestMethodEnum> get values => _$patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestMethodEnumValues;
  static PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestMethodEnum valueOf(String name) => _$patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequestMethodEnumValueOf(name);
}

