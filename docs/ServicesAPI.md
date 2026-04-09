# ServicesAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createService**](ServicesAPI.md#createservice) | **POST** /api/v1/services | Create a new service
[**deleteService**](ServicesAPI.md#deleteservice) | **DELETE** /api/v1/services/{ServiceID} | Delete a service
[**getServices**](ServicesAPI.md#getservices) | **GET** /api/v1/services | Get services with dynamic filtering, pagination, and sorting
[**readService**](ServicesAPI.md#readservice) | **GET** /api/v1/services/{ServiceID} | Get a specific service by ID
[**updateService**](ServicesAPI.md#updateservice) | **PUT** /api/v1/services/{ServiceID} | Update an existing service


# **createService**
```swift
    open class func createService(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, serviceRequest: ServiceRequest, completion: @escaping (_ data: ServiceResponse?, _ error: Error?) -> Void)
```

Create a new service

Create a new service with the specified details

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let serviceRequest = ServiceRequest(name: "name_example", nameAr: "nameAr_example", description: "description_example", descriptionAr: "descriptionAr_example", imagePath: "imagePath_example", displayOrder: 123, businessService: ["businessService_example"], statusID: 123) // ServiceRequest | The ServiceRequest parameter

// Create a new service
ServicesAPI.createService(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, serviceRequest: serviceRequest) { (response, error) in
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
 **serviceRequest** | [**ServiceRequest**](ServiceRequest.md) | The ServiceRequest parameter | 

### Return type

[**ServiceResponse**](ServiceResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteService**
```swift
    open class func deleteService(serviceID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a service

Delete a service by its ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let serviceID = "serviceID_example" // String | The unique identifier of the service
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete a service
ServicesAPI.deleteService(serviceID: serviceID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **serviceID** | **String** | The unique identifier of the service | 
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

# **getServices**
```swift
    open class func getServices(xAccountID: Int, xLocationID: Int, filters: String? = nil, page: Int? = nil, pageSize: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: PagedResultOfServiceResponse?, _ error: Error?) -> Void)
```

Get services with dynamic filtering, pagination, and sorting

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

// Get services with dynamic filtering, pagination, and sorting
ServicesAPI.getServices(xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, page: page, pageSize: pageSize, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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

[**PagedResultOfServiceResponse**](PagedResultOfServiceResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readService**
```swift
    open class func readService(serviceID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: ServiceResponse?, _ error: Error?) -> Void)
```

Get a specific service by ID

Retrieve a single service using its ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let serviceID = "serviceID_example" // String | The unique identifier of the service
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get a specific service by ID
ServicesAPI.readService(serviceID: serviceID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **serviceID** | **String** | The unique identifier of the service | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**ServiceResponse**](ServiceResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateService**
```swift
    open class func updateService(serviceID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, serviceRequest: ServiceRequest, completion: @escaping (_ data: ServiceResponse?, _ error: Error?) -> Void)
```

Update an existing service

Update a service with the specified details. Only provided fields will be updated.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let serviceID = "serviceID_example" // String | The unique identifier of the service
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let serviceRequest = ServiceRequest(name: "name_example", nameAr: "nameAr_example", description: "description_example", descriptionAr: "descriptionAr_example", imagePath: "imagePath_example", displayOrder: 123, businessService: ["businessService_example"], statusID: 123) // ServiceRequest | The ServiceRequest parameter

// Update an existing service
ServicesAPI.updateService(serviceID: serviceID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, serviceRequest: serviceRequest) { (response, error) in
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
 **serviceID** | **String** | The unique identifier of the service | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **serviceRequest** | [**ServiceRequest**](ServiceRequest.md) | The ServiceRequest parameter | 

### Return type

[**ServiceResponse**](ServiceResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

