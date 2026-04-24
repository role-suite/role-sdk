// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesRequest extends PostApiWorkspacesRequest {
  @override
  final String name;

  factory _$PostApiWorkspacesRequest(
          [void Function(PostApiWorkspacesRequestBuilder)? updates]) =>
      (PostApiWorkspacesRequestBuilder()..update(updates))._build();

  _$PostApiWorkspacesRequest._({required this.name}) : super._();
  @override
  PostApiWorkspacesRequest rebuild(
          void Function(PostApiWorkspacesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesRequestBuilder toBuilder() =>
      PostApiWorkspacesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiWorkspacesRequest && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostApiWorkspacesRequest')
          ..add('name', name))
        .toString();
  }
}

class PostApiWorkspacesRequestBuilder
    implements
        Builder<PostApiWorkspacesRequest, PostApiWorkspacesRequestBuilder> {
  _$PostApiWorkspacesRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PostApiWorkspacesRequestBuilder() {
    PostApiWorkspacesRequest._defaults(this);
  }

  PostApiWorkspacesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiWorkspacesRequest other) {
    _$v = other as _$PostApiWorkspacesRequest;
  }

  @override
  void update(void Function(PostApiWorkspacesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesRequest build() => _build();

  _$PostApiWorkspacesRequest _build() {
    final _$result = _$v ??
        _$PostApiWorkspacesRequest._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'PostApiWorkspacesRequest', 'name'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
