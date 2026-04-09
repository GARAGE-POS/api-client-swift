# OrderNotesAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createOrderNote**](OrderNotesAPI.md#createordernote) | **POST** /api/v1/order-notes | Create a new order note
[**deleteOrderNote**](OrderNotesAPI.md#deleteordernote) | **DELETE** /api/v1/order-notes/{OrderNoteID} | Delete an order note
[**getOrderNote**](OrderNotesAPI.md#getordernote) | **GET** /api/v1/order-notes | Get order notes with dynamic filtering, pagination, and sorting
[**getOrderNoteById**](OrderNotesAPI.md#getordernotebyid) | **GET** /api/v1/order-notes/{OrderNoteID} | Get order note by ID
[**updateOrderNote**](OrderNotesAPI.md#updateordernote) | **PUT** /api/v1/order-notes/{OrderNoteID} | Update an order note


# **createOrderNote**
```swift
    open class func createOrderNote(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, patchOrderNoteRequest: PatchOrderNoteRequest, completion: @escaping (_ data: OrderNoteResponse?, _ error: Error?) -> Void)
```

Create a new order note

Creates a new order note with the specified properties

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let patchOrderNoteRequest = PatchOrderNoteRequest(orderID: 123, comment: "comment_example", notesStatus: OrderNoteStatus(), signaturePath: "signaturePath_example", noteImageJSON: ["noteImageJSON_example"]) // PatchOrderNoteRequest | The PatchOrderNoteRequest parameter

// Create a new order note
OrderNotesAPI.createOrderNote(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, patchOrderNoteRequest: patchOrderNoteRequest) { (response, error) in
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
 **patchOrderNoteRequest** | [**PatchOrderNoteRequest**](PatchOrderNoteRequest.md) | The PatchOrderNoteRequest parameter | 

### Return type

[**OrderNoteResponse**](OrderNoteResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOrderNote**
```swift
    open class func deleteOrderNote(orderNoteID: Int64, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete an order note

Deletes an existing order note by its ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let orderNoteID = 987 // Int64 | The unique identifier of the ordernotes
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete an order note
OrderNotesAPI.deleteOrderNote(orderNoteID: orderNoteID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **orderNoteID** | **Int64** | The unique identifier of the ordernotes | 
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

# **getOrderNote**
```swift
    open class func getOrderNote(page: Int, pageSize: Int, sortDirection: String, xAccountID: Int, xLocationID: Int, filters: String? = nil, sortBy: String? = nil, completion: @escaping (_ data: PagedResultOfOrderNoteResponse?, _ error: Error?) -> Void)
```

Get order notes with dynamic filtering, pagination, and sorting

Supports dynamic filtering, pagination, and sorting.

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

// Get order notes with dynamic filtering, pagination, and sorting
OrderNotesAPI.getOrderNote(page: page, pageSize: pageSize, sortDirection: sortDirection, xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, sortBy: sortBy) { (response, error) in
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

[**PagedResultOfOrderNoteResponse**](PagedResultOfOrderNoteResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderNoteById**
```swift
    open class func getOrderNoteById(orderNoteID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: OrderNoteResponse?, _ error: Error?) -> Void)
```

Get order note by ID

Returns a specific order note by its ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let orderNoteID = "orderNoteID_example" // String | The unique identifier of the ordernotes
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get order note by ID
OrderNotesAPI.getOrderNoteById(orderNoteID: orderNoteID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **orderNoteID** | **String** | The unique identifier of the ordernotes | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**OrderNoteResponse**](OrderNoteResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOrderNote**
```swift
    open class func updateOrderNote(orderNoteID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, patchOrderNoteRequest: PatchOrderNoteRequest, completion: @escaping (_ data: OrderNoteResponse?, _ error: Error?) -> Void)
```

Update an order note

Updates an existing order note with the specified properties

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let orderNoteID = "orderNoteID_example" // String | The unique identifier of the ordernotes
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let patchOrderNoteRequest = PatchOrderNoteRequest(orderID: 123, comment: "comment_example", notesStatus: OrderNoteStatus(), signaturePath: "signaturePath_example", noteImageJSON: ["noteImageJSON_example"]) // PatchOrderNoteRequest | The PatchOrderNoteRequest parameter

// Update an order note
OrderNotesAPI.updateOrderNote(orderNoteID: orderNoteID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, patchOrderNoteRequest: patchOrderNoteRequest) { (response, error) in
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
 **orderNoteID** | **String** | The unique identifier of the ordernotes | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **patchOrderNoteRequest** | [**PatchOrderNoteRequest**](PatchOrderNoteRequest.md) | The PatchOrderNoteRequest parameter | 

### Return type

[**OrderNoteResponse**](OrderNoteResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

