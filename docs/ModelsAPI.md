# ModelsAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createModel**](ModelsAPI.md#createmodel) | **POST** /api/v1/models | Create a new model
[**deleteModel**](ModelsAPI.md#deletemodel) | **DELETE** /api/v1/models/{ModelID} | Delete a model
[**getModelById**](ModelsAPI.md#getmodelbyid) | **GET** /api/v1/models/{ModelID} | Get a model by ID
[**getModels**](ModelsAPI.md#getmodels) | **GET** /api/v1/models | Get models with dynamic filtering, pagination, and sorting
[**updateModel**](ModelsAPI.md#updatemodel) | **PUT** /api/v1/models/{ModelID} | Update a model


# **createModel**
```swift
    open class func createModel(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, modelRequest: ModelRequest, completion: @escaping (_ data: ModelResponse?, _ error: Error?) -> Void)
```

Create a new model

Creates a new model using the Model entity directly with built-in validation. ModelID is ignored and auto-generated.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let modelRequest = ModelRequest(makeID: 123, name: "name_example", nameAr: "nameAr_example", year: 123, engineNo: "engineNo_example", recommendedLiters: 123, imagePath: "imagePath_example", displayOrder: 123, statusID: StatusType()) // ModelRequest | The ModelRequest parameter

// Create a new model
ModelsAPI.createModel(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, modelRequest: modelRequest) { (response, error) in
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
 **modelRequest** | [**ModelRequest**](ModelRequest.md) | The ModelRequest parameter | 

### Return type

[**ModelResponse**](ModelResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteModel**
```swift
    open class func deleteModel(modelID: Int64, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a model

Deletes an existing model by ID. This will check for related cars.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let modelID = 987 // Int64 | The unique identifier of the model
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete a model
ModelsAPI.deleteModel(modelID: modelID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **modelID** | **Int64** | The unique identifier of the model | 
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

# **getModelById**
```swift
    open class func getModelById(modelID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: ModelResponse?, _ error: Error?) -> Void)
```

Get a model by ID

Retrieves a specific model by its ID, including the related make.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let modelID = "modelID_example" // String | The unique identifier of the model
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get a model by ID
ModelsAPI.getModelById(modelID: modelID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **modelID** | **String** | The unique identifier of the model | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**ModelResponse**](ModelResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getModels**
```swift
    open class func getModels(xAccountID: Int, xLocationID: Int, filters: String? = nil, page: Int? = nil, pageSize: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: PagedResultOfModelResponse?, _ error: Error?) -> Void)
```

Get models with dynamic filtering, pagination, and sorting

Supports dynamic filtering, pagination, and sorting using the same FilterRule structure as the POST endpoint.

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

// Get models with dynamic filtering, pagination, and sorting
ModelsAPI.getModels(xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, page: page, pageSize: pageSize, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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

[**PagedResultOfModelResponse**](PagedResultOfModelResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateModel**
```swift
    open class func updateModel(modelID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, modelRequest: ModelRequest, completion: @escaping (_ data: ModelResponse?, _ error: Error?) -> Void)
```

Update a model

Updates an existing model. Only non-null fields will be updated.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let modelID = "modelID_example" // String | The unique identifier of the model
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let modelRequest = ModelRequest(makeID: 123, name: "name_example", nameAr: "nameAr_example", year: 123, engineNo: "engineNo_example", recommendedLiters: 123, imagePath: "imagePath_example", displayOrder: 123, statusID: StatusType()) // ModelRequest | The ModelRequest parameter

// Update a model
ModelsAPI.updateModel(modelID: modelID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, modelRequest: modelRequest) { (response, error) in
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
 **modelID** | **String** | The unique identifier of the model | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **modelRequest** | [**ModelRequest**](ModelRequest.md) | The ModelRequest parameter | 

### Return type

[**ModelResponse**](ModelResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

