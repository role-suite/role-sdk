// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_invitations201_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdInvitations201Response
    extends PostApiWorkspacesByWorkspaceIdInvitations201Response {
  @override
  final PostApiWorkspacesByWorkspaceIdInvitations201ResponseData data;
  @override
  final bool success;

  factory _$PostApiWorkspacesByWorkspaceIdInvitations201Response(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdInvitations201ResponseBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdInvitations201ResponseBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdInvitations201Response._(
      {required this.data, required this.success})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdInvitations201Response rebuild(
          void Function(
                  PostApiWorkspacesByWorkspaceIdInvitations201ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdInvitations201ResponseBuilder toBuilder() =>
      PostApiWorkspacesByWorkspaceIdInvitations201ResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiWorkspacesByWorkspaceIdInvitations201Response &&
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
            r'PostApiWorkspacesByWorkspaceIdInvitations201Response')
          ..add('data', data)
          ..add('success', success))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdInvitations201ResponseBuilder
    implements
        Builder<PostApiWorkspacesByWorkspaceIdInvitations201Response,
            PostApiWorkspacesByWorkspaceIdInvitations201ResponseBuilder> {
  _$PostApiWorkspacesByWorkspaceIdInvitations201Response? _$v;

  PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataBuilder? _data;
  PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataBuilder get data =>
      _$this._data ??=
          PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataBuilder();
  set data(
          PostApiWorkspacesByWorkspaceIdInvitations201ResponseDataBuilder?
              data) =>
      _$this._data = data;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  PostApiWorkspacesByWorkspaceIdInvitations201ResponseBuilder() {
    PostApiWorkspacesByWorkspaceIdInvitations201Response._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdInvitations201ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiWorkspacesByWorkspaceIdInvitations201Response other) {
    _$v = other as _$PostApiWorkspacesByWorkspaceIdInvitations201Response;
  }

  @override
  void update(
      void Function(
              PostApiWorkspacesByWorkspaceIdInvitations201ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdInvitations201Response build() => _build();

  _$PostApiWorkspacesByWorkspaceIdInvitations201Response _build() {
    _$PostApiWorkspacesByWorkspaceIdInvitations201Response _$result;
    try {
      _$result = _$v ??
          _$PostApiWorkspacesByWorkspaceIdInvitations201Response._(
            data: data.build(),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'PostApiWorkspacesByWorkspaceIdInvitations201Response',
                'success'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostApiWorkspacesByWorkspaceIdInvitations201Response',
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
