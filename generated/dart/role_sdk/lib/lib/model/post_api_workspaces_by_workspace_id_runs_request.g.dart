// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_workspaces_by_workspace_id_runs_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostApiWorkspacesByWorkspaceIdRunsRequest
    extends PostApiWorkspacesByWorkspaceIdRunsRequest {
  @override
  final int? environmentId;
  @override
  final PostApiWorkspacesByWorkspaceIdRunsRequestOptions? options;
  @override
  final PostApiWorkspacesByWorkspaceIdRunsRequestSource source_;
  @override
  final BuiltList<
          PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner>?
      variableOverrides;

  factory _$PostApiWorkspacesByWorkspaceIdRunsRequest(
          [void Function(PostApiWorkspacesByWorkspaceIdRunsRequestBuilder)?
              updates]) =>
      (PostApiWorkspacesByWorkspaceIdRunsRequestBuilder()..update(updates))
          ._build();

  _$PostApiWorkspacesByWorkspaceIdRunsRequest._(
      {this.environmentId,
      this.options,
      required this.source_,
      this.variableOverrides})
      : super._();
  @override
  PostApiWorkspacesByWorkspaceIdRunsRequest rebuild(
          void Function(PostApiWorkspacesByWorkspaceIdRunsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequestBuilder toBuilder() =>
      PostApiWorkspacesByWorkspaceIdRunsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostApiWorkspacesByWorkspaceIdRunsRequest &&
        environmentId == other.environmentId &&
        options == other.options &&
        source_ == other.source_ &&
        variableOverrides == other.variableOverrides;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, environmentId.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, variableOverrides.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PostApiWorkspacesByWorkspaceIdRunsRequest')
          ..add('environmentId', environmentId)
          ..add('options', options)
          ..add('source_', source_)
          ..add('variableOverrides', variableOverrides))
        .toString();
  }
}

class PostApiWorkspacesByWorkspaceIdRunsRequestBuilder
    implements
        Builder<PostApiWorkspacesByWorkspaceIdRunsRequest,
            PostApiWorkspacesByWorkspaceIdRunsRequestBuilder> {
  _$PostApiWorkspacesByWorkspaceIdRunsRequest? _$v;

  int? _environmentId;
  int? get environmentId => _$this._environmentId;
  set environmentId(int? environmentId) =>
      _$this._environmentId = environmentId;

  PostApiWorkspacesByWorkspaceIdRunsRequestOptionsBuilder? _options;
  PostApiWorkspacesByWorkspaceIdRunsRequestOptionsBuilder get options =>
      _$this._options ??=
          PostApiWorkspacesByWorkspaceIdRunsRequestOptionsBuilder();
  set options(
          PostApiWorkspacesByWorkspaceIdRunsRequestOptionsBuilder? options) =>
      _$this._options = options;

  PostApiWorkspacesByWorkspaceIdRunsRequestSourceBuilder? _source_;
  PostApiWorkspacesByWorkspaceIdRunsRequestSourceBuilder get source_ =>
      _$this._source_ ??=
          PostApiWorkspacesByWorkspaceIdRunsRequestSourceBuilder();
  set source_(
          PostApiWorkspacesByWorkspaceIdRunsRequestSourceBuilder? source_) =>
      _$this._source_ = source_;

  ListBuilder<PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner>?
      _variableOverrides;
  ListBuilder<PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner>
      get variableOverrides => _$this._variableOverrides ??= ListBuilder<
          PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner>();
  set variableOverrides(
          ListBuilder<
                  PostApiWorkspacesByWorkspaceIdRunsRequestVariableOverridesInner>?
              variableOverrides) =>
      _$this._variableOverrides = variableOverrides;

  PostApiWorkspacesByWorkspaceIdRunsRequestBuilder() {
    PostApiWorkspacesByWorkspaceIdRunsRequest._defaults(this);
  }

  PostApiWorkspacesByWorkspaceIdRunsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _environmentId = $v.environmentId;
      _options = $v.options?.toBuilder();
      _source_ = $v.source_.toBuilder();
      _variableOverrides = $v.variableOverrides?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostApiWorkspacesByWorkspaceIdRunsRequest other) {
    _$v = other as _$PostApiWorkspacesByWorkspaceIdRunsRequest;
  }

  @override
  void update(
      void Function(PostApiWorkspacesByWorkspaceIdRunsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PostApiWorkspacesByWorkspaceIdRunsRequest build() => _build();

  _$PostApiWorkspacesByWorkspaceIdRunsRequest _build() {
    _$PostApiWorkspacesByWorkspaceIdRunsRequest _$result;
    try {
      _$result = _$v ??
          _$PostApiWorkspacesByWorkspaceIdRunsRequest._(
            environmentId: environmentId,
            options: _options?.build(),
            source_: source_.build(),
            variableOverrides: _variableOverrides?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        _options?.build();
        _$failedField = 'source_';
        source_.build();
        _$failedField = 'variableOverrides';
        _variableOverrides?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostApiWorkspacesByWorkspaceIdRunsRequest',
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
