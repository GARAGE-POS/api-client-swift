# PurchaseBillsAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPurchaseBill**](PurchaseBillsAPI.md#createpurchasebill) | **POST** /api/v1/purchase-bills | Create Purchase Bill for PO
[**getNextPurchaseBillReference**](PurchaseBillsAPI.md#getnextpurchasebillreference) | **GET** /api/v1/purchase-bills/next-reference | Get next purchase bill reference number
[**getPurchaseBillById**](PurchaseBillsAPI.md#getpurchasebillbyid) | **GET** /api/v1/purchase-bills/{PurchaseBillID} | Get a purchase bill by ID
[**getPurchaseBills**](PurchaseBillsAPI.md#getpurchasebills) | **GET** /api/v1/purchase-bills | List Purchase Bills


# **createPurchaseBill**
```swift
    open class func createPurchaseBill(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, purchaseBillRequest: PurchaseBillRequest, completion: @escaping (_ data: PurchaseBillResponse?, _ error: Error?) -> Void)
```

Create Purchase Bill for PO

Creates a  purchase bill linked to PO and marks PO as Billed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let purchaseBillRequest = PurchaseBillRequest(billNumber: "billNumber_example", purchaseOrderID: 123, referenceNumber: "referenceNumber_example", externalInvoiceNumber: "externalInvoiceNumber_example", supplierID: 123, warehouseID: 123, deliveryDate: Date(), subTotal: 123, discount: 123, total: 123, taxAmount: 123, shippingCost: 123, customsDuty: 123, handlingCost: 123, paymentTerms: "paymentTerms_example", notes: "notes_example", termsAndConditions: "termsAndConditions_example", attachments: ["attachments_example"], paymentStatus: 123, paymentDate: Date(), paymentMethod: 123, paymentReference: "paymentReference_example", dueDate: Date(), internalRemarks: "internalRemarks_example", supplierNotes: "supplierNotes_example", details: [PurchaseBillDetailRequest(itemID: 123, unitID: 123, quantity: 123, taxRate: 123, taxAmount: 123, discount: 123, costPerUnit: 123, pricePerUnit: 123, condition: 123, conditionReason: "conditionReason_example", conditionAction: 123, qtyOrdered: 123, total: 123)]) // PurchaseBillRequest | The PurchaseBillRequest parameter

// Create Purchase Bill for PO
PurchaseBillsAPI.createPurchaseBill(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, purchaseBillRequest: purchaseBillRequest) { (response, error) in
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
 **purchaseBillRequest** | [**PurchaseBillRequest**](PurchaseBillRequest.md) | The PurchaseBillRequest parameter | 

### Return type

[**PurchaseBillResponse**](PurchaseBillResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNextPurchaseBillReference**
```swift
    open class func getNextPurchaseBillReference(xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: NextReferenceResponse?, _ error: Error?) -> Void)
```

Get next purchase bill reference number

Returns the next auto-generated reference number for a new purchase bill in PB-XXXXX format.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get next purchase bill reference number
PurchaseBillsAPI.getNextPurchaseBillReference(xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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

# **getPurchaseBillById**
```swift
    open class func getPurchaseBillById(purchaseBillID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: PurchaseBillResponse?, _ error: Error?) -> Void)
```

Get a purchase bill by ID

Retrieves a specific purchase bill by its unique identifier, including supplier, warehouse, and line item details.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let purchaseBillID = "purchaseBillID_example" // String | The unique identifier of the PurchaseBill
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get a purchase bill by ID
PurchaseBillsAPI.getPurchaseBillById(purchaseBillID: purchaseBillID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **purchaseBillID** | **String** | The unique identifier of the PurchaseBill | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**PurchaseBillResponse**](PurchaseBillResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPurchaseBills**
```swift
    open class func getPurchaseBills(page: Int, pageSize: Int, sortDirection: String, xAccountID: Int, xLocationID: Int, filters: String? = nil, sortBy: String? = nil, completion: @escaping (_ data: PagedResultOfPurchaseBillResponse?, _ error: Error?) -> Void)
```

List Purchase Bills

Returns paginated list of purchase bills with supplier and PO info.

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

// List Purchase Bills
PurchaseBillsAPI.getPurchaseBills(page: page, pageSize: pageSize, sortDirection: sortDirection, xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, sortBy: sortBy) { (response, error) in
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

[**PagedResultOfPurchaseBillResponse**](PagedResultOfPurchaseBillResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

