# UsersAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUser**](UsersAPI.md#createuser) | **POST** /api/v1/users | Create a new staff user
[**deleteUser**](UsersAPI.md#deleteuser) | **DELETE** /api/v1/users/{UserID} | Delete a user
[**getUserById**](UsersAPI.md#getuserbyid) | **GET** /api/v1/users/{UserID} | Get user details by ID
[**getUserInfo**](UsersAPI.md#getuserinfo) | **GET** /api/v1/me | Get current user information
[**getUsers**](UsersAPI.md#getusers) | **GET** /api/v1/users | List all staff users
[**updateUser**](UsersAPI.md#updateuser) | **PUT** /api/v1/users/{UserID} | Update an existing user


# **createUser**
```swift
    open class func createUser(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, userRequest: UserRequest, completion: @escaping (_ data: UserDetailResponse?, _ error: Error?) -> Void)
```

Create a new staff user

Creates a new staff user for the current account with optional password, passcode, and initial role assignments.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let userRequest = UserRequest(email: "email_example", firstName: "firstName_example", lastName: "lastName_example", phoneNumber: "phoneNumber_example", designation: "designation_example", contactNo: "contactNo_example", imagePath: "imagePath_example", cityID: 123, password: "password_example", statusID: StatusType(), roles: [UserRoleAssignment(roleID: 123, locationID: 123)], directPermissions: [UserPermissionAssignment(permission: "permission_example", locationID: 123)], passcode: "passcode_example", accountLocations: [UserAccountLocationAssignment(accountID: 123, locationIDs: [123])]) // UserRequest | The UserRequest parameter

// Create a new staff user
UsersAPI.createUser(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, userRequest: userRequest) { (response, error) in
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
 **userRequest** | [**UserRequest**](UserRequest.md) | The UserRequest parameter | 

### Return type

[**UserDetailResponse**](UserDetailResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUser**
```swift
    open class func deleteUser(userID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a user

Permanently deletes a staff user and all associated data including role assignments and permissions.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let userID = "userID_example" // String | The unique identifier of the User
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete a user
UsersAPI.deleteUser(userID: userID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **userID** | **String** | The unique identifier of the User | 
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

# **getUserById**
```swift
    open class func getUserById(userID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: UserDetailResponse?, _ error: Error?) -> Void)
```

Get user details by ID

Retrieves detailed information about a specific staff user including roles, permissions, and account associations.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let userID = "userID_example" // String | The unique identifier of the User
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get user details by ID
UsersAPI.getUserById(userID: userID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **userID** | **String** | The unique identifier of the User | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**UserDetailResponse**](UserDetailResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserInfo**
```swift
    open class func getUserInfo(xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: UserInfoResponse?, _ error: Error?) -> Void)
```

Get current user information

Retrieves the current authenticated user's information based on the JWT token.                             Returns user profile data according to the requested OAuth scopes.                             

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get current user information
UsersAPI.getUserInfo(xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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

### Return type

[**UserInfoResponse**](UserInfoResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsers**
```swift
    open class func getUsers(xAccountID: Int, xLocationID: Int, filters: String? = nil, page: Int? = nil, pageSize: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: PagedResultOfUserResponse?, _ error: Error?) -> Void)
```

List all staff users

Retrieves a paginated list of staff users for the current account with support for filtering, search, and sorting.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let filters = "filters_example" // String | JSON string containing array of filter rules to apply. Example: [{\"Field\":\"MakeID\",\"Operator\":\"eq\",\"Values\":[\"1\"]}] (optional)
let page = 987 // Int | Current page number (1-based) (optional)
let pageSize = 987 // Int | Number of items per page (optional)
let sortBy = "sortBy_example" // String | Field name to sort by (optional)
let sortDirection = "sortDirection_example" // String | Sort direction: \"asc\" or \"desc\" (optional)

// List all staff users
UsersAPI.getUsers(xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, page: page, pageSize: pageSize, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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
 **filters** | **String** | JSON string containing array of filter rules to apply. Example: [{\&quot;Field\&quot;:\&quot;MakeID\&quot;,\&quot;Operator\&quot;:\&quot;eq\&quot;,\&quot;Values\&quot;:[\&quot;1\&quot;]}] | [optional] 
 **page** | **Int** | Current page number (1-based) | [optional] 
 **pageSize** | **Int** | Number of items per page | [optional] 
 **sortBy** | **String** | Field name to sort by | [optional] 
 **sortDirection** | **String** | Sort direction: \&quot;asc\&quot; or \&quot;desc\&quot; | [optional] 

### Return type

[**PagedResultOfUserResponse**](PagedResultOfUserResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUser**
```swift
    open class func updateUser(userID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, userRequest: UserRequest, completion: @escaping (_ data: UserResponse?, _ error: Error?) -> Void)
```

Update an existing user

Updates a staff user's information. Use separate endpoints to modify role assignments, permissions, or password.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let userID = "userID_example" // String | The unique identifier of the User
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let userRequest = UserRequest(email: "email_example", firstName: "firstName_example", lastName: "lastName_example", phoneNumber: "phoneNumber_example", designation: "designation_example", contactNo: "contactNo_example", imagePath: "imagePath_example", cityID: 123, password: "password_example", statusID: StatusType(), roles: [UserRoleAssignment(roleID: 123, locationID: 123)], directPermissions: [UserPermissionAssignment(permission: "permission_example", locationID: 123)], passcode: "passcode_example", accountLocations: [UserAccountLocationAssignment(accountID: 123, locationIDs: [123])]) // UserRequest | The UserRequest parameter

// Update an existing user
UsersAPI.updateUser(userID: userID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, userRequest: userRequest) { (response, error) in
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
 **userID** | **String** | The unique identifier of the User | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **userRequest** | [**UserRequest**](UserRequest.md) | The UserRequest parameter | 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

