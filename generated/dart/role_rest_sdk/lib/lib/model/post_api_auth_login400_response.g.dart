// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_auth_login400_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiAuthLogin400Response extends PostApiAuthLogin400Response {
  @override
  final PostApiAuthLogin400ResponseError error;
  @override
  final bool success;

  factory _$PostApiAuthLogin400Response(
          [void Function(PostApiAuthLogin400ResponseBuilder)? updates]) =>
      (PostApiAuthLogin400ResponseBuilder()..update(updates))._build();

  _$PostApiAuthLogin400Response._({required this.error, required this.success})
      : super._();
  @override
  PostApiAuthLogin400Response rebuild(
          void Function(PostApiAuthLogin400ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiAuthLogin400ResponseBuilder toBuilder() =>
      PostApiAuthLogin400ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiAuthLogin400Response &&
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
    return (newBuiltValueToStringHelper(r'PostApiAuthLogin400Response')
          ..add('error', error)
          ..add('success', success))
        .toString();
  }
}

class PostApiAuthLogin400ResponseBuilder
    implements
        Builder<PostApiAuthLogin400Response,
            PostApiAuthLogin400ResponseBuilder> {
  _$PostApiAuthLogin400Response? _$v;

  PostApiAuthLogin400ResponseErrorBuilder? _error;
  PostApiAuthLogin400ResponseErrorBuilder get error =>
      _$this._error ??= PostApiAuthLogin400ResponseErrorBuilder();
  set error(PostApiAuthLogin400ResponseErrorBuilder? error) =>
      _$this._error = error;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  PostApiAuthLogin400ResponseBuilder() {
    PostApiAuthLogin400Response._defaults(this);
  }

  PostApiAuthLogin400ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error.toBuilder();
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiAuthLogin400Response other) {
    _$v = other as _$PostApiAuthLogin400Response;
  }

  @override
  void update(void Function(PostApiAuthLogin400ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiAuthLogin400Response build() => _build();

  _$PostApiAuthLogin400Response _build() {
    _$PostApiAuthLogin400Response _$result;
    try {
      _$result = _$v ??
          _$PostApiAuthLogin400Response._(
            error: error.build(),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'PostApiAuthLogin400Response', 'success'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'error';
        error.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostApiAuthLogin400Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
