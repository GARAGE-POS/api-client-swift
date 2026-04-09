# StockRequestsAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**approveStockRequest**](StockRequestsAPI.md#approvestockrequest) | **PUT** /api/v1/stock-requests/{TransferID}/approve | Approve a stock transfer request
[**cancelStockRequest**](StockRequestsAPI.md#cancelstockrequest) | **PUT** /api/v1/stock-requests/{TransferID}/cancel | Cancel a stock request
[**createStockRequest**](StockRequestsAPI.md#createstockrequest) | **POST** /api/v1/stock-requests | Create a stock request
[**getNextStockRequestReference**](StockRequestsAPI.md#getnextstockrequestreference) | **GET** /api/v1/stock-requests/next-reference | Get next stock request reference number
[**rejectStockRequest**](StockRequestsAPI.md#rejectstockrequest) | **PUT** /api/v1/stock-requests/{TransferID}/reject | Reject a stock request


# **approveStockRequest**
```swift
    open class func approveStockRequest(transferID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, stockTransferRequest: StockTransferRequest, completion: @escaping (_ data: StockTransferResponse?, _ error: Error?) -> Void)
```

Approve a stock transfer request

Approves a StockTransfer request, setting transferred quantities and updating transfer notes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let transferID = "transferID_example" // String | The unique identifier of the Transfer
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let stockTransferRequest = StockTransferRequest(sourceWarehouseID: 123, destinationWarehouseID: 123, referenceNumber: "referenceNumber_example", priority: TransferPriority(), urgencyReason: "urgencyReason_example", reason: TransferReason(), otherReasonDescription: "otherReasonDescription_example", transportMethod: TransportMethod(), shippingCost: 123, expectedDeliveryDate: Date(), trackingNumber: "trackingNumber_example", notes: "notes_example", details: [StockTransferDetailRequest(itemID: 123, quantity: 123, unitID: 123, condition: ItemCondition(), damagedQuantity: 123, lineNotes: "lineNotes_example")]) // StockTransferRequest | The StockTransferRequest parameter

// Approve a stock transfer request
StockRequestsAPI.approveStockRequest(transferID: transferID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, stockTransferRequest: stockTransferRequest) { (response, error) in
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

# **cancelStockRequest**
```swift
    open class func cancelStockRequest(transferID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Cancel a stock request

Cancels a pending stock request, setting the status to Cancelled. Only requests in Requested status can be cancelled. No stock impact occurs as stock was never reserved.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let transferID = "transferID_example" // String | The unique identifier of the Transfer
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Cancel a stock request
StockRequestsAPI.cancelStockRequest(transferID: transferID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createStockRequest**
```swift
    open class func createStockRequest(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, stockRequestRequest: StockRequestRequest, completion: @escaping (_ data: StockTransferResponse?, _ error: Error?) -> Void)
```

Create a stock request

Creates a StockTransfer document between warehouses with Requested status. This requires approval before transfer.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let stockRequestRequest = StockRequestRequest(sourceWarehouseID: 123, destinationWarehouseID: 123, referenceNumber: "referenceNumber_example", priority: TransferPriority(), urgencyReason: "urgencyReason_example", reason: TransferReason(), otherReasonDescription: "otherReasonDescription_example", transportMethod: TransportMethod(), shippingCost: 123, expectedDeliveryDate: Date(), trackingNumber: "trackingNumber_example", requestNotes: "requestNotes_example", details: [StockTransferDetailRequest(itemID: 123, quantity: 123, unitID: 123, condition: ItemCondition(), damagedQuantity: 123, lineNotes: "lineNotes_example")]) // StockRequestRequest | The StockRequestRequest parameter

// Create a stock request
StockRequestsAPI.createStockRequest(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, stockRequestRequest: stockRequestRequest) { (response, error) in
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
 **stockRequestRequest** | [**StockRequestRequest**](StockRequestRequest.md) | The StockRequestRequest parameter | 

### Return type

[**StockTransferResponse**](StockTransferResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNextStockRequestReference**
```swift
    open class func getNextStockRequestReference(xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: NextReferenceResponse?, _ error: Error?) -> Void)
```

Get next stock request reference number

Returns the next auto-generated reference number for a new stock request in SR-XXXXX format.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get next stock request reference number
StockRequestsAPI.getNextStockRequestReference(xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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

# **rejectStockRequest**
```swift
    open class func rejectStockRequest(transferID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, rejectStockRequestRequest: RejectStockRequestRequest, completion: @escaping (_ data: StockTransferResponse?, _ error: Error?) -> Void)
```

Reject a stock request

Rejects a pending stock request, setting the status to Rejected and recording the rejection reason. Only requests in Requested status can be rejected.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let transferID = "transferID_example" // String | The unique identifier of the Transfer
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let rejectStockRequestRequest = RejectStockRequestRequest(reason: "reason_example") // RejectStockRequestRequest | The RejectStockRequestRequest parameter

// Reject a stock request
StockRequestsAPI.rejectStockRequest(transferID: transferID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, rejectStockRequestRequest: rejectStockRequestRequest) { (response, error) in
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
 **rejectStockRequestRequest** | [**RejectStockRequestRequest**](RejectStockRequestRequest.md) | The RejectStockRequestRequest parameter | 

### Return type

[**StockTransferResponse**](StockTransferResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

