// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_auth_logout200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiAuthLogout200Response extends PostApiAuthLogout200Response {
  @override
  final PostApiAuthLogout200ResponseData data;
  @override
  final bool success;

  factory _$PostApiAuthLogout200Response(
          [void Function(PostApiAuthLogout200ResponseBuilder)? updates]) =>
      (PostApiAuthLogout200ResponseBuilder()..update(updates))._build();

  _$PostApiAuthLogout200Response._({required this.data, required this.success})
      : super._();
  @override
  PostApiAuthLogout200Response rebuild(
          void Function(PostApiAuthLogout200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiAuthLogout200ResponseBuilder toBuilder() =>
      PostApiAuthLogout200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiAuthLogout200Response &&
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
    return (newBuiltValueToStringHelper(r'PostApiAuthLogout200Response')
          ..add('data', data)
          ..add('success', success))
        .toString();
  }
}

class PostApiAuthLogout200ResponseBuilder
    implements
        Builder<PostApiAuthLogout200Response,
            PostApiAuthLogout200ResponseBuilder> {
  _$PostApiAuthLogout200Response? _$v;

  PostApiAuthLogout200ResponseDataBuilder? _data;
  PostApiAuthLogout200ResponseDataBuilder get data =>
      _$this._data ??= PostApiAuthLogout200ResponseDataBuilder();
  set data(PostApiAuthLogout200ResponseDataBuilder? data) =>
      _$this._data = data;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  PostApiAuthLogout200ResponseBuilder() {
    PostApiAuthLogout200Response._defaults(this);
  }

  PostApiAuthLogout200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiAuthLogout200Response other) {
    _$v = other as _$PostApiAuthLogout200Response;
  }

  @override
  void update(void Function(PostApiAuthLogout200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiAuthLogout200Response build() => _build();

  _$PostApiAuthLogout200Response _build() {
    _$PostApiAuthLogout200Response _$result;
    try {
      _$result = _$v ??
          _$PostApiAuthLogout200Response._(
            data: data.build(),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'PostApiAuthLogout200Response', 'success'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostApiAuthLogout200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
