// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patch_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_by_endpoint_id_examples_by_example_id_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest
    extends PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest {
  @override
  final PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesRequestBody?
      body;
  @override
  final BuiltList<
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1EntriesInner>?
      headers;
  @override
  final String? name;
  @override
  final int? position;
  @override
  final int? statusCode;

  factory _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest(
          [void Function(
                  PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequestBuilder)?
              updates]) =>
      (PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequestBuilder()
            ..update(updates))
          ._build();

  _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest._(
      {this.body, this.headers, this.name, this.position, this.statusCode})
      : super._();
  @override
  PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest
      rebuild(
              void Function(
                      PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequestBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequestBuilder
      toBuilder() =>
          PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequestBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest &&
        body == other.body &&
        headers == other.headers &&
        name == other.name &&
        position == other.position &&
        statusCode == other.statusCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, headers.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest')
          ..add('body', body)
          ..add('headers', headers)
          ..add('name', name)
          ..add('position', position)
          ..add('statusCode', statusCode))
        .toString();
  }
}

class PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequestBuilder
    implements
        Builder<
            PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest,
            PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequestBuilder> {
  _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest?
      _$v;

  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesRequestBodyBuilder?
      _body;
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesRequestBodyBuilder
      get body => _$this._body ??=
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesRequestBodyBuilder();
  set body(
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesRequestBodyBuilder?
              body) =>
      _$this._body = body;

  ListBuilder<
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1EntriesInner>?
      _headers;
  ListBuilder<
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1EntriesInner>
      get headers => _$this._headers ??= ListBuilder<
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1EntriesInner>();
  set headers(
          ListBuilder<
                  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestBodyAnyOf1EntriesInner>?
              headers) =>
      _$this._headers = headers;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _position;
  int? get position => _$this._position;
  set position(int? position) => _$this._position = position;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequestBuilder() {
    PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest
        ._defaults(this);
  }

  PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequestBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _body = $v.body?.toBuilder();
      _headers = $v.headers?.toBuilder();
      _name = $v.name;
      _position = $v.position;
      _statusCode = $v.statusCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest
          other) {
    _$v = other
        as _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest;
  }

  @override
  void update(
      void Function(
              PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest
      build() => _build();

  _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest
      _build() {
    _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest
        _$result;
    try {
      _$result = _$v ??
          _$PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest
              ._(
            body: _body?.build(),
            headers: _headers?.build(),
            name: name,
            position: position,
            statusCode: statusCode,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'body';
        _body?.build();
        _$failedField = 'headers';
        _headers?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest',
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
