// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_collections_by_collection_id_endpoints_request_folder_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId
    extends PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId {
  @override
  final AnyOf anyOf;

  factory _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderIdBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderIdBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId._(
      {required this.anyOf})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId
      rebuild(
              void Function(
                      PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderIdBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderIdBuilder
      toBuilder() =>
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderIdBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId &&
        anyOf == other.anyOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, anyOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderIdBuilder
    implements
        Builder<
            PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId,
            PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderIdBuilder> {
  _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId?
      _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderIdBuilder() {
    PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId
        ._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderIdBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId
          other) {
    _$v = other
        as _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId;
  }

  @override
  void update(
      void Function(
              PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderIdBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId
      build() => _build();

  _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId
      _build() {
    final _$result = _$v ??
        _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId
            ._(
          anyOf: BuiltValueNullFieldError.checkNotNull(
              anyOf,
              r'PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId',
              'anyOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
