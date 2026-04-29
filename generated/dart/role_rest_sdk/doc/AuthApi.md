# role_rest_sdk.api.AuthApi

## Load the API package

```dart
import 'package:role_rest_sdk/api.dart';
```

All URIs are relative to _http://localhost_

| Method                                                    | HTTP request                | Description |
| --------------------------------------------------------- | --------------------------- | ----------- |
| [**getApiAuthMe**](AuthApi.md#getapiauthme)               | **GET** /api/auth/me        |
| [**postApiAuthLogin**](AuthApi.md#postapiauthlogin)       | **POST** /api/auth/login    |
| [**postApiAuthLogout**](AuthApi.md#postapiauthlogout)     | **POST** /api/auth/logout   |
| [**postApiAuthRefresh**](AuthApi.md#postapiauthrefresh)   | **POST** /api/auth/refresh  |
| [**postApiAuthRegister**](AuthApi.md#postapiauthregister) | **POST** /api/auth/register |

# **getApiAuthMe**

> GetApiAuthMe200Response getApiAuthMe()

### Example

```dart
import 'package:role_rest_sdk/api.dart';

final api = RoleRestSdk().getAuthApi();

try {
    final response = api.getApiAuthMe();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->getApiAuthMe: $e\n');
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetApiAuthMe200Response**](GetApiAuthMe200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postApiAuthLogin**

> PostApiAuthLogin200Response postApiAuthLogin(postApiAuthLoginRequest)

### Example

```dart
import 'package:role_rest_sdk/api.dart';

final api = RoleRestSdk().getAuthApi();
final PostApiAuthLoginRequest postApiAuthLoginRequest = ; // PostApiAuthLoginRequest |

try {
    final response = api.postApiAuthLogin(postApiAuthLoginRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->postApiAuthLogin: $e\n');
}
```

### Parameters

| Name                        | Type                                                      | Description | Notes |
| --------------------------- | --------------------------------------------------------- | ----------- | ----- |
| **postApiAuthLoginRequest** | [**PostApiAuthLoginRequest**](PostApiAuthLoginRequest.md) |             |

### Return type

[**PostApiAuthLogin200Response**](PostApiAuthLogin200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postApiAuthLogout**

> PostApiAuthLogout200Response postApiAuthLogout(postApiAuthLogoutRequest)

### Example

```dart
import 'package:role_rest_sdk/api.dart';

final api = RoleRestSdk().getAuthApi();
final PostApiAuthLogoutRequest postApiAuthLogoutRequest = ; // PostApiAuthLogoutRequest |

try {
    final response = api.postApiAuthLogout(postApiAuthLogoutRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->postApiAuthLogout: $e\n');
}
```

### Parameters

| Name                         | Type                                                        | Description | Notes |
| ---------------------------- | ----------------------------------------------------------- | ----------- | ----- |
| **postApiAuthLogoutRequest** | [**PostApiAuthLogoutRequest**](PostApiAuthLogoutRequest.md) |             |

### Return type

[**PostApiAuthLogout200Response**](PostApiAuthLogout200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postApiAuthRefresh**

> PostApiAuthRefresh200Response postApiAuthRefresh(postApiAuthLogoutRequest)

### Example

```dart
import 'package:role_rest_sdk/api.dart';

final api = RoleRestSdk().getAuthApi();
final PostApiAuthLogoutRequest postApiAuthLogoutRequest = ; // PostApiAuthLogoutRequest |

try {
    final response = api.postApiAuthRefresh(postApiAuthLogoutRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->postApiAuthRefresh: $e\n');
}
```

### Parameters

| Name                         | Type                                                        | Description | Notes |
| ---------------------------- | ----------------------------------------------------------- | ----------- | ----- |
| **postApiAuthLogoutRequest** | [**PostApiAuthLogoutRequest**](PostApiAuthLogoutRequest.md) |             |

### Return type

[**PostApiAuthRefresh200Response**](PostApiAuthRefresh200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postApiAuthRegister**

> PostApiAuthRefresh200Response postApiAuthRegister(postApiAuthRegisterRequest)

### Example

```dart
import 'package:role_rest_sdk/api.dart';

final api = RoleRestSdk().getAuthApi();
final PostApiAuthRegisterRequest postApiAuthRegisterRequest = ; // PostApiAuthRegisterRequest |

try {
    final response = api.postApiAuthRegister(postApiAuthRegisterRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->postApiAuthRegister: $e\n');
}
```

### Parameters

| Name                           | Type                                                            | Description | Notes |
| ------------------------------ | --------------------------------------------------------------- | ----------- | ----- |
| **postApiAuthRegisterRequest** | [**PostApiAuthRegisterRequest**](PostApiAuthRegisterRequest.md) |             |

### Return type

[**PostApiAuthRefresh200Response**](PostApiAuthRefresh200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
