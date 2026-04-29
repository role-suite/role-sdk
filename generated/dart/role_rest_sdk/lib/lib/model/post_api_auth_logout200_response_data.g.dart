// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_auth_logout200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiAuthLogout200ResponseData
    extends PostApiAuthLogout200ResponseData {
  @override
  final String action;

  factory _$PostApiAuthLogout200ResponseData(
          [void Function(PostApiAuthLogout200ResponseDataBuilder)? updates]) =>
      (PostApiAuthLogout200ResponseDataBuilder()..update(updates))._build();

  _$PostApiAuthLogout200ResponseData._({required this.action}) : super._();
  @override
  PostApiAuthLogout200ResponseData rebuild(
          void Function(PostApiAuthLogout200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiAuthLogout200ResponseDataBuilder toBuilder() =>
      PostApiAuthLogout200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiAuthLogout200ResponseData && action == other.action;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostApiAuthLogout200ResponseData')
          ..add('action', action))
        .toString();
  }
}

class PostApiAuthLogout200ResponseDataBuilder
    implements
        Builder<PostApiAuthLogout200ResponseData,
            PostApiAuthLogout200ResponseDataBuilder> {
  _$PostApiAuthLogout200ResponseData? _$v;

  String? _action;
  String? get action => _$this._action;
  set action(String? action) => _$this._action = action;

  PostApiAuthLogout200ResponseDataBuilder() {
    PostApiAuthLogout200ResponseData._defaults(this);
  }

  PostApiAuthLogout200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _action = $v.action;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiAuthLogout200ResponseData other) {
    _$v = other as _$PostApiAuthLogout200ResponseData;
  }

  @override
  void update(void Function(PostApiAuthLogout200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiAuthLogout200ResponseData build() => _build();

  _$PostApiAuthLogout200ResponseData _build() {
    final _$result = _$v ??
        _$PostApiAuthLogout200ResponseData._(
          action: BuiltValueNullFieldError.checkNotNull(
              action, r'PostApiAuthLogout200ResponseData', 'action'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
