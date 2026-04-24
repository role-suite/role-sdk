# role_sdk.api.WorkspacesApi

## Load the API package
```dart
import 'package:role_sdk/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteApiWorkspacesByWorkspaceIdMembersByMemberUserId**](WorkspacesApi.md#deleteapiworkspacesbyworkspaceidmembersbymemberuserid) | **DELETE** /api/workspaces/{workspaceId}/members/{memberUserId} | 
[**getApiWorkspaces**](WorkspacesApi.md#getapiworkspaces) | **GET** /api/workspaces | 
[**getApiWorkspacesByWorkspaceId**](WorkspacesApi.md#getapiworkspacesbyworkspaceid) | **GET** /api/workspaces/{workspaceId} | 
[**getApiWorkspacesByWorkspaceIdMembers**](WorkspacesApi.md#getapiworkspacesbyworkspaceidmembers) | **GET** /api/workspaces/{workspaceId}/members | 
[**getApiWorkspacesByWorkspaceIdUpdates**](WorkspacesApi.md#getapiworkspacesbyworkspaceidupdates) | **GET** /api/workspaces/{workspaceId}/updates | 
[**patchApiWorkspacesByWorkspaceIdMembersByMemberUserId**](WorkspacesApi.md#patchapiworkspacesbyworkspaceidmembersbymemberuserid) | **PATCH** /api/workspaces/{workspaceId}/members/{memberUserId} | 
[**postApiWorkspaces**](WorkspacesApi.md#postapiworkspaces) | **POST** /api/workspaces | 
[**postApiWorkspacesByWorkspaceIdConvertToTeam**](WorkspacesApi.md#postapiworkspacesbyworkspaceidconverttoteam) | **POST** /api/workspaces/{workspaceId}/convert-to-team | 
[**postApiWorkspacesByWorkspaceIdInvitations**](WorkspacesApi.md#postapiworkspacesbyworkspaceidinvitations) | **POST** /api/workspaces/{workspaceId}/invitations | 
[**postApiWorkspacesByWorkspaceIdLeave**](WorkspacesApi.md#postapiworkspacesbyworkspaceidleave) | **POST** /api/workspaces/{workspaceId}/leave | 
[**postApiWorkspacesByWorkspaceIdMembers**](WorkspacesApi.md#postapiworkspacesbyworkspaceidmembers) | **POST** /api/workspaces/{workspaceId}/members | 
[**postApiWorkspacesJoin**](WorkspacesApi.md#postapiworkspacesjoin) | **POST** /api/workspaces/join | 


# **deleteApiWorkspacesByWorkspaceIdMembersByMemberUserId**
> PostApiAuthLogout200Response deleteApiWorkspacesByWorkspaceIdMembersByMemberUserId(workspaceId, memberUserId)



### Example
```dart
import 'package:role_sdk/api.dart';

final api = RoleSdk().getWorkspacesApi();
final int workspaceId = 56; // int | 
final int memberUserId = 56; // int | 

