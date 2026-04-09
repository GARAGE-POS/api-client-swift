# BaysAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBay**](BaysAPI.md#createbay) | **POST** /api/v1/bays | Create a new bay
[**deleteBay**](BaysAPI.md#deletebay) | **DELETE** /api/v1/bays/{BayID} | Delete a bay
[**getBayById**](BaysAPI.md#getbaybyid) | **GET** /api/v1/bays/{BayID} | Get bay by ID
[**getBays**](BaysAPI.md#getbays) | **GET** /api/v1/bays | Get all bays
[**updateBay**](BaysAPI.md#updatebay) | **PUT** /api/v1/bays/{BayID} | Update an existing bay


# **createBay**
```swift
    open class func createBay(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, bayRequest: BayRequest, completion: @escaping (_ data: BayResponse?, _ error: Error?) -> Void)
```

Create a new bay

Creates a new bay for the specified location.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let bayRequest = BayRequest(name: "name_example", nameAr: "nameAr_example", description: "description_example", statusID: 123) // BayRequest | The BayRequest parameter

// Create a new bay
BaysAPI.createBay(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, bayRequest: bayRequest) { (response, error) in
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
 **bayRequest** | [**BayRequest**](BayRequest.md) | The BayRequest parameter | 

### Return type

[**BayResponse**](BayResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBay**
```swift
    open class func deleteBay(bayID: Int64, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a bay

Soft deletes a bay by setting its status to Deleted.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let bayID = 987 // Int64 | The unique identifier of the bay
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete a bay
BaysAPI.deleteBay(bayID: bayID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **bayID** | **Int64** | The unique identifier of the bay | 
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

# **getBayById**
```swift
    open class func getBayById(bayID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: BayResponse?, _ error: Error?) -> Void)
```

Get bay by ID

Returns a specific bay by its ID for the authenticated account and location.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let bayID = "bayID_example" // String | The unique identifier of the bay
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get bay by ID
BaysAPI.getBayById(bayID: bayID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **bayID** | **String** | The unique identifier of the bay | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**BayResponse**](BayResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBays**
```swift
    open class func getBays(xAccountID: Int, xLocationID: Int, filters: String? = nil, page: Int? = nil, pageSize: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: PagedResultOfBayResponse?, _ error: Error?) -> Void)
```

Get all bays

Returns bays for a specific location, with filtering and pagination capabilities.

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

// Get all bays
BaysAPI.getBays(xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, page: page, pageSize: pageSize, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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

[**PagedResultOfBayResponse**](PagedResultOfBayResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBay**
```swift
    open class func updateBay(bayID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, bayRequest: BayRequest, completion: @escaping (_ data: BayResponse?, _ error: Error?) -> Void)
```

Update an existing bay

Updates an existing bay for the authenticated account and location.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let bayID = "bayID_example" // String | The unique identifier of the bay
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let bayRequest = BayRequest(name: "name_example", nameAr: "nameAr_example", description: "description_example", statusID: 123) // BayRequest | The BayRequest parameter

// Update an existing bay
BaysAPI.updateBay(bayID: bayID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, bayRequest: bayRequest) { (response, error) in
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
 **bayID** | **String** | The unique identifier of the bay | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **bayRequest** | [**BayRequest**](BayRequest.md) | The BayRequest parameter | 

### Return type

[**BayResponse**](BayResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

