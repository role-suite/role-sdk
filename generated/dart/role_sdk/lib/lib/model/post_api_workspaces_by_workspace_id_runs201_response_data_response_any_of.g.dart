// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs201_response_data_response_any_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf
    extends PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf {
  @override
  final GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription
      body;
  @override
  final GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescription
      bodyBase64;
  @override
  final BuiltMap<String, String> headers;
  @override
  final int sizeBytes;
  @override
  final int status;
  @override
  final bool truncated;

  factory _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOfBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOfBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf._(
      {required this.body,
      required this.bodyBase64,
      required this.headers,
      required this.sizeBytes,
      required this.status,
      required this.truncated})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf rebuild(
          void Function(
                  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOfBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOfBuilder
      toBuilder() =>
          PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOfBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf &&
        body == other.body &&
        bodyBase64 == other.bodyBase64 &&
        headers == other.headers &&
        sizeBytes == other.sizeBytes &&
        status == other.status &&
        truncated == other.truncated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, bodyBase64.hashCode);
    _$hash = $jc(_$hash, headers.hashCode);
    _$hash = $jc(_$hash, sizeBytes.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, truncated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf')
          ..add('body', body)
          ..add('bodyBase64', bodyBase64)
          ..add('headers', headers)
          ..add('sizeBytes', sizeBytes)
          ..add('status', status)
          ..add('truncated', truncated))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOfBuilder
    implements
        Builder<PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf,
            PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOfBuilder> {
  _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf? _$v;

  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescriptionBuilder?
      _body;
  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescriptionBuilder
      get body => _$this._body ??=
          GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescriptionBuilder();
  set body(
          GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescriptionBuilder?
              body) =>
      _$this._body = body;

  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescriptionBuilder?
      _bodyBase64;
  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescriptionBuilder
      get bodyBase64 => _$this._bodyBase64 ??=
          GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescriptionBuilder();
  set bodyBase64(
          GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerDescriptionBuilder?
              bodyBase64) =>
      _$this._bodyBase64 = bodyBase64;

  MapBuilder<String, String>? _headers;
  MapBuilder<String, String> get headers =>
      _$this._headers ??= MapBuilder<String, String>();
  set headers(MapBuilder<String, String>? headers) => _$this._headers = headers;

  int? _sizeBytes;
  int? get sizeBytes => _$this._sizeBytes;
  set sizeBytes(int? sizeBytes) => _$this._sizeBytes = sizeBytes;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  bool? _truncated;
  bool? get truncated => _$this._truncated;
  set truncated(bool? truncated) => _$this._truncated = truncated;

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOfBuilder() {
    PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf._defaults(
        this);
  }

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOfBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _body = $v.body.toBuilder();
      _bodyBase64 = $v.bodyBase64.toBuilder();
      _headers = $v.headers.toBuilder();
      _sizeBytes = $v.sizeBytes;
      _status = $v.status;
      _truncated = $v.truncated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf other) {
    _$v = other
        as _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf;
  }

  @override
  void update(
      void Function(
              PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOfBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf build() =>
      _build();

  _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf _build() {
    _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf _$result;
    try {
      _$result = _$v ??
          _$PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf._(
            body: body.build(),
            bodyBase64: bodyBase64.build(),
            headers: headers.build(),
            sizeBytes: BuiltValueNullFieldError.checkNotNull(
                sizeBytes,
                r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf',
                'sizeBytes'),
            status: BuiltValueNullFieldError.checkNotNull(
                status,
                r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf',
                'status'),
            truncated: BuiltValueNullFieldError.checkNotNull(
                truncated,
                r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf',
                'truncated'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'body';
        body.build();
        _$failedField = 'bodyBase64';
        bodyBase64.build();
        _$failedField = 'headers';
        headers.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostApiWorkspacesByWorkspaceIdRuns201ResponseDataResponseAnyOf',
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
