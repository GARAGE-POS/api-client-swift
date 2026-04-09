# LocationsAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createLocation**](LocationsAPI.md#createlocation) | **POST** /api/v1/locations | Create a new business location
[**deleteLocation**](LocationsAPI.md#deletelocation) | **DELETE** /api/v1/locations/{LocationID} | Delete a business location
[**getLocationById**](LocationsAPI.md#getlocationbyid) | **GET** /api/v1/locations/{LocationID} | Get a business location by ID
[**getLocationSettingById**](LocationsAPI.md#getlocationsettingbyid) | **GET** /api/v1/locations/{LocationID}/settings | Get all location settings for a specific location
[**getLocations**](LocationsAPI.md#getlocations) | **GET** /api/v1/locations | Get business locations with advanced filtering and pagination
[**updateLocation**](LocationsAPI.md#updatelocation) | **PUT** /api/v1/locations/{LocationID} | Update an existing business location


# **createLocation**
```swift
    open class func createLocation(xKarageRequestId: String, xAccountID: Int, locationRequest: LocationRequest, xLocationID: Int? = nil, completion: @escaping (_ data: LocationResponse?, _ error: Error?) -> Void)
```

Create a new business location

Creates a new business location within an account with comprehensive address and contact information.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let locationRequest = LocationRequest(countryID: 123, cityID: 123, landmarkID: 123, name: "name_example", nameAr: "nameAr_example", description: "description_example", descriptionAr: "descriptionAr_example", representativeName: "representativeName_example", representativeContactNo: "representativeContactNo_example", contactNo: "contactNo_example", email: "email_example", shortAddress: "shortAddress_example", buildingNumber: "buildingNumber_example", streetName: "streetName_example", secondaryNumber: "secondaryNumber_example", district: "district_example", postalCode: "postalCode_example", address1: "address1_example", address1Ar: "address1Ar_example", address2: "address2_example", address2Ar: "address2Ar_example", companyLogo: "companyLogo_example", workingHours: "workingHours_example", gMapLink: "gMapLink_example", longitude: 123, latitude: 123, isFeatured: true, isHQ: true, isActiveMyKarage: true, amenities: [123], services: [123], locationImages: ["locationImages_example"], warehouse: CreateWarehouseRequest(code: "code_example", name: "name_example", nameAr: "nameAr_example", address: "address_example", contact: "contact_example")) // LocationRequest | The LocationRequest parameter
let xLocationID = 987 // Int | The location ID to operate under (Optional) (optional)

// Create a new business location
LocationsAPI.createLocation(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, locationRequest: locationRequest, xLocationID: xLocationID) { (response, error) in
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
 **locationRequest** | [**LocationRequest**](LocationRequest.md) | The LocationRequest parameter | 
 **xLocationID** | **Int** | The location ID to operate under (Optional) | [optional] 

### Return type

[**LocationResponse**](LocationResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteLocation**
```swift
    open class func deleteLocation(locationID: Int64, xKarageRequestId: String, xAccountID: Int, xLocationID: Int? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a business location

Permanently deletes a business location from the system with relationship validation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let locationID = 987 // Int64 | The unique identifier of the location
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Optional) (optional)

// Delete a business location
LocationsAPI.deleteLocation(locationID: locationID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **locationID** | **Int64** | The unique identifier of the location | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Optional) | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLocationById**
```swift
    open class func getLocationById(locationID: String, xAccountID: Int, xLocationID: Int? = nil, completion: @escaping (_ data: LocationResponse?, _ error: Error?) -> Void)
```

Get a business location by ID

Retrieves a specific business location by its unique identifier with complete details.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let locationID = "locationID_example" // String | The unique identifier of the location
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Optional) (optional)

// Get a business location by ID
LocationsAPI.getLocationById(locationID: locationID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **locationID** | **String** | The unique identifier of the location | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Optional) | [optional] 

### Return type

[**LocationResponse**](LocationResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLocationSettingById**
```swift
    open class func getLocationSettingById(locationID: String, page: Int, pageSize: Int, xAccountID: Int, xLocationID: Int? = nil, completion: @escaping (_ data: TypedLocationSettingsResponse?, _ error: Error?) -> Void)
```

Get all location settings for a specific location

Retrieves all location settings (kashier, discount, lite, hardware, receipt) for a specific location by its ID as a structured object.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let locationID = "locationID_example" // String | The unique identifier of the location
let page = 987 // Int | Page number for pagination (1-based)
let pageSize = 987 // Int | Number of items per page
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Optional) (optional)

// Get all location settings for a specific location
LocationsAPI.getLocationSettingById(locationID: locationID, page: page, pageSize: pageSize, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **locationID** | **String** | The unique identifier of the location | 
 **page** | **Int** | Page number for pagination (1-based) | 
 **pageSize** | **Int** | Number of items per page | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Optional) | [optional] 

### Return type

[**TypedLocationSettingsResponse**](TypedLocationSettingsResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLocations**
```swift
    open class func getLocations(xAccountID: Int, filters: String? = nil, page: Int? = nil, pageSize: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: PagedResultOfLocationResponse?, _ error: Error?) -> Void)
```

Get business locations with advanced filtering and pagination

Retrieves business locations with comprehensive filtering, pagination, and sorting capabilities.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xAccountID = 987 // Int | The account ID to operate under (Required)
let filters = "filters_example" // String | The Filters query parameter (optional)
let page = 987 // Int | Page number for pagination (1-based) (optional)
let pageSize = 987 // Int | Number of items per page (optional)
let sortBy = "sortBy_example" // String | Field name to sort by (optional)
let sortDirection = "sortDirection_example" // String | The SortDirection query parameter (optional)

// Get business locations with advanced filtering and pagination
LocationsAPI.getLocations(xAccountID: xAccountID, filters: filters, page: page, pageSize: pageSize, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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
 **filters** | **String** | The Filters query parameter | [optional] 
 **page** | **Int** | Page number for pagination (1-based) | [optional] 
 **pageSize** | **Int** | Number of items per page | [optional] 
 **sortBy** | **String** | Field name to sort by | [optional] 
 **sortDirection** | **String** | The SortDirection query parameter | [optional] 

### Return type

[**PagedResultOfLocationResponse**](PagedResultOfLocationResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateLocation**
```swift
    open class func updateLocation(locationID: String, xKarageRequestId: String, xAccountID: Int, locationRequest: LocationRequest, xLocationID: Int? = nil, completion: @escaping (_ data: LocationResponse?, _ error: Error?) -> Void)
```

Update an existing business location

Updates an existing business location with comprehensive information including address, contact details, and operational settings.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let locationID = "locationID_example" // String | The unique identifier of the location
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let locationRequest = LocationRequest(countryID: 123, cityID: 123, landmarkID: 123, name: "name_example", nameAr: "nameAr_example", description: "description_example", descriptionAr: "descriptionAr_example", representativeName: "representativeName_example", representativeContactNo: "representativeContactNo_example", contactNo: "contactNo_example", email: "email_example", shortAddress: "shortAddress_example", buildingNumber: "buildingNumber_example", streetName: "streetName_example", secondaryNumber: "secondaryNumber_example", district: "district_example", postalCode: "postalCode_example", address1: "address1_example", address1Ar: "address1Ar_example", address2: "address2_example", address2Ar: "address2Ar_example", companyLogo: "companyLogo_example", workingHours: "workingHours_example", gMapLink: "gMapLink_example", longitude: 123, latitude: 123, isFeatured: true, isHQ: true, isActiveMyKarage: true, amenities: [123], services: [123], locationImages: ["locationImages_example"], warehouse: CreateWarehouseRequest(code: "code_example", name: "name_example", nameAr: "nameAr_example", address: "address_example", contact: "contact_example")) // LocationRequest | The LocationRequest parameter
let xLocationID = 987 // Int | The location ID to operate under (Optional) (optional)

// Update an existing business location
LocationsAPI.updateLocation(locationID: locationID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, locationRequest: locationRequest, xLocationID: xLocationID) { (response, error) in
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
 **locationID** | **String** | The unique identifier of the location | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **locationRequest** | [**LocationRequest**](LocationRequest.md) | The LocationRequest parameter | 
 **xLocationID** | **Int** | The location ID to operate under (Optional) | [optional] 

### Return type

[**LocationResponse**](LocationResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

