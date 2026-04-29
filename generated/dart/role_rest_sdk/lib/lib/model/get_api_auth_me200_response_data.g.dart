// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_auth_me200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiAuthMe200ResponseData extends GetApiAuthMe200ResponseData {
  @override
  final BuiltList<GetApiAuthMe200ResponseDataMembershipsInner> memberships;
  @override
  final PostApiAuthLogin200ResponseDataUser user;
  @override
  final PostApiAuthLogin200ResponseDataWorkspace workspace;

  factory _$GetApiAuthMe200ResponseData(
          [void Function(GetApiAuthMe200ResponseDataBuilder)? updates]) =>
      (GetApiAuthMe200ResponseDataBuilder()..update(updates))._build();

  _$GetApiAuthMe200ResponseData._(
      {required this.memberships, required this.user, required this.workspace})
      : super._();
  @override
  GetApiAuthMe200ResponseData rebuild(
          void Function(GetApiAuthMe200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiAuthMe200ResponseDataBuilder toBuilder() =>
      GetApiAuthMe200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetApiAuthMe200ResponseData &&
        memberships == other.memberships &&
        user == other.user &&
        workspace == other.workspace;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, memberships.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, workspace.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetApiAuthMe200ResponseData')
          ..add('memberships', memberships)
          ..add('user', user)
          ..add('workspace', workspace))
        .toString();
  }
}

class GetApiAuthMe200ResponseDataBuilder
    implements
        Builder<GetApiAuthMe200ResponseData,
            GetApiAuthMe200ResponseDataBuilder> {
  _$GetApiAuthMe200ResponseData? _$v;

  ListBuilder<GetApiAuthMe200ResponseDataMembershipsInner>? _memberships;
  ListBuilder<GetApiAuthMe200ResponseDataMembershipsInner> get memberships =>
      _$this._memberships ??=
          ListBuilder<GetApiAuthMe200ResponseDataMembershipsInner>();
  set memberships(
          ListBuilder<GetApiAuthMe200ResponseDataMembershipsInner>?
              memberships) =>
      _$this._memberships = memberships;

  PostApiAuthLogin200ResponseDataUserBuilder? _user;
  PostApiAuthLogin200ResponseDataUserBuilder get user =>
      _$this._user ??= PostApiAuthLogin200ResponseDataUserBuilder();
  set user(PostApiAuthLogin200ResponseDataUserBuilder? user) =>
      _$this._user = user;

  PostApiAuthLogin200ResponseDataWorkspaceBuilder? _workspace;
  PostApiAuthLogin200ResponseDataWorkspaceBuilder get workspace =>
      _$this._workspace ??= PostApiAuthLogin200ResponseDataWorkspaceBuilder();
  set workspace(PostApiAuthLogin200ResponseDataWorkspaceBuilder? workspace) =>
      _$this._workspace = workspace;

  GetApiAuthMe200ResponseDataBuilder() {
    GetApiAuthMe200ResponseData._defaults(this);
  }

  GetApiAuthMe200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _memberships = $v.memberships.toBuilder();
      _user = $v.user.toBuilder();
      _workspace = $v.workspace.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetApiAuthMe200ResponseData other) {
    _$v = other as _$GetApiAuthMe200ResponseData;
  }

  @override
  void update(void Function(GetApiAuthMe200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiAuthMe200ResponseData build() => _build();

  _$GetApiAuthMe200ResponseData _build() {
    _$GetApiAuthMe200ResponseData _$result;
    try {
      _$result = _$v ??
          _$GetApiAuthMe200ResponseData._(
            memberships: memberships.build(),
            user: user.build(),
            workspace: workspace.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'memberships';
        memberships.build();
        _$failedField = 'user';
        user.build();
        _$failedField = 'workspace';
        workspace.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetApiAuthMe200ResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
