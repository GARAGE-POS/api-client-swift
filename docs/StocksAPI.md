# StocksAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getStockByWarehouseAndItem**](StocksAPI.md#getstockbywarehouseanditem) | **GET** /api/v1/stocks/warehouse/{WarehouseID}/item/{ItemID} | Get stock for a specific item in a warehouse
[**getStockByWarehouseId**](StocksAPI.md#getstockbywarehouseid) | **GET** /api/v1/stocks/by-warehouse/{WarehouseID} | Get all stocks in a warehouse


# **getStockByWarehouseAndItem**
```swift
    open class func getStockByWarehouseAndItem(warehouseID: Int64, itemID: Int64, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: StockResponse?, _ error: Error?) -> Void)
```

Get stock for a specific item in a warehouse

Retrieves the current stock level for a specific item in a specific warehouse

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let warehouseID = 987 // Int64 | The unique identifier of the Warehouse
let itemID = 987 // Int64 | The unique identifier of the Item
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get stock for a specific item in a warehouse
StocksAPI.getStockByWarehouseAndItem(warehouseID: warehouseID, itemID: itemID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **warehouseID** | **Int64** | The unique identifier of the Warehouse | 
 **itemID** | **Int64** | The unique identifier of the Item | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**StockResponse**](StockResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStockByWarehouseId**
```swift
    open class func getStockByWarehouseId(warehouseID: Int64, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: [StockResponse]?, _ error: Error?) -> Void)
```

Get all stocks in a warehouse

Retrieves all current stock levels for all items in a specific warehouse

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let warehouseID = 987 // Int64 | The unique identifier of the Warehouse
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get all stocks in a warehouse
StocksAPI.getStockByWarehouseId(warehouseID: warehouseID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **warehouseID** | **Int64** | The unique identifier of the Warehouse | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**[StockResponse]**](StockResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

