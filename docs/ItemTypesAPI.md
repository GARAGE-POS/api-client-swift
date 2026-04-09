# ItemTypesAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createItemType**](ItemTypesAPI.md#createitemtype) | **POST** /api/v1/item-types | Create a new item type
[**deleteItemType**](ItemTypesAPI.md#deleteitemtype) | **DELETE** /api/v1/item-types/{ItemTypeID} | Delete an item type
[**getItemTypeById**](ItemTypesAPI.md#getitemtypebyid) | **GET** /api/v1/item-types/{ItemTypeID} | Get item type by ID
[**getItemTypes**](ItemTypesAPI.md#getitemtypes) | **GET** /api/v1/item-types | Get item types with filtering and pagination
[**updateItemType**](ItemTypesAPI.md#updateitemtype) | **PUT** /api/v1/item-types/{ItemTypeID} | Update an existing item type


# **createItemType**
```swift
    open class func createItemType(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, itemTypeRequest: ItemTypeRequest, completion: @escaping (_ data: ItemTypeResponse?, _ error: Error?) -> Void)
```

Create a new item type

Creates a new item type in the system with bilingual support.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let itemTypeRequest = ItemTypeRequest(name: "name_example", nameAr: "nameAr_example", statusID: StatusType()) // ItemTypeRequest | The ItemTypeRequest parameter

// Create a new item type
ItemTypesAPI.createItemType(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, itemTypeRequest: itemTypeRequest) { (response, error) in
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
 **itemTypeRequest** | [**ItemTypeRequest**](ItemTypeRequest.md) | The ItemTypeRequest parameter | 

### Return type

[**ItemTypeResponse**](ItemTypeResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteItemType**
```swift
    open class func deleteItemType(itemTypeID: Int64, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete an item type

Deletes an item type from the system with comprehensive relationship validation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let itemTypeID = 987 // Int64 | The unique identifier of the item type
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete an item type
ItemTypesAPI.deleteItemType(itemTypeID: itemTypeID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **itemTypeID** | **Int64** | The unique identifier of the item type | 
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

# **getItemTypeById**
```swift
    open class func getItemTypeById(itemTypeID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: ItemTypeResponse?, _ error: Error?) -> Void)
```

Get item type by ID

Retrieves a specific item type by its unique identifier.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let itemTypeID = "itemTypeID_example" // String | The unique identifier of the item type
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get item type by ID
ItemTypesAPI.getItemTypeById(itemTypeID: itemTypeID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **itemTypeID** | **String** | The unique identifier of the item type | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**ItemTypeResponse**](ItemTypeResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getItemTypes**
```swift
    open class func getItemTypes(xAccountID: Int, xLocationID: Int, filters: String? = nil, page: Int? = nil, pageSize: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: PagedResultOfItemTypeResponse?, _ error: Error?) -> Void)
```

Get item types with filtering and pagination

Retrieves a paginated list of item types with advanced filtering and sorting capabilities.

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

// Get item types with filtering and pagination
ItemTypesAPI.getItemTypes(xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, page: page, pageSize: pageSize, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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

[**PagedResultOfItemTypeResponse**](PagedResultOfItemTypeResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateItemType**
```swift
    open class func updateItemType(itemTypeID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, itemTypeRequest: ItemTypeRequest, completion: @escaping (_ data: ItemTypeResponse?, _ error: Error?) -> Void)
```

Update an existing item type

Updates an existing item type with new information.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let itemTypeID = "itemTypeID_example" // String | The unique identifier of the item type to update
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let itemTypeRequest = ItemTypeRequest(name: "name_example", nameAr: "nameAr_example", statusID: StatusType()) // ItemTypeRequest | The ItemTypeRequest parameter

// Update an existing item type
ItemTypesAPI.updateItemType(itemTypeID: itemTypeID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, itemTypeRequest: itemTypeRequest) { (response, error) in
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
 **itemTypeID** | **String** | The unique identifier of the item type to update | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **itemTypeRequest** | [**ItemTypeRequest**](ItemTypeRequest.md) | The ItemTypeRequest parameter | 

### Return type

[**ItemTypeResponse**](ItemTypeResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

