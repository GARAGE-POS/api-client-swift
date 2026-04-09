# PermissionsAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAvailablePermissions**](PermissionsAPI.md#getavailablepermissions) | **GET** /api/v1/permissions | Get all available permissions


# **getAvailablePermissions**
```swift
    open class func getAvailablePermissions(page: Int, pageSize: Int, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: AvailablePermissionsResponse?, _ error: Error?) -> Void)
```

Get all available permissions

Retrieves a complete list of all permissions available in the system that can be assigned to roles and users.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let page = 987 // Int | Page number for pagination (1-based)
let pageSize = 987 // Int | Number of items per page
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get all available permissions
PermissionsAPI.getAvailablePermissions(page: page, pageSize: pageSize, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int** | Page number for pagination (1-based) | 
 **pageSize** | **Int** | Number of items per page | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**AvailablePermissionsResponse**](AvailablePermissionsResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

