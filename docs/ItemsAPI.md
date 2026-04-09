# ItemsAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createItem**](ItemsAPI.md#createitem) | **POST** /api/v1/items | Create a new item with location mappings
[**deleteItem**](ItemsAPI.md#deleteitem) | **DELETE** /api/v1/items/{ItemID} | Delete an item
[**getItemById**](ItemsAPI.md#getitembyid) | **GET** /api/v1/items/{ItemID} | Get detailed information about a specific item
[**getItems**](ItemsAPI.md#getitems) | **GET** /api/v1/items | Get all items
[**updateItem**](ItemsAPI.md#updateitem) | **PUT** /api/v1/items/{ItemID} | Update an existing item


# **createItem**
```swift
    open class func createItem(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, itemRequest: ItemRequest, completion: @escaping (_ data: ItemResponse?, _ error: Error?) -> Void)
```

Create a new item with location mappings

 Creates a new item using the Item entity with associated LocationItem records. ItemID is ignored and auto-generated.  **Headers:** - X-Account-ID: Required account identifier - X-Location-ID: Required location identifier  **Authentication:** - Required: Yes - Headers: X-Account-ID and X-Location-ID must be present 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let itemRequest = ItemRequest(categoryID: 123, name: "name_example", nameAr: "nameAr_example", description: "description_example", imagePath: "imagePath_example", barcode: "barcode_example", SKU: "SKU_example", displayOrder: 123, cost: 123, price: 123, itemTypeID: 123, propertiesJSON: "propertiesJSON_example", isInventoryItem: true, isOpenItem: true, minOpenPrice: 123, isInclusiveVAT: true, priceInclusiveVAT: 123, reorderLevel: 123, taxID: 123, statusID: StatusType(), locationItems: [LocationItemRequest(locationItemID: 123, locationID: 123, price: 123, warehouseStocks: [WarehouseStockRequest(warehouseID: 123, openingStock: 123, currentStock: 123, minimumStock: 123, isAllowNegativeInventory: true)])]) // ItemRequest | The ItemRequest parameter

// Create a new item with location mappings
ItemsAPI.createItem(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, itemRequest: itemRequest) { (response, error) in
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
 **itemRequest** | [**ItemRequest**](ItemRequest.md) | The ItemRequest parameter | 

### Return type

[**ItemResponse**](ItemResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteItem**
```swift
    open class func deleteItem(itemID: Int64, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete an item

 Soft deletes an item by setting its status to Deleted.  **Headers:** - X-Account-ID: Required account identifier - X-Location-ID: Required location identifier  **Authentication:** - Required: Yes - Headers: X-Account-ID and X-Location-ID must be present 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let itemID = 987 // Int64 | The unique identifier of the item
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete an item
ItemsAPI.deleteItem(itemID: itemID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **itemID** | **Int64** | The unique identifier of the item | 
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

# **getItemById**
```swift
    open class func getItemById(itemID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: ItemResponse?, _ error: Error?) -> Void)
```

Get detailed information about a specific item

 Returns an item by its ID with item type and location items.  **Headers:** - X-Account-ID: Required account identifier - X-Location-ID: Required location identifier  **Authentication:** - Required: Yes - Headers: X-Account-ID and X-Location-ID must be present 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let itemID = "itemID_example" // String | The unique identifier of the item
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get detailed information about a specific item
ItemsAPI.getItemById(itemID: itemID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **itemID** | **String** | The unique identifier of the item | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**ItemResponse**](ItemResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getItems**
```swift
    open class func getItems(xAccountID: Int, xLocationID: Int, filters: String? = nil, page: Int? = nil, pageSize: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: PagedResultOfItemResponse?, _ error: Error?) -> Void)
```

Get all items

 Returns items, optionally filtered by account ID.  **Headers:** - X-Account-ID: Required account identifier - X-Location-ID: Required location identifier  **Authentication:** - Required: Yes - Headers: X-Account-ID and X-Location-ID must be present 

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

// Get all items
ItemsAPI.getItems(xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, page: page, pageSize: pageSize, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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

[**PagedResultOfItemResponse**](PagedResultOfItemResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateItem**
```swift
    open class func updateItem(itemID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, itemRequest: ItemRequest, completion: @escaping (_ data: ItemResponse?, _ error: Error?) -> Void)
```

Update an existing item

 Updates an existing item with the provided data. All fields will be updated.  **Headers:** - X-Account-ID: Required account identifier - X-Location-ID: Required location identifier  **Authentication:** - Required: Yes - Headers: X-Account-ID and X-Location-ID must be present 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let itemID = "itemID_example" // String | The unique identifier of the item
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let itemRequest = ItemRequest(categoryID: 123, name: "name_example", nameAr: "nameAr_example", description: "description_example", imagePath: "imagePath_example", barcode: "barcode_example", SKU: "SKU_example", displayOrder: 123, cost: 123, price: 123, itemTypeID: 123, propertiesJSON: "propertiesJSON_example", isInventoryItem: true, isOpenItem: true, minOpenPrice: 123, isInclusiveVAT: true, priceInclusiveVAT: 123, reorderLevel: 123, taxID: 123, statusID: StatusType(), locationItems: [LocationItemRequest(locationItemID: 123, locationID: 123, price: 123, warehouseStocks: [WarehouseStockRequest(warehouseID: 123, openingStock: 123, currentStock: 123, minimumStock: 123, isAllowNegativeInventory: true)])]) // ItemRequest | The ItemRequest parameter

// Update an existing item
ItemsAPI.updateItem(itemID: itemID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, itemRequest: itemRequest) { (response, error) in
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
 **itemID** | **String** | The unique identifier of the item | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **itemRequest** | [**ItemRequest**](ItemRequest.md) | The ItemRequest parameter | 

### Return type

[**ItemResponse**](ItemResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

