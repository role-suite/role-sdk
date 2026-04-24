// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces_by_workspace_id_collections200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiWorkspacesByWorkspaceIdCollections200Response
    extends GetApiWorkspacesByWorkspaceIdCollections200Response {
  @override
  final GetApiWorkspacesByWorkspaceIdCollections200ResponseData data;
  @override
  final bool success;

  factory _$GetApiWorkspacesByWorkspaceIdCollections200Response(
          [void Function(
                  GetApiWorkspacesByWorkspaceIdCollections200ResponseBuilder)?
              updates]) =>
      (GetApiWorkspacesByWorkspaceIdCollections200ResponseBuilder()
            ..update(updates))
          ._build();

  _$GetApiWorkspacesByWorkspaceIdCollections200Response._(
      {required this.data, required this.success})
      : super._();
  @override
  GetApiWorkspacesByWorkspaceIdCollections200Response rebuild(
          void Function(
                  GetApiWorkspacesByWorkspaceIdCollections200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiWorkspacesByWorkspaceIdCollections200ResponseBuilder toBuilder() =>
      GetApiWorkspacesByWorkspaceIdCollections200ResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetApiWorkspacesByWorkspaceIdCollections200Response &&
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
            r'GetApiWorkspacesByWorkspaceIdCollections200Response')
          ..add('data', data)
          ..add('success', success))
        .toString();
  }
}

class GetApiWorkspacesByWorkspaceIdCollections200ResponseBuilder
    implements
        Builder<GetApiWorkspacesByWorkspaceIdCollections200Response,
            GetApiWorkspacesByWorkspaceIdCollections200ResponseBuilder> {
  _$GetApiWorkspacesByWorkspaceIdCollections200Response? _$v;

  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataBuilder? _data;
  GetApiWorkspacesByWorkspaceIdCollections200ResponseDataBuilder get data =>
      _$this._data ??=
          GetApiWorkspacesByWorkspaceIdCollections200ResponseDataBuilder();
  set data(
          GetApiWorkspacesByWorkspaceIdCollections200ResponseDataBuilder?
              data) =>
      _$this._data = data;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  GetApiWorkspacesByWorkspaceIdCollections200ResponseBuilder() {
    GetApiWorkspacesByWorkspaceIdCollections200Response._defaults(this);
  }

  GetApiWorkspacesByWorkspaceIdCollections200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetApiWorkspacesByWorkspaceIdCollections200Response other) {
    _$v = other as _$GetApiWorkspacesByWorkspaceIdCollections200Response;
  }

  @override
  void update(
      void Function(GetApiWorkspacesByWorkspaceIdCollections200ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiWorkspacesByWorkspaceIdCollections200Response build() => _build();

  _$GetApiWorkspacesByWorkspaceIdCollections200Response _build() {
    _$GetApiWorkspacesByWorkspaceIdCollections200Response _$result;
    try {
      _$result = _$v ??
          _$GetApiWorkspacesByWorkspaceIdCollections200Response._(
            data: data.build(),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'GetApiWorkspacesByWorkspaceIdCollections200Response',
                'success'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetApiWorkspacesByWorkspaceIdCollections200Response',
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
