# TaxesAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTax**](TaxesAPI.md#createtax) | **POST** /api/v1/taxes | Create a new tax
[**deleteTax**](TaxesAPI.md#deletetax) | **DELETE** /api/v1/taxes/{TaxID} | Delete tax
[**getTaxById**](TaxesAPI.md#gettaxbyid) | **GET** /api/v1/taxes/{TaxID} | Get tax by ID
[**getTaxes**](TaxesAPI.md#gettaxes) | **GET** /api/v1/taxes | Get taxes
[**updateTax**](TaxesAPI.md#updatetax) | **PUT** /api/v1/taxes/{TaxID} | Update tax


# **createTax**
```swift
    open class func createTax(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, taxRequest: TaxRequest, completion: @escaping (_ data: TaxResponse?, _ error: Error?) -> Void)
```

Create a new tax

Creates a new tax configuration for the account. Tax name must be unique within the account. Supports ZATCA tax category codes (S/Z/E/O).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let taxRequest = TaxRequest(taxName: "taxName_example", taxNameAr: "taxNameAr_example", taxRate: 123, isDefault: true) // TaxRequest | The TaxRequest parameter

// Create a new tax
TaxesAPI.createTax(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, taxRequest: taxRequest) { (response, error) in
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
 **taxRequest** | [**TaxRequest**](TaxRequest.md) | The TaxRequest parameter | 

### Return type

[**TaxResponse**](TaxResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTax**
```swift
    open class func deleteTax(taxID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete tax

Soft deletes a tax configuration. Tax must belong to the authenticated account. Cannot delete a tax that is currently used by items.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let taxID = "taxID_example" // String | The unique identifier of the Tax
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete tax
TaxesAPI.deleteTax(taxID: taxID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **taxID** | **String** | The unique identifier of the Tax | 
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

# **getTaxById**
```swift
    open class func getTaxById(taxID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: TaxResponse?, _ error: Error?) -> Void)
```

Get tax by ID

Retrieves a single tax configuration by its ID. Tax must belong to the authenticated account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let taxID = "taxID_example" // String | The unique identifier of the Tax
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get tax by ID
TaxesAPI.getTaxById(taxID: taxID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **taxID** | **String** | The unique identifier of the Tax | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**TaxResponse**](TaxResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTaxes**
```swift
    open class func getTaxes(xAccountID: Int, xLocationID: Int, filters: String? = nil, page: Int? = nil, pageSize: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: PagedResultOfTaxResponse?, _ error: Error?) -> Void)
```

Get taxes

Retrieves a paginated list of taxes for the authenticated account. Supports filtering, sorting, and pagination.

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

// Get taxes
TaxesAPI.getTaxes(xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, page: page, pageSize: pageSize, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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

[**PagedResultOfTaxResponse**](PagedResultOfTaxResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTax**
```swift
    open class func updateTax(taxID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, taxRequest: TaxRequest, completion: @escaping (_ data: TaxResponse?, _ error: Error?) -> Void)
```

Update tax

Updates an existing tax configuration. Tax must belong to the authenticated account. Tax name must remain unique within the account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let taxID = "taxID_example" // String | The unique identifier of the Tax
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let taxRequest = TaxRequest(taxName: "taxName_example", taxNameAr: "taxNameAr_example", taxRate: 123, isDefault: true) // TaxRequest | The TaxRequest parameter

// Update tax
TaxesAPI.updateTax(taxID: taxID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, taxRequest: taxRequest) { (response, error) in
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
 **taxID** | **String** | The unique identifier of the Tax | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **taxRequest** | [**TaxRequest**](TaxRequest.md) | The TaxRequest parameter | 

### Return type

[**TaxResponse**](TaxResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

