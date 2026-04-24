// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_collections_by_collection_id_folders_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest
    extends PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest {
  @override
  final String name;
  @override
  final PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderId?
      parentFolderId;
  @override
  final int? position;

  factory _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequestBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequestBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest._(
      {required this.name, this.parentFolderId, this.position})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest rebuild(
          void Function(
                  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequestBuilder
      toBuilder() =>
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequestBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest &&
        name == other.name &&
        parentFolderId == other.parentFolderId &&
        position == other.position;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, parentFolderId.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest')
          ..add('name', name)
          ..add('parentFolderId', parentFolderId)
          ..add('position', position))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequestBuilder
    implements
        Builder<
            PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest,
            PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequestBuilder> {
  _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderIdBuilder?
      _parentFolderId;
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderIdBuilder
      get parentFolderId => _$this._parentFolderId ??=
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderIdBuilder();
  set parentFolderId(
          PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequestFolderIdBuilder?
              parentFolderId) =>
      _$this._parentFolderId = parentFolderId;

  int? _position;
  int? get position => _$this._position;
  set position(int? position) => _$this._position = position;

  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequestBuilder() {
    PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest
        ._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequestBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _parentFolderId = $v.parentFolderId?.toBuilder();
      _position = $v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest
          other) {
    _$v = other
        as _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest;
  }

  @override
  void update(
      void Function(
              PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest
      build() => _build();

  _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest
      _build() {
    _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest
        _$result;
    try {
      _$result = _$v ??
          _$PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest
              ._(
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest',
                'name'),
            parentFolderId: _parentFolderId?.build(),
            position: position,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parentFolderId';
        _parentFolderId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest',
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
