# LandmarksAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createLandmark**](LandmarksAPI.md#createlandmark) | **POST** /api/v1/landmarks | Create a new landmark
[**deleteLandmark**](LandmarksAPI.md#deletelandmark) | **DELETE** /api/v1/landmarks/{LandmarkID} | Delete a landmark
[**getLandmarkById**](LandmarksAPI.md#getlandmarkbyid) | **GET** /api/v1/landmarks/{LandmarkID} | Get landmark by ID
[**getLandmarks**](LandmarksAPI.md#getlandmarks) | **GET** /api/v1/landmarks | Get landmarks with dynamic filtering, pagination, and sorting
[**updateLandmark**](LandmarksAPI.md#updatelandmark) | **PUT** /api/v1/landmarks/{LandmarkID} | Update an existing landmark


# **createLandmark**
```swift
    open class func createLandmark(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, landmarkRequest: LandmarkRequest, completion: @escaping (_ data: LandmarkResponse?, _ error: Error?) -> Void)
```

Create a new landmark

Creates a new landmark using the Landmark entity directly with built-in validation. LandmarkID is ignored and auto-generated.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let landmarkRequest = LandmarkRequest(name: "name_example", nameAr: "nameAr_example", imagePath: "imagePath_example", statusID: 123) // LandmarkRequest | The LandmarkRequest parameter

// Create a new landmark
LandmarksAPI.createLandmark(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, landmarkRequest: landmarkRequest) { (response, error) in
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
 **landmarkRequest** | [**LandmarkRequest**](LandmarkRequest.md) | The LandmarkRequest parameter | 

### Return type

[**LandmarkResponse**](LandmarkResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteLandmark**
```swift
    open class func deleteLandmark(landmarkID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a landmark

Deletes a landmark by LandmarkID. Responds with 200 OK if successful, 404 if not found.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let landmarkID = "landmarkID_example" // String | The unique identifier of the landmark
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete a landmark
LandmarksAPI.deleteLandmark(landmarkID: landmarkID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **landmarkID** | **String** | The unique identifier of the landmark | 
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

# **getLandmarkById**
```swift
    open class func getLandmarkById(landmarkID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: LandmarkResponse?, _ error: Error?) -> Void)
```

Get landmark by ID

Retrieves a single landmark by its ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let landmarkID = "landmarkID_example" // String | The unique identifier of the landmark
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get landmark by ID
LandmarksAPI.getLandmarkById(landmarkID: landmarkID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **landmarkID** | **String** | The unique identifier of the landmark | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**LandmarkResponse**](LandmarkResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLandmarks**
```swift
    open class func getLandmarks(xAccountID: Int, xLocationID: Int, filters: String? = nil, page: Int? = nil, pageSize: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: PagedResultOfLandmarkResponse?, _ error: Error?) -> Void)
```

Get landmarks with dynamic filtering, pagination, and sorting

 Supports dynamic filtering, pagination, and sorting using the same FilterRule structure as the other endpoints.  For complex filtering, you can pass filters as JSON in query parameters: GET /api/v1/landmarks?filters=[{\"Field\":\"Name\",\"Operator\":\"contains\",\"Values\":[\"Mall\"]}]  Available parameters: - page: Page number (default: 1) - pageSize: Items per page (default: 10, max: 100) - sortBy: Field name to sort by (default: UpdatedAt) - sortDirection: 'asc' or 'desc' (default: desc) - filters: JSON array of FilterRule objects  FilterRule structure: - Field: Property name to filter on (e.g., 'Name', 'NameAr') - Operator: Filter operator - 'eq', 'neq', 'gt', 'lt', 'gte', 'lte', 'contains', 'between' - Values: Array of values for the filter  This endpoint uses the same QueryFilterExtensions.ApplyDynamicFilters and ApplySorting methods as the POST endpoint for complete consistency. 

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

// Get landmarks with dynamic filtering, pagination, and sorting
LandmarksAPI.getLandmarks(xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, page: page, pageSize: pageSize, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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

[**PagedResultOfLandmarkResponse**](PagedResultOfLandmarkResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateLandmark**
```swift
    open class func updateLandmark(landmarkID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, landmarkRequest: LandmarkRequest, completion: @escaping (_ data: LandmarkResponse?, _ error: Error?) -> Void)
```

Update an existing landmark

Updates an existing landmark using the Landmark entity directly with built-in validation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let landmarkID = "landmarkID_example" // String | The unique identifier of the landmark
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let landmarkRequest = LandmarkRequest(name: "name_example", nameAr: "nameAr_example", imagePath: "imagePath_example", statusID: 123) // LandmarkRequest | The LandmarkRequest parameter

// Update an existing landmark
LandmarksAPI.updateLandmark(landmarkID: landmarkID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, landmarkRequest: landmarkRequest) { (response, error) in
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
 **landmarkID** | **String** | The unique identifier of the landmark | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **landmarkRequest** | [**LandmarkRequest**](LandmarkRequest.md) | The LandmarkRequest parameter | 

### Return type

[**LandmarkResponse**](LandmarkResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

