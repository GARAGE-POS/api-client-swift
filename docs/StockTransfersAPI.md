# StockTransfersAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createStockTransfer**](StockTransfersAPI.md#createstocktransfer) | **POST** /api/v1/stock-transfers | Create a direct stock transfer
[**dispatchStockTransfer**](StockTransfersAPI.md#dispatchstocktransfer) | **PUT** /api/v1/stock-transfers/{TransferID}/dispatch | Dispatch an approved stock transfer
[**getNextStockTransferReference**](StockTransfersAPI.md#getnextstocktransferreference) | **GET** /api/v1/stock-transfers/next-reference | Get next stock transfer reference number
[**getStockTransferById**](StockTransfersAPI.md#getstocktransferbyid) | **GET** /api/v1/stock-transfers/{TransferID} | Get stock transfer by ID
[**getStockTransfers**](StockTransfersAPI.md#getstocktransfers) | **GET** /api/v1/stock-transfers | List stock transfers
[**getStockTransfersByWarehouseId**](StockTransfersAPI.md#getstocktransfersbywarehouseid) | **GET** /api/v1/stock-transfers/warehouse/{WarehouseID} | List stock transfers by warehouse
[**receiveStockTransfer**](StockTransfersAPI.md#receivestocktransfer) | **PUT** /api/v1/stock-transfers/{TransferID}/receive | Receive a stock transfer


# **createStockTransfer**
```swift
    open class func createStockTransfer(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, stockTransferRequest: StockTransferRequest, completion: @escaping (_ data: StockTransferResponse?, _ error: Error?) -> Void)
```

Create a direct stock transfer

Creates a StockTransfer document between warehouses with Approved status for immediate transfer. Validates stock availability before creation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let stockTransferRequest = StockTransferRequest(sourceWarehouseID: 123, destinationWarehouseID: 123, referenceNumber: "referenceNumber_example", priority: TransferPriority(), urgencyReason: "urgencyReason_example", reason: TransferReason(), otherReasonDescription: "otherReasonDescription_example", transportMethod: TransportMethod(), shippingCost: 123, expectedDeliveryDate: Date(), trackingNumber: "trackingNumber_example", notes: "notes_example", details: [StockTransferDetailRequest(itemID: 123, quantity: 123, unitID: 123, condition: ItemCondition(), damagedQuantity: 123, lineNotes: "lineNotes_example")]) // StockTransferRequest | The StockTransferRequest parameter

// Create a direct stock transfer
StockTransfersAPI.createStockTransfer(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, stockTransferRequest: stockTransferRequest) { (response, error) in
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
 **stockTransferRequest** | [**StockTransferRequest**](StockTransferRequest.md) | The StockTransferRequest parameter | 

### Return type

[**StockTransferResponse**](StockTransferResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dispatchStockTransfer**
```swift
    open class func dispatchStockTransfer(transferID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, dispatchStockTransferRequest: DispatchStockTransferRequest, completion: @escaping (_ data: StockTransferResponse?, _ error: Error?) -> Void)
```

Dispatch an approved stock transfer

Dispatches an approved stock transfer, setting status to InTransit and deducting stock from the source warehouse. Optionally updates transport details at dispatch time.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let transferID = "transferID_example" // String | The unique identifier of the Transfer
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let dispatchStockTransferRequest = DispatchStockTransferRequest(transportMethod: TransportMethod(), shippingCost: 123, trackingNumber: "trackingNumber_example", notes: "notes_example") // DispatchStockTransferRequest | The DispatchStockTransferRequest parameter

// Dispatch an approved stock transfer
StockTransfersAPI.dispatchStockTransfer(transferID: transferID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, dispatchStockTransferRequest: dispatchStockTransferRequest) { (response, error) in
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
 **transferID** | **String** | The unique identifier of the Transfer | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **dispatchStockTransferRequest** | [**DispatchStockTransferRequest**](DispatchStockTransferRequest.md) | The DispatchStockTransferRequest parameter | 

### Return type

[**StockTransferResponse**](StockTransferResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNextStockTransferReference**
```swift
    open class func getNextStockTransferReference(xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: NextReferenceResponse?, _ error: Error?) -> Void)
```

Get next stock transfer reference number

Returns the next auto-generated reference number for a new stock transfer in ST-XXXXX format.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get next stock transfer reference number
StockTransfersAPI.getNextStockTransferReference(xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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

# **getStockTransferById**
```swift
    open class func getStockTransferById(transferID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: StockTransferResponse?, _ error: Error?) -> Void)
```

Get stock transfer by ID

Retrieves a single StockTransfer by its TransferID including details and warehouses.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let transferID = "transferID_example" // String | The unique identifier of the Transfer
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get stock transfer by ID
StockTransfersAPI.getStockTransferById(transferID: transferID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **transferID** | **String** | The unique identifier of the Transfer | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**StockTransferResponse**](StockTransferResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStockTransfers**
```swift
    open class func getStockTransfers(xAccountID: Int, xLocationID: Int, sourceWarehouseID: Int64? = nil, destinationWarehouseID: Int64? = nil, statusID: Int? = nil, filters: String? = nil, page: Int? = nil, pageSize: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: PagedResultOfStockTransferResponse?, _ error: Error?) -> Void)
```

List stock transfers

Retrieves a paginated list of StockTransfers with optional filters.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let sourceWarehouseID = 987 // Int64 | The unique identifier of the SourceWarehouse (optional)
let destinationWarehouseID = 987 // Int64 | The unique identifier of the DestinationWarehouse (optional)
let statusID = 987 // Int | The unique identifier of the Status (optional)
let filters = "filters_example" // String | The Filters query parameter (optional)
let page = 987 // Int | Page number for pagination (1-based) (optional)
let pageSize = 987 // Int | Number of items per page (optional)
let sortBy = "sortBy_example" // String | Field name to sort by (optional)
let sortDirection = "sortDirection_example" // String | The SortDirection query parameter (optional)

// List stock transfers
StockTransfersAPI.getStockTransfers(xAccountID: xAccountID, xLocationID: xLocationID, sourceWarehouseID: sourceWarehouseID, destinationWarehouseID: destinationWarehouseID, statusID: statusID, filters: filters, page: page, pageSize: pageSize, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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
 **sourceWarehouseID** | **Int64** | The unique identifier of the SourceWarehouse | [optional] 
 **destinationWarehouseID** | **Int64** | The unique identifier of the DestinationWarehouse | [optional] 
 **statusID** | **Int** | The unique identifier of the Status | [optional] 
 **filters** | **String** | The Filters query parameter | [optional] 
 **page** | **Int** | Page number for pagination (1-based) | [optional] 
 **pageSize** | **Int** | Number of items per page | [optional] 
 **sortBy** | **String** | Field name to sort by | [optional] 
 **sortDirection** | **String** | The SortDirection query parameter | [optional] 

### Return type

[**PagedResultOfStockTransferResponse**](PagedResultOfStockTransferResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStockTransfersByWarehouseId**
```swift
    open class func getStockTransfersByWarehouseId(warehouseID: String, xAccountID: Int, xLocationID: Int, sourceWarehouseID: Int64? = nil, destinationWarehouseID: Int64? = nil, statusID: Int? = nil, filters: String? = nil, page: Int? = nil, pageSize: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: PagedResultOfStockTransferResponse?, _ error: Error?) -> Void)
```

List stock transfers by warehouse

Retrieves a paginated list of stock transfers filtered by warehouse ID (either as source or destination) with optional additional filters.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let warehouseID = "warehouseID_example" // String | The unique identifier of the Warehouse
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let sourceWarehouseID = 987 // Int64 | The unique identifier of the SourceWarehouse (optional)
let destinationWarehouseID = 987 // Int64 | The unique identifier of the DestinationWarehouse (optional)
let statusID = 987 // Int | The unique identifier of the Status (optional)
let filters = "filters_example" // String | JSON string containing array of filter rules to apply. Example: [{\"Field\":\"MakeID\",\"Operator\":\"eq\",\"Values\":[\"1\"]}] (optional)
let page = 987 // Int | Current page number (1-based) (optional)
let pageSize = 987 // Int | Number of items per page (optional)
let sortBy = "sortBy_example" // String | Field name to sort by (optional)
let sortDirection = "sortDirection_example" // String | Sort direction: \"asc\" or \"desc\" (optional)

// List stock transfers by warehouse
StockTransfersAPI.getStockTransfersByWarehouseId(warehouseID: warehouseID, xAccountID: xAccountID, xLocationID: xLocationID, sourceWarehouseID: sourceWarehouseID, destinationWarehouseID: destinationWarehouseID, statusID: statusID, filters: filters, page: page, pageSize: pageSize, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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
 **warehouseID** | **String** | The unique identifier of the Warehouse | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **sourceWarehouseID** | **Int64** | The unique identifier of the SourceWarehouse | [optional] 
 **destinationWarehouseID** | **Int64** | The unique identifier of the DestinationWarehouse | [optional] 
 **statusID** | **Int** | The unique identifier of the Status | [optional] 
 **filters** | **String** | JSON string containing array of filter rules to apply. Example: [{\&quot;Field\&quot;:\&quot;MakeID\&quot;,\&quot;Operator\&quot;:\&quot;eq\&quot;,\&quot;Values\&quot;:[\&quot;1\&quot;]}] | [optional] 
 **page** | **Int** | Current page number (1-based) | [optional] 
 **pageSize** | **Int** | Number of items per page | [optional] 
 **sortBy** | **String** | Field name to sort by | [optional] 
 **sortDirection** | **String** | Sort direction: \&quot;asc\&quot; or \&quot;desc\&quot; | [optional] 

### Return type

[**PagedResultOfStockTransferResponse**](PagedResultOfStockTransferResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **receiveStockTransfer**
```swift
    open class func receiveStockTransfer(transferID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, stockTransferRequest: StockTransferRequest, completion: @escaping (_ data: StockTransferResponse?, _ error: Error?) -> Void)
```

Receive a stock transfer

Receives a StockTransfer, setting received quantities and marking as received.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let transferID = "transferID_example" // String | The unique identifier of the Transfer
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let stockTransferRequest = StockTransferRequest(sourceWarehouseID: 123, destinationWarehouseID: 123, referenceNumber: "referenceNumber_example", priority: TransferPriority(), urgencyReason: "urgencyReason_example", reason: TransferReason(), otherReasonDescription: "otherReasonDescription_example", transportMethod: TransportMethod(), shippingCost: 123, expectedDeliveryDate: Date(), trackingNumber: "trackingNumber_example", notes: "notes_example", details: [StockTransferDetailRequest(itemID: 123, quantity: 123, unitID: 123, condition: ItemCondition(), damagedQuantity: 123, lineNotes: "lineNotes_example")]) // StockTransferRequest | The StockTransferRequest parameter

// Receive a stock transfer
StockTransfersAPI.receiveStockTransfer(transferID: transferID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, stockTransferRequest: stockTransferRequest) { (response, error) in
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
 **transferID** | **String** | The unique identifier of the Transfer | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **stockTransferRequest** | [**StockTransferRequest**](StockTransferRequest.md) | The StockTransferRequest parameter | 

### Return type

[**StockTransferResponse**](StockTransferResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

