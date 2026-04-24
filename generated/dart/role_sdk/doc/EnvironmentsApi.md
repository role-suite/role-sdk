# role_sdk.api.EnvironmentsApi

## Load the API package

```dart
import 'package:role_sdk/api.dart';
```

All URIs are relative to _http://localhost_

| Method                                                                                                                                                                                      | HTTP request                                                                                 | Description |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | ----------- |
| [**deleteApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentId**](EnvironmentsApi.md#deleteapiworkspacesbyworkspaceidenvironmentsbyenvironmentid)                                           | **DELETE** /api/workspaces/{workspaceId}/environments/{environmentId}                        |
| [**deleteApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableId**](EnvironmentsApi.md#deleteapiworkspacesbyworkspaceidenvironmentsbyenvironmentidvariablesbyvariableid) | **DELETE** /api/workspaces/{workspaceId}/environments/{environmentId}/variables/{variableId} |
| [**getApiWorkspacesByWorkspaceIdEnvironments**](EnvironmentsApi.md#getapiworkspacesbyworkspaceidenvironments)                                                                               | **GET** /api/workspaces/{workspaceId}/environments                                           |
| [**getApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentId**](EnvironmentsApi.md#getapiworkspacesbyworkspaceidenvironmentsbyenvironmentid)                                                 | **GET** /api/workspaces/{workspaceId}/environments/{environmentId}                           |
| [**getApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables**](EnvironmentsApi.md#getapiworkspacesbyworkspaceidenvironmentsbyenvironmentidvariables)                               | **GET** /api/workspaces/{workspaceId}/environments/{environmentId}/variables                 |
| [**getApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableId**](EnvironmentsApi.md#getapiworkspacesbyworkspaceidenvironmentsbyenvironmentidvariablesbyvariableid)       | **GET** /api/workspaces/{workspaceId}/environments/{environmentId}/variables/{variableId}    |
| [**patchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentId**](EnvironmentsApi.md#patchapiworkspacesbyworkspaceidenvironmentsbyenvironmentid)                                             | **PATCH** /api/workspaces/{workspaceId}/environments/{environmentId}                         |
| [**patchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableId**](EnvironmentsApi.md#patchapiworkspacesbyworkspaceidenvironmentsbyenvironmentidvariablesbyvariableid)   | **PATCH** /api/workspaces/{workspaceId}/environments/{environmentId}/variables/{variableId}  |
| [**postApiWorkspacesByWorkspaceIdEnvironments**](EnvironmentsApi.md#postapiworkspacesbyworkspaceidenvironments)                                                                             | **POST** /api/workspaces/{workspaceId}/environments                                          |
| [**postApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables**](EnvironmentsApi.md#postapiworkspacesbyworkspaceidenvironmentsbyenvironmentidvariables)                             | **POST** /api/workspaces/{workspaceId}/environments/{environmentId}/variables                |

# **deleteApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentId**

> PostApiAuthLogout200Response deleteApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentId(workspaceId, environmentId)

### Example

```dart
import 'package:role_sdk/api.dart';

final api = RoleSdk().getEnvironmentsApi();
final int workspaceId = 56; // int |
final int environmentId = 56; // int |

try {
    final response = api.deleteApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentId(workspaceId, environmentId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EnvironmentsApi->deleteApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentId: $e\n');
}
```

### Parameters

| Name              | Type    | Description | Notes |
| ----------------- | ------- | ----------- | ----- |
| **workspaceId**   | **int** |             |
| **environmentId** | **int** |             |

### Return type

[**PostApiAuthLogout200Response**](PostApiAuthLogout200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableId**

> PostApiAuthLogout200Response deleteApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableId(workspaceId, environmentId, variableId)

### Example

```dart
import 'package:role_sdk/api.dart';

final api = RoleSdk().getEnvironmentsApi();
final int workspaceId = 56; // int |
final int environmentId = 56; // int |
final int variableId = 56; // int |

try {
    final response = api.deleteApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableId(workspaceId, environmentId, variableId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EnvironmentsApi->deleteApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableId: $e\n');
}
```

### Parameters

| Name              | Type    | Description | Notes |
| ----------------- | ------- | ----------- | ----- |
| **workspaceId**   | **int** |             |
| **environmentId** | **int** |             |
| **variableId**    | **int** |             |

### Return type

[**PostApiAuthLogout200Response**](PostApiAuthLogout200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getApiWorkspacesByWorkspaceIdEnvironments**

> GetApiWorkspacesByWorkspaceIdEnvironments200Response getApiWorkspacesByWorkspaceIdEnvironments(workspaceId)

### Example

```dart
import 'package:role_sdk/api.dart';

final api = RoleSdk().getEnvironmentsApi();
final int workspaceId = 56; // int |

try {
    final response = api.getApiWorkspacesByWorkspaceIdEnvironments(workspaceId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EnvironmentsApi->getApiWorkspacesByWorkspaceIdEnvironments: $e\n');
}
```

### Parameters

| Name            | Type    | Description | Notes |
| --------------- | ------- | ----------- | ----- |
| **workspaceId** | **int** |             |

### Return type

[**GetApiWorkspacesByWorkspaceIdEnvironments200Response**](GetApiWorkspacesByWorkspaceIdEnvironments200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentId**

> PostApiWorkspacesByWorkspaceIdEnvironments201Response getApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentId(workspaceId, environmentId)

### Example

```dart
import 'package:role_sdk/api.dart';

final api = RoleSdk().getEnvironmentsApi();
final int workspaceId = 56; // int |
final int environmentId = 56; // int |

try {
    final response = api.getApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentId(workspaceId, environmentId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EnvironmentsApi->getApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentId: $e\n');
}
```

### Parameters

| Name              | Type    | Description | Notes |
| ----------------- | ------- | ----------- | ----- |
| **workspaceId**   | **int** |             |
| **environmentId** | **int** |             |

### Return type

[**PostApiWorkspacesByWorkspaceIdEnvironments201Response**](PostApiWorkspacesByWorkspaceIdEnvironments201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables**

> GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response getApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables(workspaceId, environmentId)

### Example

```dart
import 'package:role_sdk/api.dart';

final api = RoleSdk().getEnvironmentsApi();
final int workspaceId = 56; // int |
final int environmentId = 56; // int |

try {
    final response = api.getApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables(workspaceId, environmentId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EnvironmentsApi->getApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables: $e\n');
}
```

### Parameters

| Name              | Type    | Description | Notes |
| ----------------- | ------- | ----------- | ----- |
| **workspaceId**   | **int** |             |
| **environmentId** | **int** |             |

### Return type

[**GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response**](GetApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableId**

> PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response getApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableId(workspaceId, environmentId, variableId)

### Example

```dart
import 'package:role_sdk/api.dart';

final api = RoleSdk().getEnvironmentsApi();
final int workspaceId = 56; // int |
final int environmentId = 56; // int |
final int variableId = 56; // int |

try {
    final response = api.getApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableId(workspaceId, environmentId, variableId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EnvironmentsApi->getApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableId: $e\n');
}
```

### Parameters

| Name              | Type    | Description | Notes |
| ----------------- | ------- | ----------- | ----- |
| **workspaceId**   | **int** |             |
| **environmentId** | **int** |             |
| **variableId**    | **int** |             |

### Return type

[**PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response**](PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentId**

> PostApiWorkspacesByWorkspaceIdEnvironments201Response patchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentId(workspaceId, environmentId, patchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdRequest)

### Example

```dart
import 'package:role_sdk/api.dart';

final api = RoleSdk().getEnvironmentsApi();
final int workspaceId = 56; // int |
final int environmentId = 56; // int |
final PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdRequest patchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdRequest = ; // PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdRequest |

try {
    final response = api.patchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentId(workspaceId, environmentId, patchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EnvironmentsApi->patchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentId: $e\n');
}
```

### Parameters

| Name                                                                  | Type                                                                                                                                          | Description | Notes |
| --------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- | ----------- | ----- |
| **workspaceId**                                                       | **int**                                                                                                                                       |             |
| **environmentId**                                                     | **int**                                                                                                                                       |             |
| **patchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdRequest** | [**PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdRequest**](PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdRequest.md) |             |

### Return type

[**PostApiWorkspacesByWorkspaceIdEnvironments201Response**](PostApiWorkspacesByWorkspaceIdEnvironments201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableId**

> PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response patchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableId(workspaceId, environmentId, variableId, patchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest)

### Example

```dart
import 'package:role_sdk/api.dart';

final api = RoleSdk().getEnvironmentsApi();
final int workspaceId = 56; // int |
final int environmentId = 56; // int |
final int variableId = 56; // int |
final PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest patchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest = ; // PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest |

try {
    final response = api.patchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableId(workspaceId, environmentId, variableId, patchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EnvironmentsApi->patchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableId: $e\n');
}
```

### Parameters

| Name                                                                                       | Type                                                                                                                                                                                    | Description | Notes |
| ------------------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- | ----- |
| **workspaceId**                                                                            | **int**                                                                                                                                                                                 |             |
| **environmentId**                                                                          | **int**                                                                                                                                                                                 |             |
| **variableId**                                                                             | **int**                                                                                                                                                                                 |             |
| **patchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest** | [**PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest**](PatchApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesByVariableIdRequest.md) |             |

### Return type

[**PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response**](PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postApiWorkspacesByWorkspaceIdEnvironments**

> PostApiWorkspacesByWorkspaceIdEnvironments201Response postApiWorkspacesByWorkspaceIdEnvironments(workspaceId, postApiWorkspacesByWorkspaceIdEnvironmentsRequest)

### Example

```dart
import 'package:role_sdk/api.dart';

final api = RoleSdk().getEnvironmentsApi();
final int workspaceId = 56; // int |
final PostApiWorkspacesByWorkspaceIdEnvironmentsRequest postApiWorkspacesByWorkspaceIdEnvironmentsRequest = ; // PostApiWorkspacesByWorkspaceIdEnvironmentsRequest |

try {
    final response = api.postApiWorkspacesByWorkspaceIdEnvironments(workspaceId, postApiWorkspacesByWorkspaceIdEnvironmentsRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EnvironmentsApi->postApiWorkspacesByWorkspaceIdEnvironments: $e\n');
}
```

### Parameters

| Name                                                  | Type                                                                                                          | Description | Notes |
| ----------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ----------- | ----- |
| **workspaceId**                                       | **int**                                                                                                       |             |
| **postApiWorkspacesByWorkspaceIdEnvironmentsRequest** | [**PostApiWorkspacesByWorkspaceIdEnvironmentsRequest**](PostApiWorkspacesByWorkspaceIdEnvironmentsRequest.md) |             |

### Return type

[**PostApiWorkspacesByWorkspaceIdEnvironments201Response**](PostApiWorkspacesByWorkspaceIdEnvironments201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables**

> PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response postApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables(workspaceId, environmentId, postApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequest)

### Example

```dart
import 'package:role_sdk/api.dart';

final api = RoleSdk().getEnvironmentsApi();
final int workspaceId = 56; // int |
final int environmentId = 56; // int |
final PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequest postApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequest = ; // PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequest |

try {
    final response = api.postApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables(workspaceId, environmentId, postApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EnvironmentsApi->postApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables: $e\n');
}
```

### Parameters

| Name                                                                          | Type                                                                                                                                                          | Description | Notes |
| ----------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- | ----- |
| **workspaceId**                                                               | **int**                                                                                                                                                       |             |
| **environmentId**                                                             | **int**                                                                                                                                                       |             |
| **postApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequest** | [**PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequest**](PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariablesRequest.md) |             |

### Return type

[**PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response**](PostApiWorkspacesByWorkspaceIdEnvironmentsByEnvironmentIdVariables201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
