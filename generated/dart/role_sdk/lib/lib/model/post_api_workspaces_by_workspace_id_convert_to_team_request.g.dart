// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_convert_to_team_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdConvertToTeamRequest
    extends PostApiWorkspacesByWorkspaceIdConvertToTeamRequest {
  @override
  final String? name;

  factory _$PostApiWorkspacesByWorkspaceIdConvertToTeamRequest(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdConvertToTeamRequestBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdConvertToTeamRequestBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdConvertToTeamRequest._({this.name})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdConvertToTeamRequest rebuild(
          void Function(
                  PostApiWorkspacesByWorkspaceIdConvertToTeamRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdConvertToTeamRequestBuilder toBuilder() =>
      PostApiWorkspacesByWorkspaceIdConvertToTeamRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiWorkspacesByWorkspaceIdConvertToTeamRequest &&
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
            r'PostApiWorkspacesByWorkspaceIdConvertToTeamRequest')
          ..add('name', name))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdConvertToTeamRequestBuilder
    implements
        Builder<PostApiWorkspacesByWorkspaceIdConvertToTeamRequest,
            PostApiWorkspacesByWorkspaceIdConvertToTeamRequestBuilder> {
  _$PostApiWorkspacesByWorkspaceIdConvertToTeamRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PostApiWorkspacesByWorkspaceIdConvertToTeamRequestBuilder() {
    PostApiWorkspacesByWorkspaceIdConvertToTeamRequest._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdConvertToTeamRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiWorkspacesByWorkspaceIdConvertToTeamRequest other) {
    _$v = other as _$PostApiWorkspacesByWorkspaceIdConvertToTeamRequest;
  }

  @override
  void update(
      void Function(PostApiWorkspacesByWorkspaceIdConvertToTeamRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdConvertToTeamRequest build() => _build();

  _$PostApiWorkspacesByWorkspaceIdConvertToTeamRequest _build() {
    final _$result = _$v ??
        _$PostApiWorkspacesByWorkspaceIdConvertToTeamRequest._(
          name: name,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
