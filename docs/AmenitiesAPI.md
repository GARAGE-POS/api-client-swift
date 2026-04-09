# AmenitiesAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAmenities**](AmenitiesAPI.md#createamenities) | **POST** /api/v1/amenities | Create a new amenities
[**deleteAmenities**](AmenitiesAPI.md#deleteamenities) | **DELETE** /api/v1/amenities/{AmenitiesID} | Delete an amenities
[**getAmenities**](AmenitiesAPI.md#getamenities) | **GET** /api/v1/amenities | Get amenities with dynamic filtering, pagination, and sorting
[**getAmenitiesById**](AmenitiesAPI.md#getamenitiesbyid) | **GET** /api/v1/amenities/{AmenitiesID} | Get amenity by ID
[**updateAmenities**](AmenitiesAPI.md#updateamenities) | **PUT** /api/v1/amenities/{AmenitiesID} | Update an existing amenities


# **createAmenities**
```swift
    open class func createAmenities(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, amenitiesRequest: AmenitiesRequest, completion: @escaping (_ data: AmenitiesResponse?, _ error: Error?) -> Void)
```

Create a new amenities

Creates a new amenities using the Amenities entity directly with built-in validation. AmenitiesID is ignored and auto-generated.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let amenitiesRequest = AmenitiesRequest(name: "name_example", nameAr: "nameAr_example", imagePath: "imagePath_example", statusID: 123) // AmenitiesRequest | The AmenitiesRequest parameter

// Create a new amenities
AmenitiesAPI.createAmenities(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, amenitiesRequest: amenitiesRequest) { (response, error) in
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
 **amenitiesRequest** | [**AmenitiesRequest**](AmenitiesRequest.md) | The AmenitiesRequest parameter | 

### Return type

[**AmenitiesResponse**](AmenitiesResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAmenities**
```swift
    open class func deleteAmenities(amenitiesID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete an amenities

Deletes an amenities by AmenitiesID. Responds with 200 OK if successful, 404 if not found.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let amenitiesID = "amenitiesID_example" // String | The unique identifier of the amenities
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete an amenities
AmenitiesAPI.deleteAmenities(amenitiesID: amenitiesID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **amenitiesID** | **String** | The unique identifier of the amenities | 
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

# **getAmenities**
```swift
    open class func getAmenities(xAccountID: Int, xLocationID: Int, filters: String? = nil, page: Int? = nil, pageSize: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: PagedResultOfAmenitiesResponse?, _ error: Error?) -> Void)
```

Get amenities with dynamic filtering, pagination, and sorting

 Supports dynamic filtering, pagination, and sorting using the same FilterRule structure as the other endpoints.  For complex filtering, you can pass filters as JSON in query parameters: GET /api/v1/amenities?filters=[{\"Field\":\"Name\",\"Operator\":\"contains\",\"Values\":[\"Pool\"]}]  Available parameters: - page: Page number (default: 1) - pageSize: Items per page (default: 10, max: 100) - sortBy: Field name to sort by (default: UpdatedAt) - sortDirection: 'asc' or 'desc' (default: desc) - filters: JSON array of FilterRule objects  FilterRule structure: - Field: Property name to filter on (e.g., 'Name', 'NameAr') - Operator: Filter operator - 'eq', 'neq', 'gt', 'lt', 'gte', 'lte', 'contains', 'between' - Values: Array of values for the filter  This endpoint uses the same QueryFilterExtensions.ApplyDynamicFilters and ApplySorting methods as the POST endpoint for complete consistency. 

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

// Get amenities with dynamic filtering, pagination, and sorting
AmenitiesAPI.getAmenities(xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, page: page, pageSize: pageSize, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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

[**PagedResultOfAmenitiesResponse**](PagedResultOfAmenitiesResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAmenitiesById**
```swift
    open class func getAmenitiesById(amenitiesID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: AmenitiesResponse?, _ error: Error?) -> Void)
```

Get amenity by ID

Retrieves a single amenity by its ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let amenitiesID = "amenitiesID_example" // String | The unique identifier of the amenities
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get amenity by ID
AmenitiesAPI.getAmenitiesById(amenitiesID: amenitiesID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **amenitiesID** | **String** | The unique identifier of the amenities | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**AmenitiesResponse**](AmenitiesResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAmenities**
```swift
    open class func updateAmenities(amenitiesID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, amenitiesRequest: AmenitiesRequest, completion: @escaping (_ data: AmenitiesResponse?, _ error: Error?) -> Void)
```

Update an existing amenities

Updates an existing amenities using the Amenities entity directly with built-in validation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let amenitiesID = "amenitiesID_example" // String | The unique identifier of the amenities
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let amenitiesRequest = AmenitiesRequest(name: "name_example", nameAr: "nameAr_example", imagePath: "imagePath_example", statusID: 123) // AmenitiesRequest | The AmenitiesRequest parameter

// Update an existing amenities
AmenitiesAPI.updateAmenities(amenitiesID: amenitiesID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, amenitiesRequest: amenitiesRequest) { (response, error) in
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
 **amenitiesID** | **String** | The unique identifier of the amenities | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **amenitiesRequest** | [**AmenitiesRequest**](AmenitiesRequest.md) | The AmenitiesRequest parameter | 

### Return type

[**AmenitiesResponse**](AmenitiesResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

