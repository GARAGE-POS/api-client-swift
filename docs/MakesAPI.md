# MakesAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createMake**](MakesAPI.md#createmake) | **POST** /api/v1/makes | Create a new vehicle make
[**deleteMake**](MakesAPI.md#deletemake) | **DELETE** /api/v1/makes/{MakeID} | Delete a vehicle make
[**getMakeById**](MakesAPI.md#getmakebyid) | **GET** /api/v1/makes/{MakeID} | Get a vehicle make by ID
[**getMakes**](MakesAPI.md#getmakes) | **GET** /api/v1/makes | Get vehicle makes with filtering and pagination
[**updateMake**](MakesAPI.md#updatemake) | **PUT** /api/v1/makes/{MakeID} | Update an existing vehicle make


# **createMake**
```swift
    open class func createMake(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, makeRequest: MakeRequest, completion: @escaping (_ data: MakeResponse?, _ error: Error?) -> Void)
```

Create a new vehicle make

Creates a new vehicle make (manufacturer) in the system with bilingual support.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let makeRequest = MakeRequest(name: "name_example", nameAr: "nameAr_example", imagePath: "imagePath_example", displayOrder: 123, statusID: StatusType()) // MakeRequest | The MakeRequest parameter

// Create a new vehicle make
MakesAPI.createMake(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, makeRequest: makeRequest) { (response, error) in
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
 **makeRequest** | [**MakeRequest**](MakeRequest.md) | The MakeRequest parameter | 

### Return type

[**MakeResponse**](MakeResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMake**
```swift
    open class func deleteMake(makeID: Int64, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a vehicle make

Deletes a vehicle make from the system with comprehensive relationship validation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let makeID = 987 // Int64 | The unique identifier of the make
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete a vehicle make
MakesAPI.deleteMake(makeID: makeID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **makeID** | **Int64** | The unique identifier of the make | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMakeById**
```swift
    open class func getMakeById(makeID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: MakeResponse?, _ error: Error?) -> Void)
```

Get a vehicle make by ID

Retrieves a specific vehicle make by its unique identifier, including all associated vehicle models.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let makeID = "makeID_example" // String | The unique identifier of the make
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get a vehicle make by ID
MakesAPI.getMakeById(makeID: makeID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **makeID** | **String** | The unique identifier of the make | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**MakeResponse**](MakeResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMakes**
```swift
    open class func getMakes(xAccountID: Int, xLocationID: Int, filters: String? = nil, page: Int? = nil, pageSize: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: PagedResultOfMakeResponse?, _ error: Error?) -> Void)
```

Get vehicle makes with filtering and pagination

Retrieves a paginated list of vehicle makes (manufacturers) with advanced filtering and sorting capabilities.

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

// Get vehicle makes with filtering and pagination
MakesAPI.getMakes(xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, page: page, pageSize: pageSize, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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

[**PagedResultOfMakeResponse**](PagedResultOfMakeResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMake**
```swift
    open class func updateMake(makeID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, makeRequest: MakeRequest, completion: @escaping (_ data: MakeResponse?, _ error: Error?) -> Void)
```

Update an existing vehicle make

Updates an existing vehicle make with partial update support (PATCH-style operations).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let makeID = "makeID_example" // String | The unique identifier of the make
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let makeRequest = MakeRequest(name: "name_example", nameAr: "nameAr_example", imagePath: "imagePath_example", displayOrder: 123, statusID: StatusType()) // MakeRequest | The MakeRequest parameter

// Update an existing vehicle make
MakesAPI.updateMake(makeID: makeID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, makeRequest: makeRequest) { (response, error) in
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
 **makeID** | **String** | The unique identifier of the make | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **makeRequest** | [**MakeRequest**](MakeRequest.md) | The MakeRequest parameter | 

### Return type

[**MakeResponse**](MakeResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

