// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_import_export_jobs200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiWorkspacesByWorkspaceIdImportExportJobs200Response
    extends GetApiWorkspacesByWorkspaceIdImportExportJobs200Response {
  @override
  final GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseData data;
  @override
  final bool success;

  factory _$GetApiWorkspacesByWorkspaceIdImportExportJobs200Response(
          [void Function(
                  GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseBuilder)?
              updates]) =>
      (GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseBuilder()
            ..update(updates))
          ._build();

  _$GetApiWorkspacesByWorkspaceIdImportExportJobs200Response._(
      {required this.data, required this.success})
      : super._();
  @override
  GetApiWorkspacesByWorkspaceIdImportExportJobs200Response rebuild(
          void Function(
                  GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseBuilder toBuilder() =>
      GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetApiWorkspacesByWorkspaceIdImportExportJobs200Response &&
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
            r'GetApiWorkspacesByWorkspaceIdImportExportJobs200Response')
          ..add('data', data)
          ..add('success', success))
        .toString();
  }
}

class GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseBuilder
    implements
        Builder<GetApiWorkspacesByWorkspaceIdImportExportJobs200Response,
            GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseBuilder> {
  _$GetApiWorkspacesByWorkspaceIdImportExportJobs200Response? _$v;

  GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseDataBuilder? _data;
  GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseDataBuilder
      get data => _$this._data ??=
          GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseDataBuilder();
  set data(
          GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseDataBuilder?
              data) =>
      _$this._data = data;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseBuilder() {
    GetApiWorkspacesByWorkspaceIdImportExportJobs200Response._defaults(this);
  }

  GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetApiWorkspacesByWorkspaceIdImportExportJobs200Response other) {
    _$v = other as _$GetApiWorkspacesByWorkspaceIdImportExportJobs200Response;
  }

  @override
  void update(
      void Function(
              GetApiWorkspacesByWorkspaceIdImportExportJobs200ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiWorkspacesByWorkspaceIdImportExportJobs200Response build() => _build();

  _$GetApiWorkspacesByWorkspaceIdImportExportJobs200Response _build() {
    _$GetApiWorkspacesByWorkspaceIdImportExportJobs200Response _$result;
    try {
      _$result = _$v ??
          _$GetApiWorkspacesByWorkspaceIdImportExportJobs200Response._(
            data: data.build(),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'GetApiWorkspacesByWorkspaceIdImportExportJobs200Response',
                'success'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetApiWorkspacesByWorkspaceIdImportExportJobs200Response',
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
