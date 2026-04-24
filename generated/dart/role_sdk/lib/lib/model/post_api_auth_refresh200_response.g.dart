// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_auth_refresh200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiAuthRefresh200Response extends PostApiAuthRefresh200Response {
  @override
  final PostApiAuthRefresh200ResponseData data;
  @override
  final bool success;

  factory _$PostApiAuthRefresh200Response(
          [void Function(PostApiAuthRefresh200ResponseBuilder)? updates]) =>
      (PostApiAuthRefresh200ResponseBuilder()..update(updates))._build();

  _$PostApiAuthRefresh200Response._({required this.data, required this.success})
      : super._();
  @override
  PostApiAuthRefresh200Response rebuild(
          void Function(PostApiAuthRefresh200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiAuthRefresh200ResponseBuilder toBuilder() =>
      PostApiAuthRefresh200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiAuthRefresh200Response &&
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
    return (newBuiltValueToStringHelper(r'PostApiAuthRefresh200Response')
          ..add('data', data)
          ..add('success', success))
        .toString();
  }
}

class PostApiAuthRefresh200ResponseBuilder
    implements
        Builder<PostApiAuthRefresh200Response,
            PostApiAuthRefresh200ResponseBuilder> {
  _$PostApiAuthRefresh200Response? _$v;

  PostApiAuthRefresh200ResponseDataBuilder? _data;
  PostApiAuthRefresh200ResponseDataBuilder get data =>
      _$this._data ??= PostApiAuthRefresh200ResponseDataBuilder();
  set data(PostApiAuthRefresh200ResponseDataBuilder? data) =>
      _$this._data = data;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  PostApiAuthRefresh200ResponseBuilder() {
    PostApiAuthRefresh200Response._defaults(this);
  }

  PostApiAuthRefresh200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiAuthRefresh200Response other) {
    _$v = other as _$PostApiAuthRefresh200Response;
  }

  @override
  void update(void Function(PostApiAuthRefresh200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiAuthRefresh200Response build() => _build();

  _$PostApiAuthRefresh200Response _build() {
    _$PostApiAuthRefresh200Response _$result;
    try {
      _$result = _$v ??
          _$PostApiAuthRefresh200Response._(
            data: data.build(),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'PostApiAuthRefresh200Response', 'success'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostApiAuthRefresh200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
