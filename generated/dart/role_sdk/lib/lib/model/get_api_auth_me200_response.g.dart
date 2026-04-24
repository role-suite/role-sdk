// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_auth_me200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiAuthMe200Response extends GetApiAuthMe200Response {
  @override
  final GetApiAuthMe200ResponseData data;
  @override
  final bool success;

  factory _$GetApiAuthMe200Response(
          [void Function(GetApiAuthMe200ResponseBuilder)? updates]) =>
      (GetApiAuthMe200ResponseBuilder()..update(updates))._build();

  _$GetApiAuthMe200Response._({required this.data, required this.success})
      : super._();
  @override
  GetApiAuthMe200Response rebuild(
          void Function(GetApiAuthMe200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiAuthMe200ResponseBuilder toBuilder() =>
      GetApiAuthMe200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetApiAuthMe200Response &&
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
    return (newBuiltValueToStringHelper(r'GetApiAuthMe200Response')
          ..add('data', data)
          ..add('success', success))
        .toString();
  }
}

class GetApiAuthMe200ResponseBuilder
    implements
        Builder<GetApiAuthMe200Response, GetApiAuthMe200ResponseBuilder> {
  _$GetApiAuthMe200Response? _$v;

  GetApiAuthMe200ResponseDataBuilder? _data;
  GetApiAuthMe200ResponseDataBuilder get data =>
      _$this._data ??= GetApiAuthMe200ResponseDataBuilder();
  set data(GetApiAuthMe200ResponseDataBuilder? data) => _$this._data = data;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  GetApiAuthMe200ResponseBuilder() {
    GetApiAuthMe200Response._defaults(this);
  }

  GetApiAuthMe200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetApiAuthMe200Response other) {
    _$v = other as _$GetApiAuthMe200Response;
  }

  @override
  void update(void Function(GetApiAuthMe200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiAuthMe200Response build() => _build();

  _$GetApiAuthMe200Response _build() {
    _$GetApiAuthMe200Response _$result;
    try {
      _$result = _$v ??
          _$GetApiAuthMe200Response._(
            data: data.build(),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'GetApiAuthMe200Response', 'success'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetApiAuthMe200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
