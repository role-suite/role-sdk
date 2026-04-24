// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs_request_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdRunsRequestOptions
    extends PostApiWorkspacesByWorkspaceIdRunsRequestOptions {
  @override
  final bool? followRedirects;
  @override
  final int? maxResponseBytes;
  @override
  final int? timeoutMs;

  factory _$PostApiWorkspacesByWorkspaceIdRunsRequestOptions(
          [void Function(
                  PostApiWorkspacesByWorkspaceIdRunsRequestOptionsBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdRunsRequestOptionsBuilder()
            ..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdRunsRequestOptions._(
      {this.followRedirects, this.maxResponseBytes, this.timeoutMs})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestOptions rebuild(
          void Function(PostApiWorkspacesByWorkspaceIdRunsRequestOptionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestOptionsBuilder toBuilder() =>
      PostApiWorkspacesByWorkspaceIdRunsRequestOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiWorkspacesByWorkspaceIdRunsRequestOptions &&
        followRedirects == other.followRedirects &&
        maxResponseBytes == other.maxResponseBytes &&
        timeoutMs == other.timeoutMs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, followRedirects.hashCode);
    _$hash = $jc(_$hash, maxResponseBytes.hashCode);
    _$hash = $jc(_$hash, timeoutMs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PostApiWorkspacesByWorkspaceIdRunsRequestOptions')
          ..add('followRedirects', followRedirects)
          ..add('maxResponseBytes', maxResponseBytes)
          ..add('timeoutMs', timeoutMs))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdRunsRequestOptionsBuilder
    implements
        Builder<PostApiWorkspacesByWorkspaceIdRunsRequestOptions,
            PostApiWorkspacesByWorkspaceIdRunsRequestOptionsBuilder> {
  _$PostApiWorkspacesByWorkspaceIdRunsRequestOptions? _$v;

  bool? _followRedirects;
  bool? get followRedirects => _$this._followRedirects;
  set followRedirects(bool? followRedirects) =>
      _$this._followRedirects = followRedirects;

  int? _maxResponseBytes;
  int? get maxResponseBytes => _$this._maxResponseBytes;
  set maxResponseBytes(int? maxResponseBytes) =>
      _$this._maxResponseBytes = maxResponseBytes;

  int? _timeoutMs;
  int? get timeoutMs => _$this._timeoutMs;
  set timeoutMs(int? timeoutMs) => _$this._timeoutMs = timeoutMs;

  PostApiWorkspacesByWorkspaceIdRunsRequestOptionsBuilder() {
    PostApiWorkspacesByWorkspaceIdRunsRequestOptions._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdRunsRequestOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _followRedirects = $v.followRedirects;
      _maxResponseBytes = $v.maxResponseBytes;
      _timeoutMs = $v.timeoutMs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiWorkspacesByWorkspaceIdRunsRequestOptions other) {
    _$v = other as _$PostApiWorkspacesByWorkspaceIdRunsRequestOptions;
  }

  @override
  void update(
      void Function(PostApiWorkspacesByWorkspaceIdRunsRequestOptionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestOptions build() => _build();

  _$PostApiWorkspacesByWorkspaceIdRunsRequestOptions _build() {
    final _$result = _$v ??
        _$PostApiWorkspacesByWorkspaceIdRunsRequestOptions._(
          followRedirects: followRedirects,
          maxResponseBytes: maxResponseBytes,
          timeoutMs: timeoutMs,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
