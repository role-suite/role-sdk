//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:role_rest_sdk/lib/model/post_api_workspaces_by_workspace_id_runs201_response_data_completed_at.dart';
import 'package:role_rest_sdk/lib/model/post_api_workspaces_by_workspace_id_runs201_response_data_error.dart';
import 'package:built_collection/built_collection.dart';
import 'package:role_rest_sdk/lib/model/post_api_workspaces_by_workspace_id_runs201_response_data_response.dart';
import 'package:role_rest_sdk/lib/model/post_api_workspaces_by_workspace_id_runs201_response_data_request.dart';
import 'package:role_rest_sdk/lib/model/post_api_workspaces_by_workspace_id_runs201_response_data_duration_ms.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_api_workspaces_by_workspace_id_runs201_response_data.g.dart';

/// PostApiWorkspacesByWorkspaceIdRuns201ResponseData
///
/// Properties:
/// * [completedAt] 
/// * [durationMs] 
/// * [error] 
/// * [request] 
/// * [response] 
/// * [runId] 
/// * [startedAt] 
/// * [status] 
@BuiltValue()
abstract class PostApiWorkspacesByWorkspaceIdRuns201ResponseData implements Built<PostApiWorkspacesByWorkspaceIdRuns201ResponseData, PostApiWorkspacesByWorkspaceIdRuns201ResponseDataBuilder> {
  @BuiltValueField(wireName: r'completedAt')
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt get completedAt;

  @BuiltValueField(wireName: r'durationMs')
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs get durationMs;

  @BuiltValueField(wireName: r'error')
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError get error;

  @BuiltValueField(wireName: r'request')
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest get request;

  @BuiltValueField(wireName: r'response')
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse get response;

  @BuiltValueField(wireName: r'runId')
  int get runId;

  @BuiltValueField(wireName: r'startedAt')
  String get startedAt;

  @BuiltValueField(wireName: r'status')
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum get status;
  // enum statusEnum {  running,  completed,  failed,  cancelled,  };

  PostApiWorkspacesByWorkspaceIdRuns201ResponseData._();

  factory PostApiWorkspacesByWorkspaceIdRuns201ResponseData([void updates(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataBuilder b)]) = _$PostApiWorkspacesByWorkspaceIdRuns201ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostApiWorkspacesByWorkspaceIdRuns201ResponseData> get serializer => _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataSerializer();
}

class _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataSerializer implements PrimitiveSerializer<PostApiWorkspacesByWorkspaceIdRuns201ResponseData> {
  @override
  final Iterable<Type> types = const [PostApiWorkspacesByWorkspaceIdRuns201ResponseData, _$PostApiWorkspacesByWorkspaceIdRuns201ResponseData];

  @override
  final String wireName = r'PostApiWorkspacesByWorkspaceIdRuns201ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRuns201ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'completedAt';
    yield serializers.serialize(
      object.completedAt,
      specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt),
    );
    yield r'durationMs';
    yield serializers.serialize(
      object.durationMs,
      specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs),
    );
    yield r'error';
    yield serializers.serialize(
      object.error,
      specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError),
    );
    yield r'request';
    yield serializers.serialize(
      object.request,
      specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest),
    );
    yield r'response';
    yield serializers.serialize(
      object.response,
      specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse),
    );
    yield r'runId';
    yield serializers.serialize(
      object.runId,
      specifiedType: const FullType(int),
    );
    yield r'startedAt';
    yield serializers.serialize(
      object.startedAt,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostApiWorkspacesByWorkspaceIdRuns201ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostApiWorkspacesByWorkspaceIdRuns201ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'completedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt),
          ) as PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt;
          result.completedAt.replace(valueDes);
          break;
        case r'durationMs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs),
          ) as PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs;
          result.durationMs.replace(valueDes);
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError),
          ) as PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError;
          result.error.replace(valueDes);
          break;
        case r'request':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest),
          ) as PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest;
          result.request = valueDes;
          break;
        case r'response':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse),
          ) as PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse;
          result.response.replace(valueDes);
          break;
        case r'runId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.runId = valueDes;
          break;
        case r'startedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.startedAt = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum),
          ) as PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostApiWorkspacesByWorkspaceIdRuns201ResponseDataBuilder();
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

class PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'running')
  static const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum running = _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum_running;
  @BuiltValueEnumConst(wireName: r'completed')
  static const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum completed = _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum_completed;
  @BuiltValueEnumConst(wireName: r'failed')
  static const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum failed = _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum_failed;
  @BuiltValueEnumConst(wireName: r'cancelled')
  static const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum cancelled = _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum_cancelled;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum unknownDefaultOpenApi = _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum_unknownDefaultOpenApi;

  static Serializer<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum> get serializer => _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnumSerializer;

  const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum._(String name): super(name);

  static BuiltSet<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum> get values => _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnumValues;
  static PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum valueOf(String name) => _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnumValueOf(name);
}

