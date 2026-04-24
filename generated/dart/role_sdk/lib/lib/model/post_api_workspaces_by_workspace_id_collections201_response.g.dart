// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_collections201_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdCollections201Response
    extends PostApiWorkspacesByWorkspaceIdCollections201Response {
  @override
  final GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInner data;
  @override
  final bool success;

  factory _$PostApiWorkspacesByWorkspaceIdCollections201Response(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdCollections201ResponseBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdCollections201ResponseBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdCollections201Response._(
      {required this.data, required this.success})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdCollections201Response rebuild(
          void Function(
                  PostApiWorkspacesByWorkspaceIdCollections201ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdCollections201ResponseBuilder toBuilder() =>
      PostApiWorkspacesByWorkspaceIdCollections201ResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiWorkspacesByWorkspaceIdCollections201Response &&
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
            r'PostApiWorkspacesByWorkspaceIdCollections201Response')
          ..add('data', data)
          ..add('success', success))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdCollections201ResponseBuilder
    implements
        Builder<PostApiWorkspacesByWorkspaceIdCollections201Response,
            PostApiWorkspacesByWorkspaceIdCollections201ResponseBuilder> {
  _$PostApiWorkspacesByWorkspaceIdCollections201Response? _$v;

  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerBuilder?
      _data;
  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerBuilder
      get data => _$this._data ??=
          GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerBuilder();
  set data(
          GetApiWorkspacesByWorkspaceIdCollections200ResponseDataItemsInnerBuilder?
              data) =>
      _$this._data = data;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  PostApiWorkspacesByWorkspaceIdCollections201ResponseBuilder() {
    PostApiWorkspacesByWorkspaceIdCollections201Response._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdCollections201ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiWorkspacesByWorkspaceIdCollections201Response other) {
    _$v = other as _$PostApiWorkspacesByWorkspaceIdCollections201Response;
  }

  @override
  void update(
      void Function(
              PostApiWorkspacesByWorkspaceIdCollections201ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdCollections201Response build() => _build();

  _$PostApiWorkspacesByWorkspaceIdCollections201Response _build() {
    _$PostApiWorkspacesByWorkspaceIdCollections201Response _$result;
    try {
      _$result = _$v ??
          _$PostApiWorkspacesByWorkspaceIdCollections201Response._(
            data: data.build(),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'PostApiWorkspacesByWorkspaceIdCollections201Response',
                'success'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostApiWorkspacesByWorkspaceIdCollections201Response',
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
