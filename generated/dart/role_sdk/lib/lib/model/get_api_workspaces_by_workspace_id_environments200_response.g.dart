// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_environments200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiWorkspacesByWorkspaceIdEnvironments200Response
    extends GetApiWorkspacesByWorkspaceIdEnvironments200Response {
  @override
  final GetApiWorkspacesByWorkspaceIdEnvironments200ResponseData data;
  @override
  final bool success;

  factory _$GetApiWorkspacesByWorkspaceIdEnvironments200Response(
          [void Function(
                  GetApiWorkspacesByWorkspaceIdEnvironments200ResponseBuilder)?
              updates]) =>
      (GetApiWorkspacesByWorkspaceIdEnvironments200ResponseBuilder()
            ..update(updates))
          ._build();

  _$GetApiWorkspacesByWorkspaceIdEnvironments200Response._(
      {required this.data, required this.success})
      : super._();
  @override
  GetApiWorkspacesByWorkspaceIdEnvironments200Response rebuild(
          void Function(
                  GetApiWorkspacesByWorkspaceIdEnvironments200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiWorkspacesByWorkspaceIdEnvironments200ResponseBuilder toBuilder() =>
      GetApiWorkspacesByWorkspaceIdEnvironments200ResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetApiWorkspacesByWorkspaceIdEnvironments200Response &&
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
            r'GetApiWorkspacesByWorkspaceIdEnvironments200Response')
          ..add('data', data)
          ..add('success', success))
        .toString();
  }
}

class GetApiWorkspacesByWorkspaceIdEnvironments200ResponseBuilder
    implements
        Builder<GetApiWorkspacesByWorkspaceIdEnvironments200Response,
            GetApiWorkspacesByWorkspaceIdEnvironments200ResponseBuilder> {
  _$GetApiWorkspacesByWorkspaceIdEnvironments200Response? _$v;

  GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataBuilder? _data;
  GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataBuilder get data =>
      _$this._data ??=
          GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataBuilder();
  set data(
          GetApiWorkspacesByWorkspaceIdEnvironments200ResponseDataBuilder?
              data) =>
      _$this._data = data;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  GetApiWorkspacesByWorkspaceIdEnvironments200ResponseBuilder() {
    GetApiWorkspacesByWorkspaceIdEnvironments200Response._defaults(this);
  }

  GetApiWorkspacesByWorkspaceIdEnvironments200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetApiWorkspacesByWorkspaceIdEnvironments200Response other) {
    _$v = other as _$GetApiWorkspacesByWorkspaceIdEnvironments200Response;
  }

  @override
  void update(
      void Function(
              GetApiWorkspacesByWorkspaceIdEnvironments200ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiWorkspacesByWorkspaceIdEnvironments200Response build() => _build();

  _$GetApiWorkspacesByWorkspaceIdEnvironments200Response _build() {
    _$GetApiWorkspacesByWorkspaceIdEnvironments200Response _$result;
    try {
      _$result = _$v ??
          _$GetApiWorkspacesByWorkspaceIdEnvironments200Response._(
            data: data.build(),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'GetApiWorkspacesByWorkspaceIdEnvironments200Response',
                'success'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetApiWorkspacesByWorkspaceIdEnvironments200Response',
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
