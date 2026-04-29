// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_environments201_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdEnvironments201Response
    extends PostApiWorkspacesByWorkspaceIdEnvironments201Response {
  @override
  final GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInner data;
  @override
  final bool success;

  factory _$PostApiWorkspacesByWorkspaceIdEnvironments201Response(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdEnvironments201ResponseBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdEnvironments201ResponseBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdEnvironments201Response._(
      {required this.data, required this.success})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdEnvironments201Response rebuild(
          void Function(
                  PostApiWorkspacesByWorkspaceIdEnvironments201ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdEnvironments201ResponseBuilder toBuilder() =>
      PostApiWorkspacesByWorkspaceIdEnvironments201ResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiWorkspacesByWorkspaceIdEnvironments201Response &&
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
            r'PostApiWorkspacesByWorkspaceIdEnvironments201Response')
          ..add('data', data)
          ..add('success', success))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdEnvironments201ResponseBuilder
    implements
        Builder<PostApiWorkspacesByWorkspaceIdEnvironments201Response,
            PostApiWorkspacesByWorkspaceIdEnvironments201ResponseBuilder> {
  _$PostApiWorkspacesByWorkspaceIdEnvironments201Response? _$v;

  GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInnerBuilder?
      _data;
  GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInnerBuilder
      get data => _$this._data ??=
          GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInnerBuilder();
  set data(
          GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataItemsInnerBuilder?
              data) =>
      _$this._data = data;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  PostApiWorkspacesByWorkspaceIdEnvironments201ResponseBuilder() {
    PostApiWorkspacesByWorkspaceIdEnvironments201Response._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdEnvironments201ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiWorkspacesByWorkspaceIdEnvironments201Response other) {
    _$v = other as _$PostApiWorkspacesByWorkspaceIdEnvironments201Response;
  }

  @override
  void update(
      void Function(
              PostApiWorkspacesByWorkspaceIdEnvironments201ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdEnvironments201Response build() => _build();

  _$PostApiWorkspacesByWorkspaceIdEnvironments201Response _build() {
    _$PostApiWorkspacesByWorkspaceIdEnvironments201Response _$result;
    try {
      _$result = _$v ??
          _$PostApiWorkspacesByWorkspaceIdEnvironments201Response._(
            data: data.build(),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'PostApiWorkspacesByWorkspaceIdEnvironments201Response',
                'success'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostApiWorkspacesByWorkspaceIdEnvironments201Response',
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
