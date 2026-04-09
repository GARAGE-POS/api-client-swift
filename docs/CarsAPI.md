# CarsAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCar**](CarsAPI.md#createcar) | **POST** /api/v1/cars | Create a new car
[**deleteCar**](CarsAPI.md#deletecar) | **DELETE** /api/v1/cars/{CarID} | Delete a car
[**getCarById**](CarsAPI.md#getcarbyid) | **GET** /api/v1/cars/{CarID} | Get a single car by ID
[**getCars**](CarsAPI.md#getcars) | **GET** /api/v1/cars | Get cars with dynamic filtering, pagination, and sorting
[**updateCar**](CarsAPI.md#updatecar) | **PUT** /api/v1/cars/{CarID} | Update an existing car


# **createCar**
```swift
    open class func createCar(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, carRequest: CarRequest, completion: @escaping (_ data: CarResponse?, _ error: Error?) -> Void)
```

Create a new car

Creates a new car with the following requirements: 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let carRequest = CarRequest(description: "description_example", vinNo: "vinNo_example", customerID: 123, makeID: 123, modelID: 123, year: 123, color: "color_example", registrationNo: "registrationNo_example", registrationNoArabic: "registrationNoArabic_example", odometer: 123, fuelType: "fuelType_example", oilChangeIntervalKm: 123, imagePath: "imagePath_example", carType: CarType(), carPlateType: CarPlateType()) // CarRequest | The CarRequest parameter

// Create a new car
CarsAPI.createCar(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, carRequest: carRequest) { (response, error) in
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
 **carRequest** | [**CarRequest**](CarRequest.md) | The CarRequest parameter | 

### Return type

[**CarResponse**](CarResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCar**
```swift
    open class func deleteCar(carID: Int64, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a car

Deletes a car by CarID. Responds with 204 no-content if successful, 404 if not found.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let carID = 987 // Int64 | The unique identifier of the car
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete a car
CarsAPI.deleteCar(carID: carID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **carID** | **Int64** | The unique identifier of the car | 
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

# **getCarById**
```swift
    open class func getCarById(carID: Int64, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: CarResponse?, _ error: Error?) -> Void)
```

Get a single car by ID

Retrieves a single car by its CarID, including related entities (Customer, Make, Model).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let carID = 987 // Int64 | The unique identifier of the car
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get a single car by ID
CarsAPI.getCarById(carID: carID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **carID** | **Int64** | The unique identifier of the car | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**CarResponse**](CarResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCars**
```swift
    open class func getCars(xAccountID: Int, xLocationID: Int, filters: String? = nil, page: Int? = nil, pageSize: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: PagedResultOfCarResponse?, _ error: Error?) -> Void)
```

Get cars with dynamic filtering, pagination, and sorting

 Supports dynamic filtering, pagination, and sorting using the same FilterRule structure as the other endpoints.  For complex filtering, you can pass filters as JSON in query parameters: GET /api/v1/cars?filters=[{\"Field\":\"Color\",\"Operator\":\"contains\",\"Values\":[\"Blue\"]}]  Available parameters: - page: Page number (default: 1) - pageSize: Items per page (default: 10, max: 100) - sortBy: Field name to sort by (default: UpdatedAt) - sortDirection: 'asc' or 'desc' (default: desc) - filters: JSON array of FilterRule objects  FilterRule structure: - Field: Property name to filter on (e.g., 'Description', 'VinNo', 'Color', 'RegistrationNo') - Operator: Filter operator - 'eq', 'neq', 'gt', 'lt', 'gte', 'lte', 'contains', 'between' - Values: Array of values for the filter  This endpoint uses the same QueryFilterExtensions.ApplyDynamicFilters and ApplySorting methods as the POST endpoint for complete consistency. 

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

// Get cars with dynamic filtering, pagination, and sorting
CarsAPI.getCars(xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, page: page, pageSize: pageSize, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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

[**PagedResultOfCarResponse**](PagedResultOfCarResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCar**
```swift
    open class func updateCar(carID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, carRequest: CarRequest, completion: @escaping (_ data: CarResponse?, _ error: Error?) -> Void)
```

Update an existing car

Updates an existing car with the following validation: 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let carID = "carID_example" // String | The unique identifier of the car
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let carRequest = CarRequest(description: "description_example", vinNo: "vinNo_example", customerID: 123, makeID: 123, modelID: 123, year: 123, color: "color_example", registrationNo: "registrationNo_example", registrationNoArabic: "registrationNoArabic_example", odometer: 123, fuelType: "fuelType_example", oilChangeIntervalKm: 123, imagePath: "imagePath_example", carType: CarType(), carPlateType: CarPlateType()) // CarRequest | The CarRequest parameter

// Update an existing car
CarsAPI.updateCar(carID: carID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, carRequest: carRequest) { (response, error) in
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
 **carID** | **String** | The unique identifier of the car | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **carRequest** | [**CarRequest**](CarRequest.md) | The CarRequest parameter | 

### Return type

[**CarResponse**](CarResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

