// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_collections_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdCollectionsRequest
    extends PostApiWorkspacesByWorkspaceIdCollectionsRequest {
  @override
  final String? description;
  @override
  final String name;

  factory _$PostApiWorkspacesByWorkspaceIdCollectionsRequest(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdCollectionsRequestBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdCollectionsRequestBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdCollectionsRequest._(
      {this.description, required this.name})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdCollectionsRequest rebuild(
          void Function(PostApiWorkspacesByWorkspaceIdCollectionsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdCollectionsRequestBuilder toBuilder() =>
      PostApiWorkspacesByWorkspaceIdCollectionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiWorkspacesByWorkspaceIdCollectionsRequest &&
        description == other.description &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PostApiWorkspacesByWorkspaceIdCollectionsRequest')
          ..add('description', description)
          ..add('name', name))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdCollectionsRequestBuilder
    implements
        Builder<PostApiWorkspacesByWorkspaceIdCollectionsRequest,
            PostApiWorkspacesByWorkspaceIdCollectionsRequestBuilder> {
  _$PostApiWorkspacesByWorkspaceIdCollectionsRequest? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PostApiWorkspacesByWorkspaceIdCollectionsRequestBuilder() {
    PostApiWorkspacesByWorkspaceIdCollectionsRequest._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdCollectionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiWorkspacesByWorkspaceIdCollectionsRequest other) {
    _$v = other as _$PostApiWorkspacesByWorkspaceIdCollectionsRequest;
  }

  @override
  void update(
      void Function(PostApiWorkspacesByWorkspaceIdCollectionsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdCollectionsRequest build() => _build();

  _$PostApiWorkspacesByWorkspaceIdCollectionsRequest _build() {
    final _$result = _$v ??
        _$PostApiWorkspacesByWorkspaceIdCollectionsRequest._(
          description: description,
          name: BuiltValueNullFieldError.checkNotNull(name,
              r'PostApiWorkspacesByWorkspaceIdCollectionsRequest', 'name'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
