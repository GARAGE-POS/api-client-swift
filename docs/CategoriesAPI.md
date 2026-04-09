# CategoriesAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCategory**](CategoriesAPI.md#createcategory) | **POST** /api/v1/categories | Create a new service/item category
[**deleteCategory**](CategoriesAPI.md#deletecategory) | **DELETE** /api/v1/categories/{CategoryID} | Delete a category
[**getCategories**](CategoriesAPI.md#getcategories) | **GET** /api/v1/categories | Get categories with filtering and pagination
[**getCategoryById**](CategoriesAPI.md#getcategorybyid) | **GET** /api/v1/categories/{CategoryID} | Get a category by its ID
[**updateCategory**](CategoriesAPI.md#updatecategory) | **PUT** /api/v1/categories/{CategoryID} | Update an existing category


# **createCategory**
```swift
    open class func createCategory(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, categoryRequest: CategoryRequest, completion: @escaping (_ data: CategoryResponse?, _ error: Error?) -> Void)
```

Create a new service/item category

Creates a new category for organizing services and items within an account with bilingual support.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let categoryRequest = CategoryRequest(name: "name_example", nameAr: "nameAr_example", description: "description_example", imagePath: "imagePath_example", displayOrder: 123, statusID: 123, createdAt: Date(), lastUpdatedDate: Date()) // CategoryRequest | The CategoryRequest parameter

// Create a new service/item category
CategoriesAPI.createCategory(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, categoryRequest: categoryRequest) { (response, error) in
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
 **categoryRequest** | [**CategoryRequest**](CategoryRequest.md) | The CategoryRequest parameter | 

### Return type

[**CategoryResponse**](CategoryResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCategory**
```swift
    open class func deleteCategory(categoryID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a category

Deletes a category based on the provided ID. Category cannot be deleted if it has related items.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let categoryID = "categoryID_example" // String | The unique identifier of the category
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete a category
CategoriesAPI.deleteCategory(categoryID: categoryID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **categoryID** | **String** | The unique identifier of the category | 
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

# **getCategories**
```swift
    open class func getCategories(xAccountID: Int, xLocationID: Int, filters: String? = nil, page: Int? = nil, pageSize: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: PagedResultOfCategoryResponse?, _ error: Error?) -> Void)
```

Get categories with filtering and pagination

Retrieves categories with flexible filtering, pagination, and sorting capabilities for organizing services and items.

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

// Get categories with filtering and pagination
CategoriesAPI.getCategories(xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, page: page, pageSize: pageSize, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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

[**PagedResultOfCategoryResponse**](PagedResultOfCategoryResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCategoryById**
```swift
    open class func getCategoryById(categoryID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: CategoryResponse?, _ error: Error?) -> Void)
```

Get a category by its ID

Returns a specific category with its items based on the provided CategoryId.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let categoryID = "categoryID_example" // String | The unique identifier of the category
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get a category by its ID
CategoriesAPI.getCategoryById(categoryID: categoryID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **categoryID** | **String** | The unique identifier of the category | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**CategoryResponse**](CategoryResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCategory**
```swift
    open class func updateCategory(categoryID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, categoryRequest: CategoryRequest, completion: @escaping (_ data: CategoryResponse?, _ error: Error?) -> Void)
```

Update an existing category

Updates a category based on the provided CategoryID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let categoryID = "categoryID_example" // String | The unique identifier of the category
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let categoryRequest = CategoryRequest(name: "name_example", nameAr: "nameAr_example", description: "description_example", imagePath: "imagePath_example", displayOrder: 123, statusID: 123, createdAt: Date(), lastUpdatedDate: Date()) // CategoryRequest | The CategoryRequest parameter

// Update an existing category
CategoriesAPI.updateCategory(categoryID: categoryID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, categoryRequest: categoryRequest) { (response, error) in
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
 **categoryID** | **String** | The unique identifier of the category | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **categoryRequest** | [**CategoryRequest**](CategoryRequest.md) | The CategoryRequest parameter | 

### Return type

[**CategoryResponse**](CategoryResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

