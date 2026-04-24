// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces201_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspaces201Response extends PostApiWorkspaces201Response {
  @override
  final PostApiAuthLogin200ResponseDataWorkspace data;
  @override
  final bool success;

  factory _$PostApiWorkspaces201Response(
          [void Function(PostApiWorkspaces201ResponseBuilder)? updates]) =>
      (PostApiWorkspaces201ResponseBuilder()..update(updates))._build();

  _$PostApiWorkspaces201Response._({required this.data, required this.success})
      : super._();
  @override
  PostApiWorkspaces201Response rebuild(
          void Function(PostApiWorkspaces201ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspaces201ResponseBuilder toBuilder() =>
      PostApiWorkspaces201ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiWorkspaces201Response &&
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
    return (newBuiltValueToStringHelper(r'PostApiWorkspaces201Response')
          ..add('data', data)
          ..add('success', success))
        .toString();
  }
}

class PostApiWorkspaces201ResponseBuilder
    implements
        Builder<PostApiWorkspaces201Response,
            PostApiWorkspaces201ResponseBuilder> {
  _$PostApiWorkspaces201Response? _$v;

  PostApiAuthLogin200ResponseDataWorkspaceBuilder? _data;
  PostApiAuthLogin200ResponseDataWorkspaceBuilder get data =>
      _$this._data ??= PostApiAuthLogin200ResponseDataWorkspaceBuilder();
  set data(PostApiAuthLogin200ResponseDataWorkspaceBuilder? data) =>
      _$this._data = data;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  PostApiWorkspaces201ResponseBuilder() {
    PostApiWorkspaces201Response._defaults(this);
  }

  PostApiWorkspaces201ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiWorkspaces201Response other) {
    _$v = other as _$PostApiWorkspaces201Response;
  }

  @override
  void update(void Function(PostApiWorkspaces201ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspaces201Response build() => _build();

  _$PostApiWorkspaces201Response _build() {
    _$PostApiWorkspaces201Response _$result;
    try {
      _$result = _$v ??
          _$PostApiWorkspaces201Response._(
            data: data.build(),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'PostApiWorkspaces201Response', 'success'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostApiWorkspaces201Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
