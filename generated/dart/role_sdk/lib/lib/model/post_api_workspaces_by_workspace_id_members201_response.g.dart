// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_members201_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdMembers201Response
    extends PostApiWorkspacesByWorkspaceIdMembers201Response {
  @override
  final GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInner data;
  @override
  final bool success;

  factory _$PostApiWorkspacesByWorkspaceIdMembers201Response(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdMembers201ResponseBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdMembers201ResponseBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdMembers201Response._(
      {required this.data, required this.success})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdMembers201Response rebuild(
          void Function(PostApiWorkspacesByWorkspaceIdMembers201ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdMembers201ResponseBuilder toBuilder() =>
      PostApiWorkspacesByWorkspaceIdMembers201ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiWorkspacesByWorkspaceIdMembers201Response &&
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
            r'PostApiWorkspacesByWorkspaceIdMembers201Response')
          ..add('data', data)
          ..add('success', success))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdMembers201ResponseBuilder
    implements
        Builder<PostApiWorkspacesByWorkspaceIdMembers201Response,
            PostApiWorkspacesByWorkspaceIdMembers201ResponseBuilder> {
  _$PostApiWorkspacesByWorkspaceIdMembers201Response? _$v;

  GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerBuilder? _data;
  GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerBuilder
      get data => _$this._data ??=
          GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerBuilder();
  set data(
          GetApiWorkspacesByWorkspaceIdMembers200ResponseDataItemsInnerBuilder?
              data) =>
      _$this._data = data;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  PostApiWorkspacesByWorkspaceIdMembers201ResponseBuilder() {
    PostApiWorkspacesByWorkspaceIdMembers201Response._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdMembers201ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiWorkspacesByWorkspaceIdMembers201Response other) {
    _$v = other as _$PostApiWorkspacesByWorkspaceIdMembers201Response;
  }

  @override
  void update(
      void Function(PostApiWorkspacesByWorkspaceIdMembers201ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdMembers201Response build() => _build();

  _$PostApiWorkspacesByWorkspaceIdMembers201Response _build() {
    _$PostApiWorkspacesByWorkspaceIdMembers201Response _$result;
    try {
      _$result = _$v ??
          _$PostApiWorkspacesByWorkspaceIdMembers201Response._(
            data: data.build(),
            success: BuiltValueNullFieldError.checkNotNull(success,
                r'PostApiWorkspacesByWorkspaceIdMembers201Response', 'success'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostApiWorkspacesByWorkspaceIdMembers201Response',
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
