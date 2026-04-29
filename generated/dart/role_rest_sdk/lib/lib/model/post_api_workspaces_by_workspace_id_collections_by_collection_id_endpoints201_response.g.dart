// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints201_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response
    extends PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response {
  @override
  final PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseData
      data;
  @override
  final bool success;

  factory _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response._(
      {required this.data, required this.success})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response
      rebuild(
              void Function(
                      PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseBuilder
      toBuilder() =>
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response &&
        data == other.data &&
        success == other.success;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response')
          ..add('data', data)
          ..add('success', success))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseBuilder
    implements
        Builder<
            PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response,
            PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseBuilder> {
  _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response?
      _$v;

  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataBuilder?
      _data;
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataBuilder
      get data => _$this._data ??=
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataBuilder();
  set data(
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseDataBuilder?
              data) =>
      _$this._data = data;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseBuilder() {
    PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response
        ._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response
          other) {
    _$v = other
        as _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response;
  }

  @override
  void update(
      void Function(
              PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response
      build() => _build();

  _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response
      _build() {
    _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response
        _$result;
    try {
      _$result = _$v ??
          _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response
              ._(
            data: data.build(),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response',
                'success'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response',
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
