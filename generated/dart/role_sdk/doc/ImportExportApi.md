# role_sdk.api.ImportExportApi

## Load the API package
```dart
import 'package:role_sdk/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getApiWorkspacesByWorkspaceIdImportExportJobs**](ImportExportApi.md#getapiworkspacesbyworkspaceidimportexportjobs) | **GET** /api/workspaces/{workspaceId}/import-export/jobs | 
[**getApiWorkspacesByWorkspaceIdImportExportJobsByJobId**](ImportExportApi.md#getapiworkspacesbyworkspaceidimportexportjobsbyjobid) | **GET** /api/workspaces/{workspaceId}/import-export/jobs/{jobId} | 
[**postApiWorkspacesByWorkspaceIdImportExportExports**](ImportExportApi.md#postapiworkspacesbyworkspaceidimportexportexports) | **POST** /api/workspaces/{workspaceId}/import-export/exports | 
[**postApiWorkspacesByWorkspaceIdImportExportImports**](ImportExportApi.md#postapiworkspacesbyworkspaceidimportexportimports) | **POST** /api/workspaces/{workspaceId}/import-export/imports | 


# **getApiWorkspacesByWorkspaceIdImportExportJobs**
> GetApiWorkspacesByWorkspaceIdImportExportJobs200Response getApiWorkspacesByWorkspaceIdImportExportJobs(workspaceId)



### Example
```dart
import 'package:role_sdk/api.dart';

final api = RoleSdk().getImportExportApi();
final int workspaceId = 56; // int | 

try {
    final response = api.getApiWorkspacesByWorkspaceIdImportExportJobs(workspaceId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ImportExportApi->getApiWorkspacesByWorkspaceIdImportExportJobs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **int**|  | 

### Return type

[**GetApiWorkspacesByWorkspaceIdImportExportJobs200Response**](GetApiWorkspacesByWorkspaceIdImportExportJobs200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getApiWorkspacesByWorkspaceIdImportExportJobsByJobId**
> PostApiWorkspacesByWorkspaceIdImportExportExports201Response getApiWorkspacesByWorkspaceIdImportExportJobsByJobId(workspaceId, jobId)



### Example
```dart
import 'package:role_sdk/api.dart';

final api = RoleSdk().getImportExportApi();
final int workspaceId = 56; // int | 
final int jobId = 56; // int | 

try {
    final response = api.getApiWorkspacesByWorkspaceIdImportExportJobsByJobId(workspaceId, jobId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ImportExportApi->getApiWorkspacesByWorkspaceIdImportExportJobsByJobId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **int**|  | 
 **jobId** | **int**|  | 

### Return type

[**PostApiWorkspacesByWorkspaceIdImportExportExports201Response**](PostApiWorkspacesByWorkspaceIdImportExportExports201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postApiWorkspacesByWorkspaceIdImportExportExports**
> PostApiWorkspacesByWorkspaceIdImportExportExports201Response postApiWorkspacesByWorkspaceIdImportExportExports(workspaceId, postApiWorkspacesByWorkspaceIdImportExportExportsRequest)



### Example
```dart
import 'package:role_sdk/api.dart';

final api = RoleSdk().getImportExportApi();
final int workspaceId = 56; // int | 
final PostApiWorkspacesByWorkspaceIdImportExportExportsRequest postApiWorkspacesByWorkspaceIdImportExportExportsRequest = ; // PostApiWorkspacesByWorkspaceIdImportExportExportsRequest | 

try {
    final response = api.postApiWorkspacesByWorkspaceIdImportExportExports(workspaceId, postApiWorkspacesByWorkspaceIdImportExportExportsRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ImportExportApi->postApiWorkspacesByWorkspaceIdImportExportExports: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **int**|  | 
 **postApiWorkspacesByWorkspaceIdImportExportExportsRequest** | [**PostApiWorkspacesByWorkspaceIdImportExportExportsRequest**](PostApiWorkspacesByWorkspaceIdImportExportExportsRequest.md)|  | 

### Return type

[**PostApiWorkspacesByWorkspaceIdImportExportExports201Response**](PostApiWorkspacesByWorkspaceIdImportExportExports201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postApiWorkspacesByWorkspaceIdImportExportImports**
> PostApiWorkspacesByWorkspaceIdImportExportExports201Response postApiWorkspacesByWorkspaceIdImportExportImports(workspaceId, postApiWorkspacesByWorkspaceIdImportExportImportsRequest)



### Example
```dart
import 'package:role_sdk/api.dart';

final api = RoleSdk().getImportExportApi();
final int workspaceId = 56; // int | 
final PostApiWorkspacesByWorkspaceIdImportExportImportsRequest postApiWorkspacesByWorkspaceIdImportExportImportsRequest = ; // PostApiWorkspacesByWorkspaceIdImportExportImportsRequest | 

try {
    final response = api.postApiWorkspacesByWorkspaceIdImportExportImports(workspaceId, postApiWorkspacesByWorkspaceIdImportExportImportsRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ImportExportApi->postApiWorkspacesByWorkspaceIdImportExportImports: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **int**|  | 
 **postApiWorkspacesByWorkspaceIdImportExportImportsRequest** | [**PostApiWorkspacesByWorkspaceIdImportExportImportsRequest**](PostApiWorkspacesByWorkspaceIdImportExportImportsRequest.md)|  | 

### Return type

[**PostApiWorkspacesByWorkspaceIdImportExportExports201Response**](PostApiWorkspacesByWorkspaceIdImportExportExports201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

