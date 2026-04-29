// This is a generated file - do not edit.
//
// Generated from workspaces.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'workspaces.pb.dart' as $0;

export 'workspaces.pb.dart';

@$pb.GrpcServiceName('role.v1.WorkspacesService')
class WorkspacesServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  WorkspacesServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.ListWorkspacesResponse> list(
    $0.ListWorkspacesRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetWorkspaceResponse> getById(
    $0.WorkspaceIdRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getById, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreateWorkspaceResponse> create(
    $0.CreateWorkspaceRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListWorkspaceMembersResponse> listMembers(
    $0.WorkspaceIdRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$listMembers, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddWorkspaceMemberResponse> addMember(
    $0.AddWorkspaceMemberRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$addMember, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreateWorkspaceInvitationResponse> createInvitation(
    $0.CreateWorkspaceInvitationRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createInvitation, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateWorkspaceMemberRoleResponse> updateMemberRole(
    $0.UpdateWorkspaceMemberRoleRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateMemberRole, request, options: options);
  }

  $grpc.ResponseFuture<$0.ActionResponse> removeMember(
    $0.RemoveWorkspaceMemberRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$removeMember, request, options: options);
  }

  $grpc.ResponseFuture<$0.JoinWorkspaceResponse> join(
    $0.JoinWorkspaceRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$join, request, options: options);
  }

  $grpc.ResponseFuture<$0.ActionResponse> leave(
    $0.LeaveWorkspaceRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$leave, request, options: options);
  }

  $grpc.ResponseFuture<$0.ConvertWorkspaceToTeamResponse> convertToTeam(
    $0.ConvertWorkspaceToTeamRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$convertToTeam, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListWorkspaceUpdatesResponse> listUpdates(
    $0.ListWorkspaceUpdatesRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$listUpdates, request, options: options);
  }

  // method descriptors

  static final _$list =
      $grpc.ClientMethod<$0.ListWorkspacesRequest, $0.ListWorkspacesResponse>(
          '/role.v1.WorkspacesService/List',
          ($0.ListWorkspacesRequest value) => value.writeToBuffer(),
          $0.ListWorkspacesResponse.fromBuffer);
  static final _$getById =
      $grpc.ClientMethod<$0.WorkspaceIdRequest, $0.GetWorkspaceResponse>(
          '/role.v1.WorkspacesService/GetById',
          ($0.WorkspaceIdRequest value) => value.writeToBuffer(),
          $0.GetWorkspaceResponse.fromBuffer);
  static final _$create =
      $grpc.ClientMethod<$0.CreateWorkspaceRequest, $0.CreateWorkspaceResponse>(
          '/role.v1.WorkspacesService/Create',
          ($0.CreateWorkspaceRequest value) => value.writeToBuffer(),
          $0.CreateWorkspaceResponse.fromBuffer);
  static final _$listMembers = $grpc.ClientMethod<$0.WorkspaceIdRequest,
          $0.ListWorkspaceMembersResponse>(
      '/role.v1.WorkspacesService/ListMembers',
      ($0.WorkspaceIdRequest value) => value.writeToBuffer(),
      $0.ListWorkspaceMembersResponse.fromBuffer);
  static final _$addMember = $grpc.ClientMethod<$0.AddWorkspaceMemberRequest,
          $0.AddWorkspaceMemberResponse>(
      '/role.v1.WorkspacesService/AddMember',
      ($0.AddWorkspaceMemberRequest value) => value.writeToBuffer(),
      $0.AddWorkspaceMemberResponse.fromBuffer);
  static final _$createInvitation = $grpc.ClientMethod<
          $0.CreateWorkspaceInvitationRequest,
          $0.CreateWorkspaceInvitationResponse>(
      '/role.v1.WorkspacesService/CreateInvitation',
      ($0.CreateWorkspaceInvitationRequest value) => value.writeToBuffer(),
      $0.CreateWorkspaceInvitationResponse.fromBuffer);
  static final _$updateMemberRole = $grpc.ClientMethod<
          $0.UpdateWorkspaceMemberRoleRequest,
          $0.UpdateWorkspaceMemberRoleResponse>(
      '/role.v1.WorkspacesService/UpdateMemberRole',
      ($0.UpdateWorkspaceMemberRoleRequest value) => value.writeToBuffer(),
      $0.UpdateWorkspaceMemberRoleResponse.fromBuffer);
  static final _$removeMember =
      $grpc.ClientMethod<$0.RemoveWorkspaceMemberRequest, $0.ActionResponse>(
          '/role.v1.WorkspacesService/RemoveMember',
          ($0.RemoveWorkspaceMemberRequest value) => value.writeToBuffer(),
          $0.ActionResponse.fromBuffer);
  static final _$join =
      $grpc.ClientMethod<$0.JoinWorkspaceRequest, $0.JoinWorkspaceResponse>(
          '/role.v1.WorkspacesService/Join',
          ($0.JoinWorkspaceRequest value) => value.writeToBuffer(),
          $0.JoinWorkspaceResponse.fromBuffer);
  static final _$leave =
      $grpc.ClientMethod<$0.LeaveWorkspaceRequest, $0.ActionResponse>(
          '/role.v1.WorkspacesService/Leave',
          ($0.LeaveWorkspaceRequest value) => value.writeToBuffer(),
          $0.ActionResponse.fromBuffer);
  static final _$convertToTeam = $grpc.ClientMethod<
          $0.ConvertWorkspaceToTeamRequest, $0.ConvertWorkspaceToTeamResponse>(
      '/role.v1.WorkspacesService/ConvertToTeam',
      ($0.ConvertWorkspaceToTeamRequest value) => value.writeToBuffer(),
      $0.ConvertWorkspaceToTeamResponse.fromBuffer);
  static final _$listUpdates = $grpc.ClientMethod<
          $0.ListWorkspaceUpdatesRequest, $0.ListWorkspaceUpdatesResponse>(
      '/role.v1.WorkspacesService/ListUpdates',
      ($0.ListWorkspaceUpdatesRequest value) => value.writeToBuffer(),
      $0.ListWorkspaceUpdatesResponse.fromBuffer);
}

@$pb.GrpcServiceName('role.v1.WorkspacesService')
abstract class WorkspacesServiceBase extends $grpc.Service {
  $core.String get $name => 'role.v1.WorkspacesService';

  WorkspacesServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ListWorkspacesRequest,
            $0.ListWorkspacesResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ListWorkspacesRequest.fromBuffer(value),
        ($0.ListWorkspacesResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.WorkspaceIdRequest, $0.GetWorkspaceResponse>(
            'GetById',
            getById_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.WorkspaceIdRequest.fromBuffer(value),
            ($0.GetWorkspaceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateWorkspaceRequest,
            $0.CreateWorkspaceResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateWorkspaceRequest.fromBuffer(value),
        ($0.CreateWorkspaceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.WorkspaceIdRequest,
            $0.ListWorkspaceMembersResponse>(
        'ListMembers',
        listMembers_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.WorkspaceIdRequest.fromBuffer(value),
        ($0.ListWorkspaceMembersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddWorkspaceMemberRequest,
            $0.AddWorkspaceMemberResponse>(
        'AddMember',
        addMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AddWorkspaceMemberRequest.fromBuffer(value),
        ($0.AddWorkspaceMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateWorkspaceInvitationRequest,
            $0.CreateWorkspaceInvitationResponse>(
        'CreateInvitation',
        createInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateWorkspaceInvitationRequest.fromBuffer(value),
        ($0.CreateWorkspaceInvitationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateWorkspaceMemberRoleRequest,
            $0.UpdateWorkspaceMemberRoleResponse>(
        'UpdateMemberRole',
        updateMemberRole_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UpdateWorkspaceMemberRoleRequest.fromBuffer(value),
        ($0.UpdateWorkspaceMemberRoleResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.RemoveWorkspaceMemberRequest, $0.ActionResponse>(
            'RemoveMember',
            removeMember_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.RemoveWorkspaceMemberRequest.fromBuffer(value),
            ($0.ActionResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.JoinWorkspaceRequest, $0.JoinWorkspaceResponse>(
            'Join',
            join_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.JoinWorkspaceRequest.fromBuffer(value),
            ($0.JoinWorkspaceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LeaveWorkspaceRequest, $0.ActionResponse>(
        'Leave',
        leave_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.LeaveWorkspaceRequest.fromBuffer(value),
        ($0.ActionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ConvertWorkspaceToTeamRequest,
            $0.ConvertWorkspaceToTeamResponse>(
        'ConvertToTeam',
        convertToTeam_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ConvertWorkspaceToTeamRequest.fromBuffer(value),
        ($0.ConvertWorkspaceToTeamResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListWorkspaceUpdatesRequest,
            $0.ListWorkspaceUpdatesResponse>(
        'ListUpdates',
        listUpdates_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ListWorkspaceUpdatesRequest.fromBuffer(value),
        ($0.ListWorkspaceUpdatesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListWorkspacesResponse> list_Pre($grpc.ServiceCall $call,
      $async.Future<$0.ListWorkspacesRequest> $request) async {
    return list($call, await $request);
  }

  $async.Future<$0.ListWorkspacesResponse> list(
      $grpc.ServiceCall call, $0.ListWorkspacesRequest request);

  $async.Future<$0.GetWorkspaceResponse> getById_Pre($grpc.ServiceCall $call,
      $async.Future<$0.WorkspaceIdRequest> $request) async {
    return getById($call, await $request);
  }

  $async.Future<$0.GetWorkspaceResponse> getById(
      $grpc.ServiceCall call, $0.WorkspaceIdRequest request);

  $async.Future<$0.CreateWorkspaceResponse> create_Pre($grpc.ServiceCall $call,
      $async.Future<$0.CreateWorkspaceRequest> $request) async {
    return create($call, await $request);
  }

  $async.Future<$0.CreateWorkspaceResponse> create(
      $grpc.ServiceCall call, $0.CreateWorkspaceRequest request);

  $async.Future<$0.ListWorkspaceMembersResponse> listMembers_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.WorkspaceIdRequest> $request) async {
    return listMembers($call, await $request);
  }

  $async.Future<$0.ListWorkspaceMembersResponse> listMembers(
      $grpc.ServiceCall call, $0.WorkspaceIdRequest request);

  $async.Future<$0.AddWorkspaceMemberResponse> addMember_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.AddWorkspaceMemberRequest> $request) async {
    return addMember($call, await $request);
  }

  $async.Future<$0.AddWorkspaceMemberResponse> addMember(
      $grpc.ServiceCall call, $0.AddWorkspaceMemberRequest request);

  $async.Future<$0.CreateWorkspaceInvitationResponse> createInvitation_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.CreateWorkspaceInvitationRequest> $request) async {
    return createInvitation($call, await $request);
  }

  $async.Future<$0.CreateWorkspaceInvitationResponse> createInvitation(
      $grpc.ServiceCall call, $0.CreateWorkspaceInvitationRequest request);

  $async.Future<$0.UpdateWorkspaceMemberRoleResponse> updateMemberRole_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.UpdateWorkspaceMemberRoleRequest> $request) async {
    return updateMemberRole($call, await $request);
  }

  $async.Future<$0.UpdateWorkspaceMemberRoleResponse> updateMemberRole(
      $grpc.ServiceCall call, $0.UpdateWorkspaceMemberRoleRequest request);

  $async.Future<$0.ActionResponse> removeMember_Pre($grpc.ServiceCall $call,
      $async.Future<$0.RemoveWorkspaceMemberRequest> $request) async {
    return removeMember($call, await $request);
  }

  $async.Future<$0.ActionResponse> removeMember(
      $grpc.ServiceCall call, $0.RemoveWorkspaceMemberRequest request);

  $async.Future<$0.JoinWorkspaceResponse> join_Pre($grpc.ServiceCall $call,
      $async.Future<$0.JoinWorkspaceRequest> $request) async {
    return join($call, await $request);
  }

  $async.Future<$0.JoinWorkspaceResponse> join(
      $grpc.ServiceCall call, $0.JoinWorkspaceRequest request);

  $async.Future<$0.ActionResponse> leave_Pre($grpc.ServiceCall $call,
      $async.Future<$0.LeaveWorkspaceRequest> $request) async {
    return leave($call, await $request);
  }

  $async.Future<$0.ActionResponse> leave(
      $grpc.ServiceCall call, $0.LeaveWorkspaceRequest request);

  $async.Future<$0.ConvertWorkspaceToTeamResponse> convertToTeam_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.ConvertWorkspaceToTeamRequest> $request) async {
    return convertToTeam($call, await $request);
  }

  $async.Future<$0.ConvertWorkspaceToTeamResponse> convertToTeam(
      $grpc.ServiceCall call, $0.ConvertWorkspaceToTeamRequest request);

  $async.Future<$0.ListWorkspaceUpdatesResponse> listUpdates_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.ListWorkspaceUpdatesRequest> $request) async {
    return listUpdates($call, await $request);
  }

  $async.Future<$0.ListWorkspaceUpdatesResponse> listUpdates(
      $grpc.ServiceCall call, $0.ListWorkspaceUpdatesRequest request);
}