try {
    final response = api.deleteApiWorkspacesByWorkspaceIdMembersByMemberUserId(workspaceId, memberUserId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WorkspacesApi->deleteApiWorkspacesByWorkspaceIdMembersByMemberUserId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **int**|  | 
 **memberUserId** | **int**|  | 

### Return type

[**PostApiAuthLogout200Response**](PostApiAuthLogout200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getApiWorkspaces**
> GetApiWorkspaces200Response getApiWorkspaces()



### Example
```dart
import 'package:role_sdk/api.dart';

final api = RoleSdk().getWorkspacesApi();

try {
    final response = api.getApiWorkspaces();
    print(response);
} catch on DioException (e) {
    print('Exception when calling WorkspacesApi->getApiWorkspaces: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetApiWorkspaces200Response**](GetApiWorkspaces200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getApiWorkspacesByWorkspaceId**
> PostApiWorkspaces201Response getApiWorkspacesByWorkspaceId(workspaceId)



### Example
```dart
import 'package:role_sdk/api.dart';

final api = RoleSdk().getWorkspacesApi();
final int workspaceId = 56; // int | 

try {
    final response = api.getApiWorkspacesByWorkspaceId(workspaceId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WorkspacesApi->getApiWorkspacesByWorkspaceId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **int**|  | 

### Return type

[**PostApiWorkspaces201Response**](PostApiWorkspaces201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getApiWorkspacesByWorkspaceIdMembers**
> GetApiWorkspacesByWorkspaceIdMembers200Response getApiWorkspacesByWorkspaceIdMembers(workspaceId)



### Example
```dart
import 'package:role_sdk/api.dart';

final api = RoleSdk().getWorkspacesApi();
final int workspaceId = 56; // int | 

try {
    final response = api.getApiWorkspacesByWorkspaceIdMembers(workspaceId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WorkspacesApi->getApiWorkspacesByWorkspaceIdMembers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **int**|  | 

### Return type

[**GetApiWorkspacesByWorkspaceIdMembers200Response**](GetApiWorkspacesByWorkspaceIdMembers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getApiWorkspacesByWorkspaceIdUpdates**
> GetApiWorkspacesByWorkspaceIdUpdates200Response getApiWorkspacesByWorkspaceIdUpdates(workspaceId, limit, since)



### Example
```dart
import 'package:role_sdk/api.dart';

final api = RoleSdk().getWorkspacesApi();
final int workspaceId = 56; // int | 
final int limit = 56; // int | 
final int since = 56; // int | 

try {
    final response = api.getApiWorkspacesByWorkspaceIdUpdates(workspaceId, limit, since);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WorkspacesApi->getApiWorkspacesByWorkspaceIdUpdates: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **int**|  | 
 **limit** | **int**|  | [optional] [default to 50]
 **since** | **int**|  | [optional] [default to 0]

### Return type

[**GetApiWorkspacesByWorkspaceIdUpdates200Response**](GetApiWorkspacesByWorkspaceIdUpdates200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchApiWorkspacesByWorkspaceIdMembersByMemberUserId**
> PostApiWorkspacesByWorkspaceIdMembers201Response patchApiWorkspacesByWorkspaceIdMembersByMemberUserId(workspaceId, memberUserId, patchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest)



### Example
```dart
import 'package:role_sdk/api.dart';

final api = RoleSdk().getWorkspacesApi();
final int workspaceId = 56; // int | 
final int memberUserId = 56; // int | 
final PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest patchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest = ; // PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest | 

try {
    final response = api.patchApiWorkspacesByWorkspaceIdMembersByMemberUserId(workspaceId, memberUserId, patchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WorkspacesApi->patchApiWorkspacesByWorkspaceIdMembersByMemberUserId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **int**|  | 
 **memberUserId** | **int**|  | 
 **patchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest** | [**PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest**](PatchApiWorkspacesByWorkspaceIdMembersByMemberUserIdRequest.md)|  | 

### Return type

[**PostApiWorkspacesByWorkspaceIdMembers201Response**](PostApiWorkspacesByWorkspaceIdMembers201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postApiWorkspaces**
> PostApiWorkspaces201Response postApiWorkspaces(postApiWorkspacesRequest)



### Example
```dart
import 'package:role_sdk/api.dart';

final api = RoleSdk().getWorkspacesApi();
final PostApiWorkspacesRequest postApiWorkspacesRequest = ; // PostApiWorkspacesRequest | 

try {
    final response = api.postApiWorkspaces(postApiWorkspacesRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WorkspacesApi->postApiWorkspaces: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postApiWorkspacesRequest** | [**PostApiWorkspacesRequest**](PostApiWorkspacesRequest.md)|  | 

### Return type

[**PostApiWorkspaces201Response**](PostApiWorkspaces201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postApiWorkspacesByWorkspaceIdConvertToTeam**
> PostApiWorkspaces201Response postApiWorkspacesByWorkspaceIdConvertToTeam(workspaceId, postApiWorkspacesByWorkspaceIdConvertToTeamRequest)



### Example
```dart
import 'package:role_sdk/api.dart';

final api = RoleSdk().getWorkspacesApi();
final int workspaceId = 56; // int | 
final PostApiWorkspacesByWorkspaceIdConvertToTeamRequest postApiWorkspacesByWorkspaceIdConvertToTeamRequest = ; // PostApiWorkspacesByWorkspaceIdConvertToTeamRequest | 

try {
    final response = api.postApiWorkspacesByWorkspaceIdConvertToTeam(workspaceId, postApiWorkspacesByWorkspaceIdConvertToTeamRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WorkspacesApi->postApiWorkspacesByWorkspaceIdConvertToTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **int**|  | 
 **postApiWorkspacesByWorkspaceIdConvertToTeamRequest** | [**PostApiWorkspacesByWorkspaceIdConvertToTeamRequest**](PostApiWorkspacesByWorkspaceIdConvertToTeamRequest.md)|  | 

### Return type

[**PostApiWorkspaces201Response**](PostApiWorkspaces201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postApiWorkspacesByWorkspaceIdInvitations**
> PostApiWorkspacesByWorkspaceIdInvitations201Response postApiWorkspacesByWorkspaceIdInvitations(workspaceId, postApiWorkspacesByWorkspaceIdInvitationsRequest)



### Example
```dart
import 'package:role_sdk/api.dart';

final api = RoleSdk().getWorkspacesApi();
final int workspaceId = 56; // int | 
final PostApiWorkspacesByWorkspaceIdInvitationsRequest postApiWorkspacesByWorkspaceIdInvitationsRequest = ; // PostApiWorkspacesByWorkspaceIdInvitationsRequest | 

try {
    final response = api.postApiWorkspacesByWorkspaceIdInvitations(workspaceId, postApiWorkspacesByWorkspaceIdInvitationsRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WorkspacesApi->postApiWorkspacesByWorkspaceIdInvitations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **int**|  | 
 **postApiWorkspacesByWorkspaceIdInvitationsRequest** | [**PostApiWorkspacesByWorkspaceIdInvitationsRequest**](PostApiWorkspacesByWorkspaceIdInvitationsRequest.md)|  | 

### Return type

[**PostApiWorkspacesByWorkspaceIdInvitations201Response**](PostApiWorkspacesByWorkspaceIdInvitations201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postApiWorkspacesByWorkspaceIdLeave**
> PostApiAuthLogout200Response postApiWorkspacesByWorkspaceIdLeave(workspaceId)



### Example
```dart
import 'package:role_sdk/api.dart';

final api = RoleSdk().getWorkspacesApi();
final int workspaceId = 56; // int | 

try {
    final response = api.postApiWorkspacesByWorkspaceIdLeave(workspaceId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WorkspacesApi->postApiWorkspacesByWorkspaceIdLeave: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **int**|  | 

### Return type

[**PostApiAuthLogout200Response**](PostApiAuthLogout200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postApiWorkspacesByWorkspaceIdMembers**
> PostApiWorkspacesByWorkspaceIdMembers201Response postApiWorkspacesByWorkspaceIdMembers(workspaceId, postApiWorkspacesByWorkspaceIdInvitationsRequest)



### Example
```dart
import 'package:role_sdk/api.dart';

final api = RoleSdk().getWorkspacesApi();
final int workspaceId = 56; // int | 
final PostApiWorkspacesByWorkspaceIdInvitationsRequest postApiWorkspacesByWorkspaceIdInvitationsRequest = ; // PostApiWorkspacesByWorkspaceIdInvitationsRequest | 

try {
    final response = api.postApiWorkspacesByWorkspaceIdMembers(workspaceId, postApiWorkspacesByWorkspaceIdInvitationsRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WorkspacesApi->postApiWorkspacesByWorkspaceIdMembers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **int**|  | 
 **postApiWorkspacesByWorkspaceIdInvitationsRequest** | [**PostApiWorkspacesByWorkspaceIdInvitationsRequest**](PostApiWorkspacesByWorkspaceIdInvitationsRequest.md)|  | 

### Return type

[**PostApiWorkspacesByWorkspaceIdMembers201Response**](PostApiWorkspacesByWorkspaceIdMembers201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postApiWorkspacesJoin**
> PostApiWorkspaces201Response postApiWorkspacesJoin(postApiWorkspacesJoinRequest)



### Example
```dart
import 'package:role_sdk/api.dart';

final api = RoleSdk().getWorkspacesApi();
final PostApiWorkspacesJoinRequest postApiWorkspacesJoinRequest = ; // PostApiWorkspacesJoinRequest | 

try {
    final response = api.postApiWorkspacesJoin(postApiWorkspacesJoinRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WorkspacesApi->postApiWorkspacesJoin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postApiWorkspacesJoinRequest** | [**PostApiWorkspacesJoinRequest**](PostApiWorkspacesJoinRequest.md)|  | 

### Return type

[**PostApiWorkspaces201Response**](PostApiWorkspaces201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

