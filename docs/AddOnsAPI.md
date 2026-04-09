# AddOnsAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAddOn**](AddOnsAPI.md#createaddon) | **POST** /api/v1/addons | Create a new add-on
[**deleteAddOn**](AddOnsAPI.md#deleteaddon) | **DELETE** /api/v1/addons/{AddOnID} | Delete an add-on
[**getAddOnById**](AddOnsAPI.md#getaddonbyid) | **GET** /api/v1/addons/{AddOnID} | Get add-on by ID
[**getAddOns**](AddOnsAPI.md#getaddons) | **GET** /api/v1/addons | Get add-ons with pagination
[**updateAddOn**](AddOnsAPI.md#updateaddon) | **PUT** /api/v1/addons/{AddOnID} | Update an existing add-on


# **createAddOn**
```swift
    open class func createAddOn(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, addOnRequest: AddOnRequest, completion: @escaping (_ data: AddOnResponse?, _ error: Error?) -> Void)
```

Create a new add-on

Creates a new system add-on template (e.g., Tamara, Tabby, ZATCA, LoyaPro).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let addOnRequest = AddOnRequest(addOnName: "addOnName_example", version: "version_example") // AddOnRequest | The AddOnRequest parameter

// Create a new add-on
AddOnsAPI.createAddOn(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, addOnRequest: addOnRequest) { (response, error) in
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
 **addOnRequest** | [**AddOnRequest**](AddOnRequest.md) | The AddOnRequest parameter | 

### Return type

[**AddOnResponse**](AddOnResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAddOn**
```swift
    open class func deleteAddOn(addOnID: Int64, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete an add-on

Soft deletes an add-on by setting its status to Deleted. The add-on data is preserved but marked as inactive.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let addOnID = 987 // Int64 | The unique identifier of the add-on to delete
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete an add-on
AddOnsAPI.deleteAddOn(addOnID: addOnID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **addOnID** | **Int64** | The unique identifier of the add-on to delete | 
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

# **getAddOnById**
```swift
    open class func getAddOnById(addOnID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: AddOnResponse?, _ error: Error?) -> Void)
```

Get add-on by ID

Retrieves detailed information about a specific add-on template.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let addOnID = "addOnID_example" // String | The unique identifier of the add-on to retrieve
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get add-on by ID
AddOnsAPI.getAddOnById(addOnID: addOnID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **addOnID** | **String** | The unique identifier of the add-on to retrieve | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**AddOnResponse**](AddOnResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAddOns**
```swift
    open class func getAddOns(page: Int, pageSize: Int, sortDirection: String, xAccountID: Int, xLocationID: Int, filters: String? = nil, sortBy: String? = nil, completion: @escaping (_ data: PagedResultOfAddOnResponse?, _ error: Error?) -> Void)
```

Get add-ons with pagination

Retrieves a paginated list of all system add-ons with filtering and sorting.  **Query Parameters:** - **page**: Page number (default: 1) - **pageSize**: Items per page (default: 10, max: 100) - **sortBy**: Field name to sort by (e.g., AddOnID, AddOnName, CreatedAt) - **sortDirection**: Sort direction - 'asc' or 'desc' (default: asc) - **filters**: JSON array of FilterRule objects for complex filtering  **Supported Filter Fields:** - AddOnID, AddOnName, Version - StatusID, CreatedAt, UpdatedAt

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let page = 987 // Int | Page number for pagination (starts from 1) (default to 1)
let pageSize = 987 // Int | Number of items per page (1-100) (default to 10)
let sortDirection = "sortDirection_example" // String | Sort direction: \"asc\" or \"desc\" (default to "asc")
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let filters = "filters_example" // String | JSON array of filter rules. Example: [{\"Field\":\"Name\",\"Operator\":\"contains\",\"Values\":[\"SearchTerm\"]}] Available operators: eq, neq, gt, lt, gte, lte, contains, between (optional) (default to "[]")
let sortBy = "sortBy_example" // String | Field to sort by (optional)

// Get add-ons with pagination
AddOnsAPI.getAddOns(page: page, pageSize: pageSize, sortDirection: sortDirection, xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, sortBy: sortBy) { (response, error) in
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
 **page** | **Int** | Page number for pagination (starts from 1) | [default to 1]
 **pageSize** | **Int** | Number of items per page (1-100) | [default to 10]
 **sortDirection** | **String** | Sort direction: \&quot;asc\&quot; or \&quot;desc\&quot; | [default to &quot;asc&quot;]
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **filters** | **String** | JSON array of filter rules. Example: [{\&quot;Field\&quot;:\&quot;Name\&quot;,\&quot;Operator\&quot;:\&quot;contains\&quot;,\&quot;Values\&quot;:[\&quot;SearchTerm\&quot;]}] Available operators: eq, neq, gt, lt, gte, lte, contains, between | [optional] [default to &quot;[]&quot;]
 **sortBy** | **String** | Field to sort by | [optional] 

### Return type

[**PagedResultOfAddOnResponse**](PagedResultOfAddOnResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAddOn**
```swift
    open class func updateAddOn(addOnID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, addOnRequest: AddOnRequest, completion: @escaping (_ data: AddOnResponse?, _ error: Error?) -> Void)
```

Update an existing add-on

Updates add-on template details including name and version.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let addOnID = "addOnID_example" // String | The unique identifier of the add-on to update
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let addOnRequest = AddOnRequest(addOnName: "addOnName_example", version: "version_example") // AddOnRequest | The AddOnRequest parameter

// Update an existing add-on
AddOnsAPI.updateAddOn(addOnID: addOnID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, addOnRequest: addOnRequest) { (response, error) in
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
 **addOnID** | **String** | The unique identifier of the add-on to update | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **addOnRequest** | [**AddOnRequest**](AddOnRequest.md) | The AddOnRequest parameter | 

### Return type

[**AddOnResponse**](AddOnResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

