// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_members200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiWorkspacesByWorkspaceIdMembers200Response
    extends GetApiWorkspacesByWorkspaceIdMembers200Response {
  @override
  final GetApiWorkspacesByWorkspaceIdMembers200ResponseData data;
  @override
  final bool success;

  factory _$GetApiWorkspacesByWorkspaceIdMembers200Response(
          [void Function(
                  GetApiWorkspacesByWorkspaceIdMembers200ResponseBuilder)?
              updates]) =>
      (GetApiWorkspacesByWorkspaceIdMembers200ResponseBuilder()
            ..update(updates))
          ._build();

  _$GetApiWorkspacesByWorkspaceIdMembers200Response._(
      {required this.data, required this.success})
      : super._();
  @override
  GetApiWorkspacesByWorkspaceIdMembers200Response rebuild(
          void Function(GetApiWorkspacesByWorkspaceIdMembers200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiWorkspacesByWorkspaceIdMembers200ResponseBuilder toBuilder() =>
      GetApiWorkspacesByWorkspaceIdMembers200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetApiWorkspacesByWorkspaceIdMembers200Response &&
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
            r'GetApiWorkspacesByWorkspaceIdMembers200Response')
          ..add('data', data)
          ..add('success', success))
        .toString();
  }
}

class GetApiWorkspacesByWorkspaceIdMembers200ResponseBuilder
    implements
        Builder<GetApiWorkspacesByWorkspaceIdMembers200Response,
            GetApiWorkspacesByWorkspaceIdMembers200ResponseBuilder> {
  _$GetApiWorkspacesByWorkspaceIdMembers200Response? _$v;

  GetApiWorkspacesByWorkspaceIdMembers200ResponseDataBuilder? _data;
  GetApiWorkspacesByWorkspaceIdMembers200ResponseDataBuilder get data =>
      _$this._data ??=
          GetApiWorkspacesByWorkspaceIdMembers200ResponseDataBuilder();
  set data(GetApiWorkspacesByWorkspaceIdMembers200ResponseDataBuilder? data) =>
      _$this._data = data;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  GetApiWorkspacesByWorkspaceIdMembers200ResponseBuilder() {
    GetApiWorkspacesByWorkspaceIdMembers200Response._defaults(this);
  }

  GetApiWorkspacesByWorkspaceIdMembers200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetApiWorkspacesByWorkspaceIdMembers200Response other) {
    _$v = other as _$GetApiWorkspacesByWorkspaceIdMembers200Response;
  }

  @override
  void update(
      void Function(GetApiWorkspacesByWorkspaceIdMembers200ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiWorkspacesByWorkspaceIdMembers200Response build() => _build();

  _$GetApiWorkspacesByWorkspaceIdMembers200Response _build() {
    _$GetApiWorkspacesByWorkspaceIdMembers200Response _$result;
    try {
      _$result = _$v ??
          _$GetApiWorkspacesByWorkspaceIdMembers200Response._(
            data: data.build(),
            success: BuiltValueNullFieldError.checkNotNull(success,
                r'GetApiWorkspacesByWorkspaceIdMembers200Response', 'success'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetApiWorkspacesByWorkspaceIdMembers200Response',
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
