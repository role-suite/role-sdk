# role_rest_sdk.api.CollectionsApi

## Load the API package

```dart
import 'package:role_rest_sdk/api.dart';
```

All URIs are relative to _http://localhost_

| Method                                                                                                                                                                                                                       | HTTP request                                                                                                    | Description |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | ----------- |
| [**deleteApiWorkspacesByWorkspaceIdCollectionsByCollectionId**](CollectionsApi.md#deleteapiworkspacesbyworkspaceidcollectionsbycollectionid)                                                                                 | **DELETE** /api/workspaces/{workspaceId}/collections/{collectionId}                                             |
| [**deleteApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointId**](CollectionsApi.md#deleteapiworkspacesbyworkspaceidcollectionsbycollectionidendpointsbyendpointid)                                       | **DELETE** /api/workspaces/{workspaceId}/collections/{collectionId}/endpoints/{endpointId}                      |
| [**deleteApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleId**](CollectionsApi.md#deleteapiworkspacesbyworkspaceidcollectionsbycollectionidendpointsbyendpointidexamplesbyexampleid) | **DELETE** /api/workspaces/{workspaceId}/collections/{collectionId}/endpoints/{endpointId}/examples/{exampleId} |
| [**deleteApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderId**](CollectionsApi.md#deleteapiworkspacesbyworkspaceidcollectionsbycollectionidfoldersbyfolderid)                                               | **DELETE** /api/workspaces/{workspaceId}/collections/{collectionId}/folders/{folderId}                          |
| [**getApiWorkspacesByWorkspaceIdCollections**](CollectionsApi.md#getapiworkspacesbyworkspaceidcollections)                                                                                                                   | **GET** /api/workspaces/{workspaceId}/collections                                                               |
| [**getApiWorkspacesByWorkspaceIdCollectionsByCollectionId**](CollectionsApi.md#getapiworkspacesbyworkspaceidcollectionsbycollectionid)                                                                                       | **GET** /api/workspaces/{workspaceId}/collections/{collectionId}                                                |
| [**getApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints**](CollectionsApi.md#getapiworkspacesbyworkspaceidcollectionsbycollectionidendpoints)                                                                     | **GET** /api/workspaces/{workspaceId}/collections/{collectionId}/endpoints                                      |
| [**getApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointId**](CollectionsApi.md#getapiworkspacesbyworkspaceidcollectionsbycollectionidendpointsbyendpointid)                                             | **GET** /api/workspaces/{workspaceId}/collections/{collectionId}/endpoints/{endpointId}                         |
| [**getApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples**](CollectionsApi.md#getapiworkspacesbyworkspaceidcollectionsbycollectionidendpointsbyendpointidexamples)                             | **GET** /api/workspaces/{workspaceId}/collections/{collectionId}/endpoints/{endpointId}/examples                |
| [**getApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders**](CollectionsApi.md#getapiworkspacesbyworkspaceidcollectionsbycollectionidfolders)                                                                         | **GET** /api/workspaces/{workspaceId}/collections/{collectionId}/folders                                        |
| [**patchApiWorkspacesByWorkspaceIdCollectionsByCollectionId**](CollectionsApi.md#patchapiworkspacesbyworkspaceidcollectionsbycollectionid)                                                                                   | **PATCH** /api/workspaces/{workspaceId}/collections/{collectionId}                                              |
| [**patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointId**](CollectionsApi.md#patchapiworkspacesbyworkspaceidcollectionsbycollectionidendpointsbyendpointid)                                         | **PATCH** /api/workspaces/{workspaceId}/collections/{collectionId}/endpoints/{endpointId}                       |
| [**patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleId**](CollectionsApi.md#patchapiworkspacesbyworkspaceidcollectionsbycollectionidendpointsbyendpointidexamplesbyexampleid)   | **PATCH** /api/workspaces/{workspaceId}/collections/{collectionId}/endpoints/{endpointId}/examples/{exampleId}  |
| [**patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderId**](CollectionsApi.md#patchapiworkspacesbyworkspaceidcollectionsbycollectionidfoldersbyfolderid)                                                 | **PATCH** /api/workspaces/{workspaceId}/collections/{collectionId}/folders/{folderId}                           |
| [**postApiWorkspacesByWorkspaceIdCollections**](CollectionsApi.md#postapiworkspacesbyworkspaceidcollections)                                                                                                                 | **POST** /api/workspaces/{workspaceId}/collections                                                              |
| [**postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints**](CollectionsApi.md#postapiworkspacesbyworkspaceidcollectionsbycollectionidendpoints)                                                                   | **POST** /api/workspaces/{workspaceId}/collections/{collectionId}/endpoints                                     |
| [**postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples**](CollectionsApi.md#postapiworkspacesbyworkspaceidcollectionsbycollectionidendpointsbyendpointidexamples)                           | **POST** /api/workspaces/{workspaceId}/collections/{collectionId}/endpoints/{endpointId}/examples               |
| [**postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders**](CollectionsApi.md#postapiworkspacesbyworkspaceidcollectionsbycollectionidfolders)                                                                       | **POST** /api/workspaces/{workspaceId}/collections/{collectionId}/folders                                       |

# **deleteApiWorkspacesByWorkspaceIdCollectionsByCollectionId**

> PostApiAuthLogout200Response deleteApiWorkspacesByWorkspaceIdCollectionsByCollectionId(workspaceId, collectionId)

### Example

```dart
import 'package:role_rest_sdk/api.dart';

final api = RoleRestSdk().getCollectionsApi();
final int workspaceId = 56; // int |
final int collectionId = 56; // int |

try {
    final response = api.deleteApiWorkspacesByWorkspaceIdCollectionsByCollectionId(workspaceId, collectionId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CollectionsApi->deleteApiWorkspacesByWorkspaceIdCollectionsByCollectionId: $e\n');
}
```

### Parameters

| Name             | Type    | Description | Notes |
| ---------------- | ------- | ----------- | ----- |
| **workspaceId**  | **int** |             |
| **collectionId** | **int** |             |

### Return type

[**PostApiAuthLogout200Response**](PostApiAuthLogout200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointId**

> PostApiAuthLogout200Response deleteApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointId(workspaceId, collectionId, endpointId)

### Example

```dart
import 'package:role_rest_sdk/api.dart';

final api = RoleRestSdk().getCollectionsApi();
final int workspaceId = 56; // int |
final int collectionId = 56; // int |
final int endpointId = 56; // int |

try {
    final response = api.deleteApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointId(workspaceId, collectionId, endpointId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CollectionsApi->deleteApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointId: $e\n');
}
```

### Parameters

| Name             | Type    | Description | Notes |
| ---------------- | ------- | ----------- | ----- |
| **workspaceId**  | **int** |             |
| **collectionId** | **int** |             |
| **endpointId**   | **int** |             |

### Return type

[**PostApiAuthLogout200Response**](PostApiAuthLogout200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleId**

> PostApiAuthLogout200Response deleteApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleId(workspaceId, collectionId, endpointId, exampleId)

### Example

```dart
import 'package:role_rest_sdk/api.dart';

final api = RoleRestSdk().getCollectionsApi();
final int workspaceId = 56; // int |
final int collectionId = 56; // int |
final int endpointId = 56; // int |
final int exampleId = 56; // int |

try {
    final response = api.deleteApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleId(workspaceId, collectionId, endpointId, exampleId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CollectionsApi->deleteApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleId: $e\n');
}
```

### Parameters

| Name             | Type    | Description | Notes |
| ---------------- | ------- | ----------- | ----- |
| **workspaceId**  | **int** |             |
| **collectionId** | **int** |             |
| **endpointId**   | **int** |             |
| **exampleId**    | **int** |             |

### Return type

[**PostApiAuthLogout200Response**](PostApiAuthLogout200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderId**

> PostApiAuthLogout200Response deleteApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderId(workspaceId, collectionId, folderId)

### Example

```dart
import 'package:role_rest_sdk/api.dart';

final api = RoleRestSdk().getCollectionsApi();
final int workspaceId = 56; // int |
final int collectionId = 56; // int |
final int folderId = 56; // int |

try {
    final response = api.deleteApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderId(workspaceId, collectionId, folderId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CollectionsApi->deleteApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderId: $e\n');
}
```

### Parameters

| Name             | Type    | Description | Notes |
| ---------------- | ------- | ----------- | ----- |
| **workspaceId**  | **int** |             |
| **collectionId** | **int** |             |
| **folderId**     | **int** |             |

### Return type

[**PostApiAuthLogout200Response**](PostApiAuthLogout200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getApiWorkspacesByWorkspaceIdCollections**

> GetApiWorkspacesByWorkspaceIdCollections200Response getApiWorkspacesByWorkspaceIdCollections(workspaceId)

### Example

```dart
import 'package:role_rest_sdk/api.dart';

final api = RoleRestSdk().getCollectionsApi();
final int workspaceId = 56; // int |

try {
    final response = api.getApiWorkspacesByWorkspaceIdCollections(workspaceId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CollectionsApi->getApiWorkspacesByWorkspaceIdCollections: $e\n');
}
```

### Parameters

| Name            | Type    | Description | Notes |
| --------------- | ------- | ----------- | ----- |
| **workspaceId** | **int** |             |

### Return type

[**GetApiWorkspacesByWorkspaceIdCollections200Response**](GetApiWorkspacesByWorkspaceIdCollections200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getApiWorkspacesByWorkspaceIdCollectionsByCollectionId**

> PostApiWorkspacesByWorkspaceIdCollections201Response getApiWorkspacesByWorkspaceIdCollectionsByCollectionId(workspaceId, collectionId)

### Example

```dart
import 'package:role_rest_sdk/api.dart';

final api = RoleRestSdk().getCollectionsApi();
final int workspaceId = 56; // int |
final int collectionId = 56; // int |

try {
    final response = api.getApiWorkspacesByWorkspaceIdCollectionsByCollectionId(workspaceId, collectionId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CollectionsApi->getApiWorkspacesByWorkspaceIdCollectionsByCollectionId: $e\n');
}
```

### Parameters

| Name             | Type    | Description | Notes |
| ---------------- | ------- | ----------- | ----- |
| **workspaceId**  | **int** |             |
| **collectionId** | **int** |             |

### Return type

[**PostApiWorkspacesByWorkspaceIdCollections201Response**](PostApiWorkspacesByWorkspaceIdCollections201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints**

> GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200Response getApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints(workspaceId, collectionId)

### Example

```dart
import 'package:role_rest_sdk/api.dart';

final api = RoleRestSdk().getCollectionsApi();
final int workspaceId = 56; // int |
final int collectionId = 56; // int |

try {
    final response = api.getApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints(workspaceId, collectionId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CollectionsApi->getApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints: $e\n');
}
```

### Parameters

| Name             | Type    | Description | Notes |
| ---------------- | ------- | ----------- | ----- |
| **workspaceId**  | **int** |             |
| **collectionId** | **int** |             |

### Return type

[**GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200Response**](GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointId**

> PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response getApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointId(workspaceId, collectionId, endpointId)

### Example

```dart
import 'package:role_rest_sdk/api.dart';

final api = RoleRestSdk().getCollectionsApi();
final int workspaceId = 56; // int |
final int collectionId = 56; // int |
final int endpointId = 56; // int |

try {
    final response = api.getApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointId(workspaceId, collectionId, endpointId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CollectionsApi->getApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointId: $e\n');
}
```

### Parameters

| Name             | Type    | Description | Notes |
| ---------------- | ------- | ----------- | ----- |
| **workspaceId**  | **int** |             |
| **collectionId** | **int** |             |
| **endpointId**   | **int** |             |

### Return type

[**PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response**](PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples**

> GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples200Response getApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples(workspaceId, collectionId, endpointId)

### Example

```dart
import 'package:role_rest_sdk/api.dart';

final api = RoleRestSdk().getCollectionsApi();
final int workspaceId = 56; // int |
final int collectionId = 56; // int |
final int endpointId = 56; // int |

try {
    final response = api.getApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples(workspaceId, collectionId, endpointId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CollectionsApi->getApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples: $e\n');
}
```

### Parameters

| Name             | Type    | Description | Notes |
| ---------------- | ------- | ----------- | ----- |
| **workspaceId**  | **int** |             |
| **collectionId** | **int** |             |
| **endpointId**   | **int** |             |

### Return type

[**GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples200Response**](GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders**

> GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200Response getApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders(workspaceId, collectionId)

### Example

```dart
import 'package:role_rest_sdk/api.dart';

final api = RoleRestSdk().getCollectionsApi();
final int workspaceId = 56; // int |
final int collectionId = 56; // int |

try {
    final response = api.getApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders(workspaceId, collectionId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CollectionsApi->getApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders: $e\n');
}
```

### Parameters

| Name             | Type    | Description | Notes |
| ---------------- | ------- | ----------- | ----- |
| **workspaceId**  | **int** |             |
| **collectionId** | **int** |             |

### Return type

[**GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200Response**](GetApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchApiWorkspacesByWorkspaceIdCollectionsByCollectionId**

> PostApiWorkspacesByWorkspaceIdCollections201Response patchApiWorkspacesByWorkspaceIdCollectionsByCollectionId(workspaceId, collectionId, patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest)

### Example

```dart
import 'package:role_rest_sdk/api.dart';

final api = RoleRestSdk().getCollectionsApi();
final int workspaceId = 56; // int |
final int collectionId = 56; // int |
final PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest = ; // PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest |

try {
    final response = api.patchApiWorkspacesByWorkspaceIdCollectionsByCollectionId(workspaceId, collectionId, patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CollectionsApi->patchApiWorkspacesByWorkspaceIdCollectionsByCollectionId: $e\n');
}
```

### Parameters

| Name                                                                | Type                                                                                                                                      | Description | Notes |
| ------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ----------- | ----- |
| **workspaceId**                                                     | **int**                                                                                                                                   |             |
| **collectionId**                                                    | **int**                                                                                                                                   |             |
| **patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest** | [**PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest**](PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdRequest.md) |             |

### Return type

[**PostApiWorkspacesByWorkspaceIdCollections201Response**](PostApiWorkspacesByWorkspaceIdCollections201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointId**

> PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointId(workspaceId, collectionId, endpointId, patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequest)

### Example

```dart
import 'package:role_rest_sdk/api.dart';

final api = RoleRestSdk().getCollectionsApi();
final int workspaceId = 56; // int |
final int collectionId = 56; // int |
final int endpointId = 56; // int |
final PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequest patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequest = ; // PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequest |

try {
    final response = api.patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointId(workspaceId, collectionId, endpointId, patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CollectionsApi->patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointId: $e\n');
}
```

### Parameters

| Name                                                                                     | Type                                                                                                                                                                                | Description | Notes |
| ---------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- | ----- |
| **workspaceId**                                                                          | **int**                                                                                                                                                                             |             |
| **collectionId**                                                                         | **int**                                                                                                                                                                             |             |
| **endpointId**                                                                           | **int**                                                                                                                                                                             |             |
| **patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequest** | [**PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequest**](PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdRequest.md) |             |

### Return type

[**PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response**](PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleId**

> PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples201Response patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleId(workspaceId, collectionId, endpointId, exampleId, patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest)

### Example

```dart
import 'package:role_rest_sdk/api.dart';

final api = RoleRestSdk().getCollectionsApi();
final int workspaceId = 56; // int |
final int collectionId = 56; // int |
final int endpointId = 56; // int |
final int exampleId = 56; // int |
final PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest = ; // PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest |

try {
    final response = api.patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleId(workspaceId, collectionId, endpointId, exampleId, patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CollectionsApi->patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleId: $e\n');
}
```

### Parameters

| Name                                                                                                        | Type                                                                                                                                                                                                                      | Description | Notes |
| ----------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- | ----- |
| **workspaceId**                                                                                             | **int**                                                                                                                                                                                                                   |             |
| **collectionId**                                                                                            | **int**                                                                                                                                                                                                                   |             |
| **endpointId**                                                                                              | **int**                                                                                                                                                                                                                   |             |
| **exampleId**                                                                                               | **int**                                                                                                                                                                                                                   |             |
| **patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest** | [**PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest**](PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesByExampleIdRequest.md) |             |

### Return type

[**PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples201Response**](PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderId**

> PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders201Response patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderId(workspaceId, collectionId, folderId, patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest)

### Example

```dart
import 'package:role_rest_sdk/api.dart';

final api = RoleRestSdk().getCollectionsApi();
final int workspaceId = 56; // int |
final int collectionId = 56; // int |
final int folderId = 56; // int |
final PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest = ; // PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest |

try {
    final response = api.patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderId(workspaceId, collectionId, folderId, patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CollectionsApi->patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderId: $e\n');
}
```

### Parameters

| Name                                                                                 | Type                                                                                                                                                                        | Description | Notes |
| ------------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- | ----- |
| **workspaceId**                                                                      | **int**                                                                                                                                                                     |             |
| **collectionId**                                                                     | **int**                                                                                                                                                                     |             |
| **folderId**                                                                         | **int**                                                                                                                                                                     |             |
| **patchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest** | [**PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest**](PatchApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersByFolderIdRequest.md) |             |

### Return type

[**PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders201Response**](PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postApiWorkspacesByWorkspaceIdCollections**

> PostApiWorkspacesByWorkspaceIdCollections201Response postApiWorkspacesByWorkspaceIdCollections(workspaceId, postApiWorkspacesByWorkspaceIdCollectionsRequest)

### Example

```dart
import 'package:role_rest_sdk/api.dart';

final api = RoleRestSdk().getCollectionsApi();
final int workspaceId = 56; // int |
final PostApiWorkspacesByWorkspaceIdCollectionsRequest postApiWorkspacesByWorkspaceIdCollectionsRequest = ; // PostApiWorkspacesByWorkspaceIdCollectionsRequest |

try {
    final response = api.postApiWorkspacesByWorkspaceIdCollections(workspaceId, postApiWorkspacesByWorkspaceIdCollectionsRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CollectionsApi->postApiWorkspacesByWorkspaceIdCollections: $e\n');
}
```

### Parameters

| Name                                                 | Type                                                                                                        | Description | Notes |
| ---------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------- | ----- |
| **workspaceId**                                      | **int**                                                                                                     |             |
| **postApiWorkspacesByWorkspaceIdCollectionsRequest** | [**PostApiWorkspacesByWorkspaceIdCollectionsRequest**](PostApiWorkspacesByWorkspaceIdCollectionsRequest.md) |             |

### Return type

[**PostApiWorkspacesByWorkspaceIdCollections201Response**](PostApiWorkspacesByWorkspaceIdCollections201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints**

> PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints(workspaceId, collectionId, postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest)

### Example

```dart
import 'package:role_rest_sdk/api.dart';

final api = RoleRestSdk().getCollectionsApi();
final int workspaceId = 56; // int |
final int collectionId = 56; // int |
final PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest = ; // PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest |

try {
    final response = api.postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints(workspaceId, collectionId, postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CollectionsApi->postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints: $e\n');
}
```

### Parameters

| Name                                                                        | Type                                                                                                                                                      | Description | Notes |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- | ----- |
| **workspaceId**                                                             | **int**                                                                                                                                                   |             |
| **collectionId**                                                            | **int**                                                                                                                                                   |             |
| **postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest** | [**PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest**](PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsRequest.md) |             |

### Return type

[**PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response**](PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpoints201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples**

> PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples201Response postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples(workspaceId, collectionId, endpointId, postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesRequest)

### Example

```dart
import 'package:role_rest_sdk/api.dart';

final api = RoleRestSdk().getCollectionsApi();
final int workspaceId = 56; // int |
final int collectionId = 56; // int |
final int endpointId = 56; // int |
final PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesRequest postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesRequest = ; // PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesRequest |

try {
    final response = api.postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples(workspaceId, collectionId, endpointId, postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CollectionsApi->postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples: $e\n');
}
```

### Parameters

| Name                                                                                            | Type                                                                                                                                                                                              | Description | Notes |
| ----------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- | ----- |
| **workspaceId**                                                                                 | **int**                                                                                                                                                                                           |             |
| **collectionId**                                                                                | **int**                                                                                                                                                                                           |             |
| **endpointId**                                                                                  | **int**                                                                                                                                                                                           |             |
| **postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesRequest** | [**PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesRequest**](PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamplesRequest.md) |             |

### Return type

[**PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples201Response**](PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdEndpointsByEndpointIdExamples201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders**

> PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders201Response postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders(workspaceId, collectionId, postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest)

### Example

```dart
import 'package:role_rest_sdk/api.dart';

final api = RoleRestSdk().getCollectionsApi();
final int workspaceId = 56; // int |
final int collectionId = 56; // int |
final PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest = ; // PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest |

try {
    final response = api.postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders(workspaceId, collectionId, postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CollectionsApi->postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders: $e\n');
}
```

### Parameters

| Name                                                                      | Type                                                                                                                                                  | Description | Notes |
| ------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- | ----- |
| **workspaceId**                                                           | **int**                                                                                                                                               |             |
| **collectionId**                                                          | **int**                                                                                                                                               |             |
| **postApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest** | [**PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest**](PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFoldersRequest.md) |             |

### Return type

[**PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders201Response**](PostApiWorkspacesByWorkspaceIdCollectionsByCollectionIdFolders201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
