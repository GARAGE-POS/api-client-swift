# ReconciliationsAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addReconciliationItem**](ReconciliationsAPI.md#addreconciliationitem) | **POST** /api/v1/reconciliations/{ReconciliationID}/items | Bulk add items to a reconciliation
[**addReconciliationItemsByCategory**](ReconciliationsAPI.md#addreconciliationitemsbycategory) | **POST** /api/v1/reconciliations/{ReconciliationID}/items/by-category | Add items by category to a reconciliation
[**auditReconciliation**](ReconciliationsAPI.md#auditreconciliation) | **PUT** /api/v1/reconciliations/{ReconciliationID}/audit | Audit and post adjustments for a reconciliation
[**cancelReconciliation**](ReconciliationsAPI.md#cancelreconciliation) | **PUT** /api/v1/reconciliations/{ReconciliationID}/cancel | Cancel a reconciliation
[**createReconciliation**](ReconciliationsAPI.md#createreconciliation) | **POST** /api/v1/reconciliations | Create a reconciliation session for a warehouse
[**getReconciliationById**](ReconciliationsAPI.md#getreconciliationbyid) | **GET** /api/v1/reconciliations/{ReconciliationID} | Get reconciliation by ID
[**getReconciliations**](ReconciliationsAPI.md#getreconciliations) | **GET** /api/v1/reconciliations | List reconciliations
[**processReconciliationSubmission**](ReconciliationsAPI.md#processreconciliationsubmission) | **PUT** /api/v1/reconciliations/{ReconciliationID}/submit | Submit a reconciliation for audit
[**updateReconciliationPhysical**](ReconciliationsAPI.md#updatereconciliationphysical) | **PUT** /api/v1/reconciliations/{ReconciliationID}/physical | Update physical quantities for a stock count


# **addReconciliationItem**
```swift
    open class func addReconciliationItem(reconciliationID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, reconciliationAddItemRequest: ReconciliationAddItemRequest, completion: @escaping (_ data: ReconciliationResponse?, _ error: Error?) -> Void)
```

Bulk add items to a reconciliation

Adds one or more items to an in-progress reconciliation session. Items must be active in the location. Items already in the reconciliation are skipped.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let reconciliationID = "reconciliationID_example" // String | The unique identifier of the Reconciliation
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let reconciliationAddItemRequest = ReconciliationAddItemRequest(items: [ReconciliationItemEntry(itemID: 123, unitID: 123)]) // ReconciliationAddItemRequest | The ReconciliationAddItemRequest parameter

// Bulk add items to a reconciliation
ReconciliationsAPI.addReconciliationItem(reconciliationID: reconciliationID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, reconciliationAddItemRequest: reconciliationAddItemRequest) { (response, error) in
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
 **reconciliationID** | **String** | The unique identifier of the Reconciliation | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **reconciliationAddItemRequest** | [**ReconciliationAddItemRequest**](ReconciliationAddItemRequest.md) | The ReconciliationAddItemRequest parameter | 

### Return type

[**ReconciliationResponse**](ReconciliationResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addReconciliationItemsByCategory**
```swift
    open class func addReconciliationItemsByCategory(reconciliationID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, reconciliationAddByCategoryRequest: ReconciliationAddByCategoryRequest, completion: @escaping (_ data: ReconciliationResponse?, _ error: Error?) -> Void)
```

Add items by category to a reconciliation

Adds all active location items belonging to the specified categories to an in-progress reconciliation. Items already in the reconciliation are skipped.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let reconciliationID = "reconciliationID_example" // String | The unique identifier of the Reconciliation
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let reconciliationAddByCategoryRequest = ReconciliationAddByCategoryRequest(categoryIDs: [123]) // ReconciliationAddByCategoryRequest | The ReconciliationAddByCategoryRequest parameter

// Add items by category to a reconciliation
ReconciliationsAPI.addReconciliationItemsByCategory(reconciliationID: reconciliationID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, reconciliationAddByCategoryRequest: reconciliationAddByCategoryRequest) { (response, error) in
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
 **reconciliationID** | **String** | The unique identifier of the Reconciliation | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **reconciliationAddByCategoryRequest** | [**ReconciliationAddByCategoryRequest**](ReconciliationAddByCategoryRequest.md) | The ReconciliationAddByCategoryRequest parameter | 

### Return type

[**ReconciliationResponse**](ReconciliationResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **auditReconciliation**
```swift
    open class func auditReconciliation(reconciliationID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, auditReconciliationRequest: AuditReconciliationRequest, completion: @escaping (_ data: ReconciliationResponse?, _ error: Error?) -> Void)
```

Audit and post adjustments for a reconciliation

Approves variances for a reconciliation and posts inventory adjustments.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let reconciliationID = "reconciliationID_example" // String | The unique identifier of the Reconciliation
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let auditReconciliationRequest = AuditReconciliationRequest(isApproveAll: true, auditNotes: "auditNotes_example", reasonType: ReconciliationVarianceReason(), attachments: ["attachments_example"], details: [ReconciliationAuditDetailRequest(itemID: 123, isApproved: true)]) // AuditReconciliationRequest | The AuditReconciliationRequest parameter

// Audit and post adjustments for a reconciliation
ReconciliationsAPI.auditReconciliation(reconciliationID: reconciliationID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, auditReconciliationRequest: auditReconciliationRequest) { (response, error) in
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
 **reconciliationID** | **String** | The unique identifier of the Reconciliation | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **auditReconciliationRequest** | [**AuditReconciliationRequest**](AuditReconciliationRequest.md) | The AuditReconciliationRequest parameter | 

### Return type

[**ReconciliationResponse**](ReconciliationResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cancelReconciliation**
```swift
    open class func cancelReconciliation(reconciliationID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Cancel a reconciliation

Cancels an in-progress reconciliation session, setting the status to Cancelled. Only reconciliations in InProgress status can be cancelled.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let reconciliationID = "reconciliationID_example" // String | The unique identifier of the Reconciliation
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Cancel a reconciliation
ReconciliationsAPI.cancelReconciliation(reconciliationID: reconciliationID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **reconciliationID** | **String** | The unique identifier of the Reconciliation | 
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

# **createReconciliation**
```swift
    open class func createReconciliation(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, reconciliationRequest: ReconciliationRequest, completion: @escaping (_ data: ReconciliationResponse?, _ error: Error?) -> Void)
```

Create a reconciliation session for a warehouse

Creates a StockCount document and loads snapshot details for the selected warehouse.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let reconciliationRequest = ReconciliationRequest(warehouseID: 123, reconciliationType: ReconciliationType(), reconciliationDate: Date(), notes: "notes_example", reasonType: ReconciliationVarianceReason(), attachments: ["attachments_example"], details: [ReconciliationDetailRequest(itemID: 123, systemQuantity: 123, physicalQuantity: 123, unitID: 123, reasonType: nil)]) // ReconciliationRequest | The ReconciliationRequest parameter

// Create a reconciliation session for a warehouse
ReconciliationsAPI.createReconciliation(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, reconciliationRequest: reconciliationRequest) { (response, error) in
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
 **reconciliationRequest** | [**ReconciliationRequest**](ReconciliationRequest.md) | The ReconciliationRequest parameter | 

### Return type

[**ReconciliationResponse**](ReconciliationResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReconciliationById**
```swift
    open class func getReconciliationById(reconciliationID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: ReconciliationResponse?, _ error: Error?) -> Void)
```

Get reconciliation by ID

Retrieves a single reconciliation (stock count) document with its details.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let reconciliationID = "reconciliationID_example" // String | The unique identifier of the Reconciliation
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get reconciliation by ID
ReconciliationsAPI.getReconciliationById(reconciliationID: reconciliationID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **reconciliationID** | **String** | The unique identifier of the Reconciliation | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**ReconciliationResponse**](ReconciliationResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReconciliations**
```swift
    open class func getReconciliations(xAccountID: Int, xLocationID: Int, filters: String? = nil, page: Int? = nil, pageSize: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: PagedResultOfReconciliationResponse?, _ error: Error?) -> Void)
```

List reconciliations

Returns a paged list of reconciliations (stock count sessions) with their details.

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

// List reconciliations
ReconciliationsAPI.getReconciliations(xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, page: page, pageSize: pageSize, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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

[**PagedResultOfReconciliationResponse**](PagedResultOfReconciliationResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **processReconciliationSubmission**
```swift
    open class func processReconciliationSubmission(reconciliationID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: ReconciliationResponse?, _ error: Error?) -> Void)
```

Submit a reconciliation for audit

Submits an in-progress reconciliation for audit review. Changes the status from InProgress to AuditPending.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let reconciliationID = "reconciliationID_example" // String | The unique identifier of the Reconciliation
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Submit a reconciliation for audit
ReconciliationsAPI.processReconciliationSubmission(reconciliationID: reconciliationID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **reconciliationID** | **String** | The unique identifier of the Reconciliation | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**ReconciliationResponse**](ReconciliationResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateReconciliationPhysical**
```swift
    open class func updateReconciliationPhysical(reconciliationID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, reconciliationPhysicalRequest: ReconciliationPhysicalRequest, completion: @escaping (_ data: ReconciliationResponse?, _ error: Error?) -> Void)
```

Update physical quantities for a stock count

Updates physical quantities on stock count details and computes variances.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let reconciliationID = "reconciliationID_example" // String | The unique identifier of the Reconciliation
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let reconciliationPhysicalRequest = ReconciliationPhysicalRequest(auditNotes: "auditNotes_example", reasonType: ReconciliationVarianceReason(), attachments: ["attachments_example"], details: [ReconciliationPhysicalDetailRequest(itemID: 123, physicalQuantity: 123, reasonType: nil, notes: "notes_example")]) // ReconciliationPhysicalRequest | The ReconciliationPhysicalRequest parameter

// Update physical quantities for a stock count
ReconciliationsAPI.updateReconciliationPhysical(reconciliationID: reconciliationID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, reconciliationPhysicalRequest: reconciliationPhysicalRequest) { (response, error) in
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
 **reconciliationID** | **String** | The unique identifier of the Reconciliation | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **reconciliationPhysicalRequest** | [**ReconciliationPhysicalRequest**](ReconciliationPhysicalRequest.md) | The ReconciliationPhysicalRequest parameter | 

### Return type

[**ReconciliationResponse**](ReconciliationResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

