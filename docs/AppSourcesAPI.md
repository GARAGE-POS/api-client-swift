# AppSourcesAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAppSource**](AppSourcesAPI.md#createappsource) | **POST** /api/v1/appsources | Create a new app source
[**deleteAppSource**](AppSourcesAPI.md#deleteappsource) | **DELETE** /api/v1/appsources/{AppSourceID} | Delete an app source
[**getAppSourceById**](AppSourcesAPI.md#getappsourcebyid) | **GET** /api/v1/appsources/{AppSourceID} | Get a specific app source by ID
[**getAppSources**](AppSourcesAPI.md#getappsources) | **GET** /api/v1/appsources | Get app sources with dynamic filtering, pagination, and sorting
[**updateAppSource**](AppSourcesAPI.md#updateappsource) | **PUT** /api/v1/appsources/{AppSourceID} | Update an existing app source


# **createAppSource**
```swift
    open class func createAppSource(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, appSourceRequest: AppSourceRequest, completion: @escaping (_ data: AppSourceResponse?, _ error: Error?) -> Void)
```

Create a new app source

Create a new app source with the specified details

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let appSourceRequest = AppSourceRequest(name: "name_example", nameAr: "nameAr_example", userID: 123) // AppSourceRequest | The AppSourceRequest parameter

// Create a new app source
AppSourcesAPI.createAppSource(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, appSourceRequest: appSourceRequest) { (response, error) in
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
 **appSourceRequest** | [**AppSourceRequest**](AppSourceRequest.md) | The AppSourceRequest parameter | 

### Return type

[**AppSourceResponse**](AppSourceResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAppSource**
```swift
    open class func deleteAppSource(appSourceID: Int64, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete an app source

Delete an app source by its ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let appSourceID = 987 // Int64 | The unique identifier of the appsource
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete an app source
AppSourcesAPI.deleteAppSource(appSourceID: appSourceID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **appSourceID** | **Int64** | The unique identifier of the appsource | 
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

# **getAppSourceById**
```swift
    open class func getAppSourceById(appSourceID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: AppSourceResponse?, _ error: Error?) -> Void)
```

Get a specific app source by ID

Retrieve a single app source using its ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let appSourceID = "appSourceID_example" // String | The unique identifier of the appsource
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get a specific app source by ID
AppSourcesAPI.getAppSourceById(appSourceID: appSourceID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **appSourceID** | **String** | The unique identifier of the appsource | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**AppSourceResponse**](AppSourceResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAppSources**
```swift
    open class func getAppSources(xAccountID: Int, xLocationID: Int, filters: String? = nil, page: Int? = nil, pageSize: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: PagedResultOfAppSourceResponse?, _ error: Error?) -> Void)
```

Get app sources with dynamic filtering, pagination, and sorting

 Supports dynamic filtering, pagination, and sorting using the same FilterRule structure as the POST endpoint.  For complex filtering, you can pass filters as JSON in query parameters: GET /api/v1/appsources?filters=[{\"Field\":\"Name\",\"Operator\":\"contains\",\"Values\":[\"Mobile\"]}]  Available parameters: - page: Page number (default: 1) - pageSize: Items per page (default: 10, max: 100) - sortBy: Field name to sort by (default: UpdatedAt) - sortDirection: 'asc' or 'desc' (default: desc) - filters: JSON array of FilterRule objects  FilterRule structure: - Field: Property name to filter on (e.g., 'Name', 'NameAr', 'AppSourceID') - Operator: Filter operator - 'eq', 'neq', 'gt', 'lt', 'gte', 'lte', 'contains', 'between' - Values: Array of values for the filter  This endpoint uses the same QueryFilterExtensions.ApplyDynamicFilters and ApplySorting methods as the POST endpoint for complete consistency. 

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

// Get app sources with dynamic filtering, pagination, and sorting
AppSourcesAPI.getAppSources(xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, page: page, pageSize: pageSize, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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

[**PagedResultOfAppSourceResponse**](PagedResultOfAppSourceResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAppSource**
```swift
    open class func updateAppSource(appSourceID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, appSourceRequest: AppSourceRequest, completion: @escaping (_ data: AppSourceResponse?, _ error: Error?) -> Void)
```

Update an existing app source

Update an app source with the specified details. Only provided fields will be updated.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let appSourceID = "appSourceID_example" // String | The unique identifier of the appsource
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let appSourceRequest = AppSourceRequest(name: "name_example", nameAr: "nameAr_example", userID: 123) // AppSourceRequest | The AppSourceRequest parameter

// Update an existing app source
AppSourcesAPI.updateAppSource(appSourceID: appSourceID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, appSourceRequest: appSourceRequest) { (response, error) in
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
 **appSourceID** | **String** | The unique identifier of the appsource | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **appSourceRequest** | [**AppSourceRequest**](AppSourceRequest.md) | The AppSourceRequest parameter | 

### Return type

[**AppSourceResponse**](AppSourceResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

