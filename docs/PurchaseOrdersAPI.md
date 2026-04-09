# PurchaseOrdersAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**approvePurchaseOrder**](PurchaseOrdersAPI.md#approvepurchaseorder) | **PUT** /api/v1/purchase-orders/{PurchaseOrderID}/approve | Approve a Purchase Order
[**createPurchaseOrder**](PurchaseOrdersAPI.md#createpurchaseorder) | **POST** /api/v1/purchase-orders | Create a Purchase Order (NotBilled)
[**deletePurchaseOrder**](PurchaseOrdersAPI.md#deletepurchaseorder) | **DELETE** /api/v1/purchase-orders/{PurchaseOrderID} | Delete/Cancel a Purchase Order
[**getNextPurchaseOrderReference**](PurchaseOrdersAPI.md#getnextpurchaseorderreference) | **GET** /api/v1/purchase-orders/next-reference | Get next purchase order reference number
[**getPurchaseOrderById**](PurchaseOrdersAPI.md#getpurchaseorderbyid) | **GET** /api/v1/purchase-orders/{PurchaseOrderID} | Get Purchase Order by ID
[**getPurchaseOrders**](PurchaseOrdersAPI.md#getpurchaseorders) | **GET** /api/v1/purchase-orders | List Purchase Orders
[**requestPurchaseOrder**](PurchaseOrdersAPI.md#requestpurchaseorder) | **PUT** /api/v1/purchase-orders/{PurchaseOrderID}/submit | Request/Submit a Purchase Order
[**sendPurchaseOrder**](PurchaseOrdersAPI.md#sendpurchaseorder) | **PUT** /api/v1/purchase-orders/{PurchaseOrderID}/send | Send a Purchase Order
[**updatePurchaseOrder**](PurchaseOrdersAPI.md#updatepurchaseorder) | **PUT** /api/v1/purchase-orders/{PurchaseOrderID} | Update a Purchase Order (NotBilled only)


# **approvePurchaseOrder**
```swift
    open class func approvePurchaseOrder(purchaseOrderID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: PurchaseOrderResponse?, _ error: Error?) -> Void)
```

Approve a Purchase Order

Approves a submitted Purchase Order by changing its status from Submitted to Approved.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let purchaseOrderID = "purchaseOrderID_example" // String | The unique identifier of the PurchaseOrder
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Approve a Purchase Order
PurchaseOrdersAPI.approvePurchaseOrder(purchaseOrderID: purchaseOrderID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **purchaseOrderID** | **String** | The unique identifier of the PurchaseOrder | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**PurchaseOrderResponse**](PurchaseOrderResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPurchaseOrder**
```swift
    open class func createPurchaseOrder(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, purchaseOrderRequest: PurchaseOrderRequest, completion: @escaping (_ data: PurchaseOrderResponse?, _ error: Error?) -> Void)
```

Create a Purchase Order (NotBilled)

Creates a PO with status NotBilled and returns totals.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let purchaseOrderRequest = PurchaseOrderRequest(pONumber: "pONumber_example", referenceNumber: "referenceNumber_example", supplierID: 123, locationID: 123, pODate: Date(), expectedDeliveryDate: Date(), subTotal: 123, discount: 123, shippingCost: 123, taxAmount: 123, total: 123, paymentMethod: 123, paymentTerms: "paymentTerms_example", notes: "notes_example", termsAndConditions: "termsAndConditions_example", details: [PurchaseOrderDetailRequest(itemID: 123, quantity: 123, taxRate: 123, taxAmount: 123, unitID: 123, discount: 123, costPerUnit: 123, pricePerUnit: 123, total: 123)]) // PurchaseOrderRequest | The PurchaseOrderRequest parameter

// Create a Purchase Order (NotBilled)
PurchaseOrdersAPI.createPurchaseOrder(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, purchaseOrderRequest: purchaseOrderRequest) { (response, error) in
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
 **purchaseOrderRequest** | [**PurchaseOrderRequest**](PurchaseOrderRequest.md) | The PurchaseOrderRequest parameter | 

### Return type

[**PurchaseOrderResponse**](PurchaseOrderResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePurchaseOrder**
```swift
    open class func deletePurchaseOrder(purchaseOrderID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete/Cancel a Purchase Order

Cancels a draft Purchase Order by changing its status to Cancelled. Only draft Purchase Orders can be deleted.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let purchaseOrderID = "purchaseOrderID_example" // String | The unique identifier of the PurchaseOrder
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete/Cancel a Purchase Order
PurchaseOrdersAPI.deletePurchaseOrder(purchaseOrderID: purchaseOrderID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **purchaseOrderID** | **String** | The unique identifier of the PurchaseOrder | 
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

# **getNextPurchaseOrderReference**
```swift
    open class func getNextPurchaseOrderReference(xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: NextReferenceResponse?, _ error: Error?) -> Void)
```

Get next purchase order reference number

Returns the next auto-generated reference number for a new purchase order in PO-XXXXX format.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get next purchase order reference number
PurchaseOrdersAPI.getNextPurchaseOrderReference(xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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

[**NextReferenceResponse**](NextReferenceResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPurchaseOrderById**
```swift
    open class func getPurchaseOrderById(purchaseOrderID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: PurchaseOrderResponse?, _ error: Error?) -> Void)
```

Get Purchase Order by ID

Returns a single PO with details and names.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let purchaseOrderID = "purchaseOrderID_example" // String | The unique identifier of the PurchaseOrder
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get Purchase Order by ID
PurchaseOrdersAPI.getPurchaseOrderById(purchaseOrderID: purchaseOrderID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **purchaseOrderID** | **String** | The unique identifier of the PurchaseOrder | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**PurchaseOrderResponse**](PurchaseOrderResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPurchaseOrders**
```swift
    open class func getPurchaseOrders(page: Int, pageSize: Int, sortDirection: String, xAccountID: Int, xLocationID: Int, filters: String? = nil, sortBy: String? = nil, completion: @escaping (_ data: PagedResultOfPurchaseOrderResponse?, _ error: Error?) -> Void)
```

List Purchase Orders

Returns paginated list of POs with supplier name.

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

// List Purchase Orders
PurchaseOrdersAPI.getPurchaseOrders(page: page, pageSize: pageSize, sortDirection: sortDirection, xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, sortBy: sortBy) { (response, error) in
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

[**PagedResultOfPurchaseOrderResponse**](PagedResultOfPurchaseOrderResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestPurchaseOrder**
```swift
    open class func requestPurchaseOrder(purchaseOrderID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: PurchaseOrderResponse?, _ error: Error?) -> Void)
```

Request/Submit a Purchase Order

Submits a draft Purchase Order for approval by changing its status from Draft to Submitted.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let purchaseOrderID = "purchaseOrderID_example" // String | The unique identifier of the PurchaseOrder
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Request/Submit a Purchase Order
PurchaseOrdersAPI.requestPurchaseOrder(purchaseOrderID: purchaseOrderID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **purchaseOrderID** | **String** | The unique identifier of the PurchaseOrder | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**PurchaseOrderResponse**](PurchaseOrderResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendPurchaseOrder**
```swift
    open class func sendPurchaseOrder(purchaseOrderID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: PurchaseOrderResponse?, _ error: Error?) -> Void)
```

Send a Purchase Order

Sends an approved Purchase Order to the supplier by changing its status from Approved to Sent.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let purchaseOrderID = "purchaseOrderID_example" // String | The unique identifier of the PurchaseOrder
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Send a Purchase Order
PurchaseOrdersAPI.sendPurchaseOrder(purchaseOrderID: purchaseOrderID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **purchaseOrderID** | **String** | The unique identifier of the PurchaseOrder | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**PurchaseOrderResponse**](PurchaseOrderResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePurchaseOrder**
```swift
    open class func updatePurchaseOrder(purchaseOrderID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, purchaseOrderRequest: PurchaseOrderRequest, completion: @escaping (_ data: PurchaseOrderResponse?, _ error: Error?) -> Void)
```

Update a Purchase Order (NotBilled only)

Updates PO details when status is NotBilled.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let purchaseOrderID = "purchaseOrderID_example" // String | The unique identifier of the PurchaseOrder
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let purchaseOrderRequest = PurchaseOrderRequest(pONumber: "pONumber_example", referenceNumber: "referenceNumber_example", supplierID: 123, locationID: 123, pODate: Date(), expectedDeliveryDate: Date(), subTotal: 123, discount: 123, shippingCost: 123, taxAmount: 123, total: 123, paymentMethod: 123, paymentTerms: "paymentTerms_example", notes: "notes_example", termsAndConditions: "termsAndConditions_example", details: [PurchaseOrderDetailRequest(itemID: 123, quantity: 123, taxRate: 123, taxAmount: 123, unitID: 123, discount: 123, costPerUnit: 123, pricePerUnit: 123, total: 123)]) // PurchaseOrderRequest | The PurchaseOrderRequest parameter

// Update a Purchase Order (NotBilled only)
PurchaseOrdersAPI.updatePurchaseOrder(purchaseOrderID: purchaseOrderID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, purchaseOrderRequest: purchaseOrderRequest) { (response, error) in
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
 **purchaseOrderID** | **String** | The unique identifier of the PurchaseOrder | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **purchaseOrderRequest** | [**PurchaseOrderRequest**](PurchaseOrderRequest.md) | The PurchaseOrderRequest parameter | 

### Return type

[**PurchaseOrderResponse**](PurchaseOrderResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

