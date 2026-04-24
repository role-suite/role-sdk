// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_environments_by_environment_id_variables201_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response
    extends PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response {
  @override
  final GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInner
      data;
  @override
  final bool success;

  factory _$PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201ResponseBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201ResponseBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response._(
      {required this.data, required this.success})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response
      rebuild(
              void Function(
                      PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201ResponseBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201ResponseBuilder
      toBuilder() =>
          PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201ResponseBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response &&
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
            r'PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response')
          ..add('data', data)
          ..add('success', success))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201ResponseBuilder
    implements
        Builder<
            PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response,
            PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201ResponseBuilder> {
  _$PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response?
      _$v;

  GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInnerBuilder?
      _data;
  GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInnerBuilder
      get data => _$this._data ??=
          GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInnerBuilder();
  set data(
          GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataItemsInnerBuilder?
              data) =>
      _$this._data = data;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201ResponseBuilder() {
    PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response
        ._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201ResponseBuilder
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
      PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response
          other) {
    _$v = other
        as _$PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response;
  }

  @override
  void update(
      void Function(
              PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response
      build() => _build();

  _$PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response
      _build() {
    _$PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response
        _$result;
    try {
      _$result = _$v ??
          _$PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response
              ._(
            data: data.build(),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response',
                'success'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response',
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
