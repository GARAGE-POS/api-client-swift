# PackagesAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPackage**](PackagesAPI.md#createpackage) | **POST** /api/v1/packages | Create a new package with location mappings and package details
[**deletePackage**](PackagesAPI.md#deletepackage) | **DELETE** /api/v1/packages/{PackageID} | Delete a package
[**getPackageById**](PackagesAPI.md#getpackagebyid) | **GET** /api/v1/packages/{PackageID} | Get a package by ID with account context
[**getPackages**](PackagesAPI.md#getpackages) | **GET** /api/v1/packages | Get all packages
[**updatePackage**](PackagesAPI.md#updatepackage) | **PUT** /api/v1/packages/{PackageID} | Update an existing package


# **createPackage**
```swift
    open class func createPackage(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, packageRequest: PackageRequest, completion: @escaping (_ data: PackageResponse?, _ error: Error?) -> Void)
```

Create a new package with location mappings and package details

Creates a new package using the Package entity with associated LocationPackage and PackageDetails records. PackageID is ignored and auto-generated.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let packageRequest = PackageRequest(categoryID: 123, name: "name_example", nameAr: "nameAr_example", description: "description_example", descriptionAr: "descriptionAr_example", price: 123, cost: 123, SKU: "SKU_example", barcode: "barcode_example", imagePath: "imagePath_example", statusID: StatusType(), locationPackages: [LocationPackageRequest(locationPackageID: 123, locationID: 123, price: 123)], packageDetails: [PackageDetailRequest(packageDetailID: 123, itemID: 123, quantity: 123, discount: 123, cost: 123, discountType: "discountType_example", price: 123)]) // PackageRequest | The PackageRequest parameter

// Create a new package with location mappings and package details
PackagesAPI.createPackage(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, packageRequest: packageRequest) { (response, error) in
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
 **packageRequest** | [**PackageRequest**](PackageRequest.md) | The PackageRequest parameter | 

### Return type

[**PackageResponse**](PackageResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePackage**
```swift
    open class func deletePackage(packageID: Int64, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a package

Deletes a package and all associated location packages and package details.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let packageID = 987 // Int64 | The unique identifier of the package
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete a package
PackagesAPI.deletePackage(packageID: packageID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **packageID** | **Int64** | The unique identifier of the package | 
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

# **getPackageById**
```swift
    open class func getPackageById(packageID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: PackageResponse?, _ error: Error?) -> Void)
```

Get a package by ID with account context

Retrieves a specific package by ID with account-based access control and comprehensive related data.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let packageID = "packageID_example" // String | The unique identifier of the package
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get a package by ID with account context
PackagesAPI.getPackageById(packageID: packageID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **packageID** | **String** | The unique identifier of the package | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**PackageResponse**](PackageResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPackages**
```swift
    open class func getPackages(page: Int, pageSize: Int, sortDirection: String, xAccountID: Int, xLocationID: Int, filters: String? = nil, sortBy: String? = nil, completion: @escaping (_ data: PagedResultOfPackageResponse?, _ error: Error?) -> Void)
```

Get all packages

Returns packages, optionally filtered by account ID and location ID.

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

// Get all packages
PackagesAPI.getPackages(page: page, pageSize: pageSize, sortDirection: sortDirection, xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, sortBy: sortBy) { (response, error) in
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

[**PagedResultOfPackageResponse**](PagedResultOfPackageResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePackage**
```swift
    open class func updatePackage(packageID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, packageRequest: PackageRequest, completion: @escaping (_ data: PackageResponse?, _ error: Error?) -> Void)
```

Update an existing package

Updates an existing package with its location packages and package details.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let packageID = "packageID_example" // String | The unique identifier of the package
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let packageRequest = PackageRequest(categoryID: 123, name: "name_example", nameAr: "nameAr_example", description: "description_example", descriptionAr: "descriptionAr_example", price: 123, cost: 123, SKU: "SKU_example", barcode: "barcode_example", imagePath: "imagePath_example", statusID: StatusType(), locationPackages: [LocationPackageRequest(locationPackageID: 123, locationID: 123, price: 123)], packageDetails: [PackageDetailRequest(packageDetailID: 123, itemID: 123, quantity: 123, discount: 123, cost: 123, discountType: "discountType_example", price: 123)]) // PackageRequest | The PackageRequest parameter

// Update an existing package
PackagesAPI.updatePackage(packageID: packageID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, packageRequest: packageRequest) { (response, error) in
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
 **packageID** | **String** | The unique identifier of the package | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **packageRequest** | [**PackageRequest**](PackageRequest.md) | The PackageRequest parameter | 

### Return type

[**PackageResponse**](PackageResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

