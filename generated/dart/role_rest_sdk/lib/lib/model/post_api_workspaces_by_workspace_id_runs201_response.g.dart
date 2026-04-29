// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs201_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdRuns201Response
    extends PostApiWorkspacesByWorkspaceIdRuns201Response {
  @override
  final PostApiWorkspacesByWorkspaceIdRuns201ResponseData data;
  @override
  final bool success;

  factory _$PostApiWorkspacesByWorkspaceIdRuns201Response(
          [void Function(PostApiWorkspacesByWorkspaceIdRuns201ResponseBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdRuns201ResponseBuilder()..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdRuns201Response._(
      {required this.data, required this.success})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdRuns201Response rebuild(
          void Function(PostApiWorkspacesByWorkspaceIdRuns201ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdRuns201ResponseBuilder toBuilder() =>
      PostApiWorkspacesByWorkspaceIdRuns201ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiWorkspacesByWorkspaceIdRuns201Response &&
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
            r'PostApiWorkspacesByWorkspaceIdRuns201Response')
          ..add('data', data)
          ..add('success', success))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdRuns201ResponseBuilder
    implements
        Builder<PostApiWorkspacesByWorkspaceIdRuns201Response,
            PostApiWorkspacesByWorkspaceIdRuns201ResponseBuilder> {
  _$PostApiWorkspacesByWorkspaceIdRuns201Response? _$v;

  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataBuilder? _data;
  PostApiWorkspacesByWorkspaceIdRuns201ResponseDataBuilder get data =>
      _$this._data ??=
          PostApiWorkspacesByWorkspaceIdRuns201ResponseDataBuilder();
  set data(PostApiWorkspacesByWorkspaceIdRuns201ResponseDataBuilder? data) =>
      _$this._data = data;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  PostApiWorkspacesByWorkspaceIdRuns201ResponseBuilder() {
    PostApiWorkspacesByWorkspaceIdRuns201Response._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdRuns201ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiWorkspacesByWorkspaceIdRuns201Response other) {
    _$v = other as _$PostApiWorkspacesByWorkspaceIdRuns201Response;
  }

  @override
  void update(
      void Function(PostApiWorkspacesByWorkspaceIdRuns201ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdRuns201Response build() => _build();

  _$PostApiWorkspacesByWorkspaceIdRuns201Response _build() {
    _$PostApiWorkspacesByWorkspaceIdRuns201Response _$result;
    try {
      _$result = _$v ??
          _$PostApiWorkspacesByWorkspaceIdRuns201Response._(
            data: data.build(),
            success: BuiltValueNullFieldError.checkNotNull(success,
                r'PostApiWorkspacesByWorkspaceIdRuns201Response', 'success'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostApiWorkspacesByWorkspaceIdRuns201Response',
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
