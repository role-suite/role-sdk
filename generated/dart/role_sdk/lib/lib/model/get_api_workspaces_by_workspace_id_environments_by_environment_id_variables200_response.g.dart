// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_environments_by_environment_id_variables200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response
    extends GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response {
  @override
  final GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseData
      data;
  @override
  final bool success;

  factory _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response(
          [void Function(
                  GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseBuilder)?
              updates]) =>
      (GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseBuilder()
            ..update(updates))
          ._build();

  _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response._(
      {required this.data, required this.success})
      : super._();
  @override
  GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response
      rebuild(
              void Function(
                      GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseBuilder
      toBuilder() =>
          GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response &&
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
            r'GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response')
          ..add('data', data)
          ..add('success', success))
        .toString();
  }
}

class GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseBuilder
    implements
        Builder<
            GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response,
            GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseBuilder> {
  _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response?
      _$v;

  GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataBuilder?
      _data;
  GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataBuilder
      get data => _$this._data ??=
          GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataBuilder();
  set data(
          GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseDataBuilder?
              data) =>
      _$this._data = data;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseBuilder() {
    GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response
        ._defaults(this);
  }

  GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response
          other) {
    _$v = other
        as _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response;
  }

  @override
  void update(
      void Function(
              GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response
      build() => _build();

  _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response
      _build() {
    _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response
        _$result;
    try {
      _$result = _$v ??
          _$GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response
              ._(
            data: data.build(),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response',
                'success'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response',
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
