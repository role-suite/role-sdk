// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_workspaces200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiWorkspaces200Response extends GetApiWorkspaces200Response {
  @override
  final GetApiWorkspaces200ResponseData data;
  @override
  final bool success;

  factory _$GetApiWorkspaces200Response(
          [void Function(GetApiWorkspaces200ResponseBuilder)? updates]) =>
      (GetApiWorkspaces200ResponseBuilder()..update(updates))._build();

  _$GetApiWorkspaces200Response._({required this.data, required this.success})
      : super._();
  @override
  GetApiWorkspaces200Response rebuild(
          void Function(GetApiWorkspaces200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiWorkspaces200ResponseBuilder toBuilder() =>
      GetApiWorkspaces200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetApiWorkspaces200Response &&
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
    return (newBuiltValueToStringHelper(r'GetApiWorkspaces200Response')
          ..add('data', data)
          ..add('success', success))
        .toString();
  }
}

class GetApiWorkspaces200ResponseBuilder
    implements
        Builder<GetApiWorkspaces200Response,
            GetApiWorkspaces200ResponseBuilder> {
  _$GetApiWorkspaces200Response? _$v;

  GetApiWorkspaces200ResponseDataBuilder? _data;
  GetApiWorkspaces200ResponseDataBuilder get data =>
      _$this._data ??= GetApiWorkspaces200ResponseDataBuilder();
  set data(GetApiWorkspaces200ResponseDataBuilder? data) => _$this._data = data;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  GetApiWorkspaces200ResponseBuilder() {
    GetApiWorkspaces200Response._defaults(this);
  }

  GetApiWorkspaces200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetApiWorkspaces200Response other) {
    _$v = other as _$GetApiWorkspaces200Response;
  }

  @override
  void update(void Function(GetApiWorkspaces200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiWorkspaces200Response build() => _build();

  _$GetApiWorkspaces200Response _build() {
    _$GetApiWorkspaces200Response _$result;
    try {
      _$result = _$v ??
          _$GetApiWorkspaces200Response._(
            data: data.build(),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'GetApiWorkspaces200Response', 'success'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetApiWorkspaces200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
