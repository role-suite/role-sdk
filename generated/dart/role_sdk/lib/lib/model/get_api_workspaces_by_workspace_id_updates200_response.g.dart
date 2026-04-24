// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_updates200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiWorkspacesByWorkspaceIdUpdates200Response
    extends GetApiWorkspacesByWorkspaceIdUpdates200Response {
  @override
  final GetApiWorkspacesByWorkspaceIdUpdates200ResponseData data;
  @override
  final bool success;

  factory _$GetApiWorkspacesByWorkspaceIdUpdates200Response(
          [void Function(
                  GetApiWorkspacesByWorkspaceIdUpdates200ResponseBuilder)?
              updates]) =>
      (GetApiWorkspacesByWorkspaceIdUpdates200ResponseBuilder()
            ..update(updates))
          ._build();

  _$GetApiWorkspacesByWorkspaceIdUpdates200Response._(
      {required this.data, required this.success})
      : super._();
  @override
  GetApiWorkspacesByWorkspaceIdUpdates200Response rebuild(
          void Function(GetApiWorkspacesByWorkspaceIdUpdates200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiWorkspacesByWorkspaceIdUpdates200ResponseBuilder toBuilder() =>
      GetApiWorkspacesByWorkspaceIdUpdates200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetApiWorkspacesByWorkspaceIdUpdates200Response &&
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
            r'GetApiWorkspacesByWorkspaceIdUpdates200Response')
          ..add('data', data)
          ..add('success', success))
        .toString();
  }
}

class GetApiWorkspacesByWorkspaceIdUpdates200ResponseBuilder
    implements
        Builder<GetApiWorkspacesByWorkspaceIdUpdates200Response,
            GetApiWorkspacesByWorkspaceIdUpdates200ResponseBuilder> {
  _$GetApiWorkspacesByWorkspaceIdUpdates200Response? _$v;

  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataBuilder? _data;
  GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataBuilder get data =>
      _$this._data ??=
          GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataBuilder();
  set data(GetApiWorkspacesByWorkspaceIdUpdates200ResponseDataBuilder? data) =>
      _$this._data = data;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  GetApiWorkspacesByWorkspaceIdUpdates200ResponseBuilder() {
    GetApiWorkspacesByWorkspaceIdUpdates200Response._defaults(this);
  }

  GetApiWorkspacesByWorkspaceIdUpdates200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetApiWorkspacesByWorkspaceIdUpdates200Response other) {
    _$v = other as _$GetApiWorkspacesByWorkspaceIdUpdates200Response;
  }

  @override
  void update(
      void Function(GetApiWorkspacesByWorkspaceIdUpdates200ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiWorkspacesByWorkspaceIdUpdates200Response build() => _build();

  _$GetApiWorkspacesByWorkspaceIdUpdates200Response _build() {
    _$GetApiWorkspacesByWorkspaceIdUpdates200Response _$result;
    try {
      _$result = _$v ??
          _$GetApiWorkspacesByWorkspaceIdUpdates200Response._(
            data: data.build(),
            success: BuiltValueNullFieldError.checkNotNull(success,
                r'GetApiWorkspacesByWorkspaceIdUpdates200Response', 'success'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetApiWorkspacesByWorkspaceIdUpdates200Response',
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
