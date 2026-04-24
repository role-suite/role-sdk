// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_environments_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdEnvironmentsRequest
    extends PostApiWorkspacesByWorkspaceIdEnvironmentsRequest {
  @override
  final String name;

  factory _$PostApiWorkspacesByWorkspaceIdEnvironmentsRequest(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdEnvironmentsRequestBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdEnvironmentsRequestBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdEnvironmentsRequest._({required this.name})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdEnvironmentsRequest rebuild(
          void Function(
                  PostApiWorkspacesByWorkspaceIdEnvironmentsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdEnvironmentsRequestBuilder toBuilder() =>
      PostApiWorkspacesByWorkspaceIdEnvironmentsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiWorkspacesByWorkspaceIdEnvironmentsRequest &&
        name == other.name;
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
    return (newBuiltValueToStringHelper(
            r'PostApiWorkspacesByWorkspaceIdEnvironmentsRequest')
          ..add('name', name))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdEnvironmentsRequestBuilder
    implements
        Builder<PostApiWorkspacesByWorkspaceIdEnvironmentsRequest,
            PostApiWorkspacesByWorkspaceIdEnvironmentsRequestBuilder> {
  _$PostApiWorkspacesByWorkspaceIdEnvironmentsRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PostApiWorkspacesByWorkspaceIdEnvironmentsRequestBuilder() {
    PostApiWorkspacesByWorkspaceIdEnvironmentsRequest._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdEnvironmentsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiWorkspacesByWorkspaceIdEnvironmentsRequest other) {
    _$v = other as _$PostApiWorkspacesByWorkspaceIdEnvironmentsRequest;
  }

  @override
  void update(
      void Function(PostApiWorkspacesByWorkspaceIdEnvironmentsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdEnvironmentsRequest build() => _build();

  _$PostApiWorkspacesByWorkspaceIdEnvironmentsRequest _build() {
    final _$result = _$v ??
        _$PostApiWorkspacesByWorkspaceIdEnvironmentsRequest._(
          name: BuiltValueNullFieldError.checkNotNull(name,
              r'PostApiWorkspacesByWorkspaceIdEnvironmentsRequest', 'name'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
