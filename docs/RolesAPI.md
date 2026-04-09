# RolesAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createRole**](RolesAPI.md#createrole) | **POST** /api/v1/roles | Create a new account-specific role
[**deleteRole**](RolesAPI.md#deleterole) | **DELETE** /api/v1/roles/{RoleID} | Delete a role
[**getRoleById**](RolesAPI.md#getrolebyid) | **GET** /api/v1/roles/{RoleID} | Get role details by ID
[**getRoles**](RolesAPI.md#getroles) | **GET** /api/v1/roles | List all account-specific roles
[**updateRole**](RolesAPI.md#updaterole) | **PUT** /api/v1/roles/{RoleID} | Update an existing role


# **createRole**
```swift
    open class func createRole(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, roleRequest: RoleRequest, completion: @escaping (_ data: RoleDetailResponse?, _ error: Error?) -> Void)
```

Create a new account-specific role

Creates a new role for the current account with optional initial permissions and location scoping. Note: All roles automatically receive fundamental permissions (Account_Get, Account_GetList, Location_Get, Location_GetList) to allow users to see their accounts and locations.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let roleRequest = RoleRequest(name: "name_example", locationID: 123, permissions: ["permissions_example"]) // RoleRequest | The RoleRequest parameter

// Create a new account-specific role
RolesAPI.createRole(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, roleRequest: roleRequest) { (response, error) in
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
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **roleRequest** | [**RoleRequest**](RoleRequest.md) | The RoleRequest parameter | 

### Return type

[**RoleDetailResponse**](RoleDetailResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRole**
```swift
    open class func deleteRole(roleID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a role

Deletes an account-specific role and all its associated permissions. Cannot delete roles with users assigned or system roles.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let roleID = "roleID_example" // String | The unique identifier of the Role
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete a role
RolesAPI.deleteRole(roleID: roleID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **roleID** | **String** | The unique identifier of the Role | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRoleById**
```swift
    open class func getRoleById(roleID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: RoleDetailResponse?, _ error: Error?) -> Void)
```

Get role details by ID

Retrieves detailed information about a specific role including assigned permissions and user count.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let roleID = "roleID_example" // String | The unique identifier of the Role
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get role details by ID
RolesAPI.getRoleById(roleID: roleID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **roleID** | **String** | The unique identifier of the Role | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**RoleDetailResponse**](RoleDetailResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRoles**
```swift
    open class func getRoles(xAccountID: Int, xLocationID: Int, filters: String? = nil, page: Int? = nil, pageSize: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: PagedResultOfRoleResponse?, _ error: Error?) -> Void)
```

List all account-specific roles

Retrieves a paginated list of roles for the current account with optional filtering by location.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let filters = "filters_example" // String | The Filters query parameter (optional)
let page = 987 // Int | Page number for pagination (1-based) (optional)
let pageSize = 987 // Int | Number of items per page (optional)
let sortBy = "sortBy_example" // String | Field name to sort by (optional)
let sortDirection = "sortDirection_example" // String | The SortDirection query parameter (optional)

// List all account-specific roles
RolesAPI.getRoles(xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, page: page, pageSize: pageSize, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **filters** | **String** | The Filters query parameter | [optional] 
 **page** | **Int** | Page number for pagination (1-based) | [optional] 
 **pageSize** | **Int** | Number of items per page | [optional] 
 **sortBy** | **String** | Field name to sort by | [optional] 
 **sortDirection** | **String** | The SortDirection query parameter | [optional] 

### Return type

[**PagedResultOfRoleResponse**](PagedResultOfRoleResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRole**
```swift
    open class func updateRole(roleID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, roleRequest: RoleRequest, completion: @escaping (_ data: RoleResponse?, _ error: Error?) -> Void)
```

Update an existing role

Updates an account-specific role's name, location scoping, and permissions. When updating permissions, the list replaces all existing permissions except for fundamental ones. Fundamental permissions (Account_Get, Account_GetList, Location_Get, Location_GetList) are automatically preserved and cannot be removed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let roleID = "roleID_example" // String | The unique identifier of the Role
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let roleRequest = RoleRequest(name: "name_example", locationID: 123, permissions: ["permissions_example"]) // RoleRequest | The RoleRequest parameter

// Update an existing role
RolesAPI.updateRole(roleID: roleID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, roleRequest: roleRequest) { (response, error) in
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
 **roleID** | **String** | The unique identifier of the Role | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **roleRequest** | [**RoleRequest**](RoleRequest.md) | The RoleRequest parameter | 

### Return type

[**RoleResponse**](RoleResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

