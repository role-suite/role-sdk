// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs201_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum
    _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum_running =
    const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum._(
        'running');
const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum
    _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum_completed =
    const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum._(
        'completed');
const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum
    _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum_failed =
    const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum._(
        'failed');
const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum
    _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum_cancelled =
    const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum._(
        'cancelled');
const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum
    _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum_unknownDefaultOpenApi =
    const PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum._(
        'unknownDefaultOpenApi');

PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum
    _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnumValueOf(
        String name) {
  switch (name) {
    case 'running':
      return _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum_running;
    case 'completed':
      return _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum_completed;
    case 'failed':
      return _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum_failed;
    case 'cancelled':
      return _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum_cancelled;
    case 'unknownDefaultOpenApi':
      return _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum_unknownDefaultOpenApi;
    default:
      return _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum>
    _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnumValues =
    BuiltSet<
        PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum>(const <PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum>[
  _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum_running,
  _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum_completed,
  _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum_failed,
  _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum_cancelled,
  _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum_unknownDefaultOpenApi,
]);

Serializer<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum>
    _$postApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnumSerializer =
    _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnumSerializer();

class _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnumSerializer
    implements
        PrimitiveSerializer<
            PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'running': 'running',
    'completed': 'completed',
    'failed': 'failed',
    'cancelled': 'cancelled',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'running': 'running',
    'completed': 'completed',
    'failed': 'failed',
    'cancelled': 'cancelled',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum
  ];
  @override
  final String wireName =
      'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum';

  @override
  Object serialize(Serializers serializers,
          PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PostApiWorkspacesByWorkspaceIdRuns201ResponseData
    extends PostApiWorkspacesByWorkspaceIdRuns201ResponseData {
  @override
  final PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAt
      completedAt;
  @override
  final PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMs durationMs;
  @override
  final PostApiWorkspacesByWorkspaceIdRuns201ResponseDataError error;
  @override
  final PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequest request;
  @override
  final PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponse response;
  @override
  final int runId;
  @override
  final String startedAt;
  @override
  final PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum status;

  factory _$PostApiWorkspacesByWorkspaceIdRuns201ResponseData(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdRuns201ResponseDataBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdRuns201ResponseData._(
      {required this.completedAt,
      required this.durationMs,
      required this.error,
      required this.request,
      required this.response,
      required this.runId,
      required this.startedAt,
      required this.status})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseData rebuild(
          void Function(
                  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataBuilder toBuilder() =>
      PostApiWorkspacesByWorkspaceIdRuns201ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiWorkspacesByWorkspaceIdRuns201ResponseData &&
        completedAt == other.completedAt &&
        durationMs == other.durationMs &&
        error == other.error &&
        request == other.request &&
        response == other.response &&
        runId == other.runId &&
        startedAt == other.startedAt &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, completedAt.hashCode);
    _$hash = $jc(_$hash, durationMs.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, request.hashCode);
    _$hash = $jc(_$hash, response.hashCode);
    _$hash = $jc(_$hash, runId.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PostApiWorkspacesByWorkspaceIdRuns201ResponseData')
          ..add('completedAt', completedAt)
          ..add('durationMs', durationMs)
          ..add('error', error)
          ..add('request', request)
          ..add('response', response)
          ..add('runId', runId)
          ..add('startedAt', startedAt)
          ..add('status', status))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdRuns201ResponseDataBuilder
    implements
        Builder<PostApiWorkspacesByWorkspaceIdRuns201ResponseData,
            PostApiWorkspacesByWorkspaceIdRuns201ResponseDataBuilder> {
  _$PostApiWorkspacesByWorkspaceIdRuns201ResponseData? _$v;

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAtBuilder?
      _completedAt;
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAtBuilder
      get completedAt => _$this._completedAt ??=
          PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAtBuilder();
  set completedAt(
          PostApiWorkspacesByWorkspaceIdRuns201ResponseDataCompletedAtBuilder?
              completedAt) =>
      _$this._completedAt = completedAt;

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMsBuilder?
      _durationMs;
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMsBuilder
      get durationMs => _$this._durationMs ??=
          PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMsBuilder();
  set durationMs(
          PostApiWorkspacesByWorkspaceIdRuns201ResponseDataDurationMsBuilder?
              durationMs) =>
      _$this._durationMs = durationMs;

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorBuilder? _error;
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorBuilder get error =>
      _$this._error ??=
          PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorBuilder();
  set error(
          PostApiWorkspacesByWorkspaceIdRuns201ResponseDataErrorBuilder?
              error) =>
      _$this._error = error;

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBuilder? _request;
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBuilder get request =>
      _$this._request ??=
          PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBuilder();
  set request(
          PostApiWorkspacesByWorkspaceIdRuns201ResponseDataRequestBuilder?
              request) =>
      _$this._request = request;

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseBuilder? _response;
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseBuilder
      get response => _$this._response ??=
          PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseBuilder();
  set response(
          PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseBuilder?
              response) =>
      _$this._response = response;

  int? _runId;
  int? get runId => _$this._runId;
  set runId(int? runId) => _$this._runId = runId;

  String? _startedAt;
  String? get startedAt => _$this._startedAt;
  set startedAt(String? startedAt) => _$this._startedAt = startedAt;

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum? _status;
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum? get status =>
      _$this._status;
  set status(
          PostApiWorkspacesByWorkspaceIdRuns201ResponseDataStatusEnum?
              status) =>
      _$this._status = status;

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataBuilder() {
    PostApiWorkspacesByWorkspaceIdRuns201ResponseData._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _completedAt = $v.completedAt.toBuilder();
      _durationMs = $v.durationMs.toBuilder();
      _error = $v.error.toBuilder();
      _request = $v.request.toBuilder();
      _response = $v.response.toBuilder();
      _runId = $v.runId;
      _startedAt = $v.startedAt;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiWorkspacesByWorkspaceIdRuns201ResponseData other) {
    _$v = other as _$PostApiWorkspacesByWorkspaceIdRuns201ResponseData;
  }

  @override
  void update(
      void Function(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseData build() => _build();

  _$PostApiWorkspacesByWorkspaceIdRuns201ResponseData _build() {
    _$PostApiWorkspacesByWorkspaceIdRuns201ResponseData _$result;
    try {
      _$result = _$v ??
          _$PostApiWorkspacesByWorkspaceIdRuns201ResponseData._(
            completedAt: completedAt.build(),
            durationMs: durationMs.build(),
            error: error.build(),
            request: request.build(),
            response: response.build(),
            runId: BuiltValueNullFieldError.checkNotNull(runId,
                r'PostApiWorkspacesByWorkspaceIdRuns201ResponseData', 'runId'),
            startedAt: BuiltValueNullFieldError.checkNotNull(
                startedAt,
                r'PostApiWorkspacesByWorkspaceIdRuns201ResponseData',
                'startedAt'),
            status: BuiltValueNullFieldError.checkNotNull(status,
                r'PostApiWorkspacesByWorkspaceIdRuns201ResponseData', 'status'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'completedAt';
        completedAt.build();
        _$failedField = 'durationMs';
        durationMs.build();
        _$failedField = 'error';
        error.build();
        _$failedField = 'request';
        request.build();
        _$failedField = 'response';
        response.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostApiWorkspacesByWorkspaceIdRuns201ResponseData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
