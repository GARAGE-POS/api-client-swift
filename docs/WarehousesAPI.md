# WarehousesAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWarehouse**](WarehousesAPI.md#createwarehouse) | **POST** /api/v1/warehouses | Create warehouse
[**deleteWarehouse**](WarehousesAPI.md#deletewarehouse) | **DELETE** /api/v1/warehouses/{WarehouseID} | Delete warehouse
[**getWarehouseById**](WarehousesAPI.md#getwarehousebyid) | **GET** /api/v1/warehouses/{WarehouseID} | Get warehouse by ID
[**getWarehouses**](WarehousesAPI.md#getwarehouses) | **GET** /api/v1/warehouses | Get warehouses
[**updateWarehouse**](WarehousesAPI.md#updatewarehouse) | **PUT** /api/v1/warehouses/{WarehouseID} | Update warehouse


# **createWarehouse**
```swift
    open class func createWarehouse(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, warehouseRequest: WarehouseRequest, completion: @escaping (_ data: WarehouseResponse?, _ error: Error?) -> Void)
```

Create warehouse

Creates a new warehouse

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let warehouseRequest = WarehouseRequest(code: "code_example", locationID: 123, name: "name_example", isMainStore: true, nameAr: "nameAr_example", address: "address_example", contact: "contact_example") // WarehouseRequest | The WarehouseRequest parameter

// Create warehouse
WarehousesAPI.createWarehouse(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, warehouseRequest: warehouseRequest) { (response, error) in
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
 **warehouseRequest** | [**WarehouseRequest**](WarehouseRequest.md) | The WarehouseRequest parameter | 

### Return type

[**WarehouseResponse**](WarehouseResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWarehouse**
```swift
    open class func deleteWarehouse(warehouseID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete warehouse

Deletes a warehouse

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let warehouseID = "warehouseID_example" // String | The unique identifier of the warehouse
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete warehouse
WarehousesAPI.deleteWarehouse(warehouseID: warehouseID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **warehouseID** | **String** | The unique identifier of the warehouse | 
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

# **getWarehouseById**
```swift
    open class func getWarehouseById(warehouseID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: WarehouseResponse?, _ error: Error?) -> Void)
```

Get warehouse by ID

Retrieves a warehouse by its ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let warehouseID = "warehouseID_example" // String | The unique identifier of the warehouse
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get warehouse by ID
WarehousesAPI.getWarehouseById(warehouseID: warehouseID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **warehouseID** | **String** | The unique identifier of the warehouse | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**WarehouseResponse**](WarehouseResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWarehouses**
```swift
    open class func getWarehouses(page: Int, pageSize: Int, sortDirection: String, xAccountID: Int, xLocationID: Int, filters: String? = nil, sortBy: String? = nil, completion: @escaping (_ data: PagedResultOfWarehouseResponse?, _ error: Error?) -> Void)
```

Get warehouses

Retrieves a paginated list of warehouses with optional filtering and sorting

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

// Get warehouses
WarehousesAPI.getWarehouses(page: page, pageSize: pageSize, sortDirection: sortDirection, xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, sortBy: sortBy) { (response, error) in
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

[**PagedResultOfWarehouseResponse**](PagedResultOfWarehouseResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWarehouse**
```swift
    open class func updateWarehouse(warehouseID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, warehouseRequest: WarehouseRequest, completion: @escaping (_ data: WarehouseResponse?, _ error: Error?) -> Void)
```

Update warehouse

Updates an existing warehouse

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let warehouseID = "warehouseID_example" // String | The unique identifier of the warehouse
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let warehouseRequest = WarehouseRequest(code: "code_example", locationID: 123, name: "name_example", isMainStore: true, nameAr: "nameAr_example", address: "address_example", contact: "contact_example") // WarehouseRequest | The WarehouseRequest parameter

// Update warehouse
WarehousesAPI.updateWarehouse(warehouseID: warehouseID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, warehouseRequest: warehouseRequest) { (response, error) in
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
 **warehouseID** | **String** | The unique identifier of the warehouse | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **warehouseRequest** | [**WarehouseRequest**](WarehouseRequest.md) | The WarehouseRequest parameter | 

### Return type

[**WarehouseResponse**](WarehouseResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

