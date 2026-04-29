// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_auth_login200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiAuthLogin200Response extends PostApiAuthLogin200Response {
  @override
  final PostApiAuthLogin200ResponseData data;
  @override
  final bool success;

  factory _$PostApiAuthLogin200Response(
          [void Function(PostApiAuthLogin200ResponseBuilder)? updates]) =>
      (PostApiAuthLogin200ResponseBuilder()..update(updates))._build();

  _$PostApiAuthLogin200Response._({required this.data, required this.success})
      : super._();
  @override
  PostApiAuthLogin200Response rebuild(
          void Function(PostApiAuthLogin200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiAuthLogin200ResponseBuilder toBuilder() =>
      PostApiAuthLogin200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiAuthLogin200Response &&
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
    return (newBuiltValueToStringHelper(r'PostApiAuthLogin200Response')
          ..add('data', data)
          ..add('success', success))
        .toString();
  }
}

class PostApiAuthLogin200ResponseBuilder
    implements
        Builder<PostApiAuthLogin200Response,
            PostApiAuthLogin200ResponseBuilder> {
  _$PostApiAuthLogin200Response? _$v;

  PostApiAuthLogin200ResponseDataBuilder? _data;
  PostApiAuthLogin200ResponseDataBuilder get data =>
      _$this._data ??= PostApiAuthLogin200ResponseDataBuilder();
  set data(PostApiAuthLogin200ResponseDataBuilder? data) => _$this._data = data;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  PostApiAuthLogin200ResponseBuilder() {
    PostApiAuthLogin200Response._defaults(this);
  }

  PostApiAuthLogin200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiAuthLogin200Response other) {
    _$v = other as _$PostApiAuthLogin200Response;
  }

  @override
  void update(void Function(PostApiAuthLogin200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiAuthLogin200Response build() => _build();

  _$PostApiAuthLogin200Response _build() {
    _$PostApiAuthLogin200Response _$result;
    try {
      _$result = _$v ??
          _$PostApiAuthLogin200Response._(
            data: data.build(),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'PostApiAuthLogin200Response', 'success'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostApiAuthLogin200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
