// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_auth_login401_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiAuthLogin401Response extends PostApiAuthLogin401Response {
  @override
  final PostApiAuthLogin401ResponseError error;
  @override
  final bool success;

  factory _$PostApiAuthLogin401Response(
          [void Function(PostApiAuthLogin401ResponseBuilder)? updates]) =>
      (PostApiAuthLogin401ResponseBuilder()..update(updates))._build();

  _$PostApiAuthLogin401Response._({required this.error, required this.success})
      : super._();
  @override
  PostApiAuthLogin401Response rebuild(
          void Function(PostApiAuthLogin401ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiAuthLogin401ResponseBuilder toBuilder() =>
      PostApiAuthLogin401ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiAuthLogin401Response &&
        error == other.error &&
        success == other.success;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostApiAuthLogin401Response')
          ..add('error', error)
          ..add('success', success))
        .toString();
  }
}

class PostApiAuthLogin401ResponseBuilder
    implements
        Builder<PostApiAuthLogin401Response,
            PostApiAuthLogin401ResponseBuilder> {
  _$PostApiAuthLogin401Response? _$v;

  PostApiAuthLogin401ResponseErrorBuilder? _error;
  PostApiAuthLogin401ResponseErrorBuilder get error =>
      _$this._error ??= PostApiAuthLogin401ResponseErrorBuilder();
  set error(PostApiAuthLogin401ResponseErrorBuilder? error) =>
      _$this._error = error;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  PostApiAuthLogin401ResponseBuilder() {
    PostApiAuthLogin401Response._defaults(this);
  }

  PostApiAuthLogin401ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error.toBuilder();
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiAuthLogin401Response other) {
    _$v = other as _$PostApiAuthLogin401Response;
  }

  @override
  void update(void Function(PostApiAuthLogin401ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiAuthLogin401Response build() => _build();

  _$PostApiAuthLogin401Response _build() {
    _$PostApiAuthLogin401Response _$result;
    try {
      _$result = _$v ??
          _$PostApiAuthLogin401Response._(
            error: error.build(),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'PostApiAuthLogin401Response', 'success'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'error';
        error.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostApiAuthLogin401Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
