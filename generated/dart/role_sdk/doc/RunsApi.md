# role_sdk.api.RunsApi

## Load the API package

```dart
import 'package:role_sdk/api.dart';
```

All URIs are relative to _http://localhost_

| Method                                                                                                            | HTTP request                                               | Description |
| ----------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------- | ----------- |
| [**getApiWorkspacesByWorkspaceIdRunsByRunId**](RunsApi.md#getapiworkspacesbyworkspaceidrunsbyrunid)               | **GET** /api/workspaces/{workspaceId}/runs/{runId}         |
| [**postApiWorkspacesByWorkspaceIdRuns**](RunsApi.md#postapiworkspacesbyworkspaceidruns)                           | **POST** /api/workspaces/{workspaceId}/runs                |
| [**postApiWorkspacesByWorkspaceIdRunsByRunIdCancel**](RunsApi.md#postapiworkspacesbyworkspaceidrunsbyrunidcancel) | **POST** /api/workspaces/{workspaceId}/runs/{runId}/cancel |

# **getApiWorkspacesByWorkspaceIdRunsByRunId**

> PostApiWorkspacesByWorkspaceIdRuns201Response getApiWorkspacesByWorkspaceIdRunsByRunId(workspaceId, runId)

### Example

```dart
import 'package:role_sdk/api.dart';

final api = RoleSdk().getRunsApi();
final int workspaceId = 56; // int |
final int runId = 56; // int |

try {
    final response = api.getApiWorkspacesByWorkspaceIdRunsByRunId(workspaceId, runId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling RunsApi->getApiWorkspacesByWorkspaceIdRunsByRunId: $e\n');
}
```

### Parameters

| Name            | Type    | Description | Notes |
| --------------- | ------- | ----------- | ----- |
| **workspaceId** | **int** |             |
| **runId**       | **int** |             |

### Return type

[**PostApiWorkspacesByWorkspaceIdRuns201Response**](PostApiWorkspacesByWorkspaceIdRuns201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postApiWorkspacesByWorkspaceIdRuns**

> PostApiWorkspacesByWorkspaceIdRuns201Response postApiWorkspacesByWorkspaceIdRuns(workspaceId, postApiWorkspacesByWorkspaceIdRunsRequest)

### Example

```dart
import 'package:role_sdk/api.dart';

final api = RoleSdk().getRunsApi();
final int workspaceId = 56; // int |
final PostApiWorkspacesByWorkspaceIdRunsRequest postApiWorkspacesByWorkspaceIdRunsRequest = ; // PostApiWorkspacesByWorkspaceIdRunsRequest |

try {
    final response = api.postApiWorkspacesByWorkspaceIdRuns(workspaceId, postApiWorkspacesByWorkspaceIdRunsRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling RunsApi->postApiWorkspacesByWorkspaceIdRuns: $e\n');
}
```

### Parameters

| Name                                          | Type                                                                                          | Description | Notes |
| --------------------------------------------- | --------------------------------------------------------------------------------------------- | ----------- | ----- |
| **workspaceId**                               | **int**                                                                                       |             |
| **postApiWorkspacesByWorkspaceIdRunsRequest** | [**PostApiWorkspacesByWorkspaceIdRunsRequest**](PostApiWorkspacesByWorkspaceIdRunsRequest.md) |             |

### Return type

[**PostApiWorkspacesByWorkspaceIdRuns201Response**](PostApiWorkspacesByWorkspaceIdRuns201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postApiWorkspacesByWorkspaceIdRunsByRunIdCancel**

> PostApiWorkspacesByWorkspaceIdRuns201Response postApiWorkspacesByWorkspaceIdRunsByRunIdCancel(workspaceId, runId)

### Example

```dart
import 'package:role_sdk/api.dart';

final api = RoleSdk().getRunsApi();
final int workspaceId = 56; // int |
final int runId = 56; // int |

try {
    final response = api.postApiWorkspacesByWorkspaceIdRunsByRunIdCancel(workspaceId, runId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling RunsApi->postApiWorkspacesByWorkspaceIdRunsByRunIdCancel: $e\n');
}
```

### Parameters

| Name            | Type    | Description | Notes |
| --------------- | ------- | ----------- | ----- |
| **workspaceId** | **int** |             |
| **runId**       | **int** |             |

### Return type

[**PostApiWorkspacesByWorkspaceIdRuns201Response**](PostApiWorkspacesByWorkspaceIdRuns201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
