# SuppliersAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSupplier**](SuppliersAPI.md#createsupplier) | **POST** /api/v1/suppliers | Create supplier
[**deleteSupplier**](SuppliersAPI.md#deletesupplier) | **DELETE** /api/v1/suppliers/{SupplierID} | Delete supplier
[**getSupplierById**](SuppliersAPI.md#getsupplierbyid) | **GET** /api/v1/suppliers/{SupplierID} | Get supplier by ID
[**getSuppliers**](SuppliersAPI.md#getsuppliers) | **GET** /api/v1/suppliers | List suppliers
[**updateSupplier**](SuppliersAPI.md#updatesupplier) | **PUT** /api/v1/suppliers/{SupplierID} | Update supplier


# **createSupplier**
```swift
    open class func createSupplier(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, supplierRequest: SupplierRequest, completion: @escaping (_ data: SupplierResponse?, _ error: Error?) -> Void)
```

Create supplier

Creates a supplier

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let supplierRequest = SupplierRequest(name: "name_example", nameAr: "nameAr_example", contactPerson: "contactPerson_example", contactEmail: "contactEmail_example", contactPhone: "contactPhone_example", cRNo: "cRNo_example", vATNo: "vATNo_example", isVATRegistered: true, paymentTerms: SupplierPaymentTerms(), paymentDays: 123, nationalAddress: "nationalAddress_example", shortAddress: "shortAddress_example", buildingNumber: "buildingNumber_example", streetName: "streetName_example", secondaryNumber: "secondaryNumber_example", district: "district_example", postalCode: "postalCode_example", cityID: 123, countryID: 123, statusID: StatusType()) // SupplierRequest | The SupplierRequest parameter

// Create supplier
SuppliersAPI.createSupplier(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, supplierRequest: supplierRequest) { (response, error) in
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
 **supplierRequest** | [**SupplierRequest**](SupplierRequest.md) | The SupplierRequest parameter | 

### Return type

[**SupplierResponse**](SupplierResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSupplier**
```swift
    open class func deleteSupplier(supplierID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete supplier

Deletes a supplier

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let supplierID = "supplierID_example" // String | The unique identifier of the supplier
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete supplier
SuppliersAPI.deleteSupplier(supplierID: supplierID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **supplierID** | **String** | The unique identifier of the supplier | 
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

# **getSupplierById**
```swift
    open class func getSupplierById(supplierID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: SupplierResponse?, _ error: Error?) -> Void)
```

Get supplier by ID

Retrieves a supplier by their unique ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let supplierID = "supplierID_example" // String | The unique identifier of the supplier
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get supplier by ID
SuppliersAPI.getSupplierById(supplierID: supplierID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **supplierID** | **String** | The unique identifier of the supplier | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**SupplierResponse**](SupplierResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSuppliers**
```swift
    open class func getSuppliers(page: Int, pageSize: Int, sortDirection: String, xAccountID: Int, xLocationID: Int, filters: String? = nil, sortBy: String? = nil, completion: @escaping (_ data: PagedResultOfSupplierResponse?, _ error: Error?) -> Void)
```

List suppliers

Retrieves a paginated list of suppliers with optional filtering and sorting

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

// List suppliers
SuppliersAPI.getSuppliers(page: page, pageSize: pageSize, sortDirection: sortDirection, xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, sortBy: sortBy) { (response, error) in
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

[**PagedResultOfSupplierResponse**](PagedResultOfSupplierResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSupplier**
```swift
    open class func updateSupplier(supplierID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, supplierRequest: SupplierRequest, completion: @escaping (_ data: SupplierResponse?, _ error: Error?) -> Void)
```

Update supplier

Updates an existing supplier

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let supplierID = "supplierID_example" // String | The unique identifier of the supplier
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let supplierRequest = SupplierRequest(name: "name_example", nameAr: "nameAr_example", contactPerson: "contactPerson_example", contactEmail: "contactEmail_example", contactPhone: "contactPhone_example", cRNo: "cRNo_example", vATNo: "vATNo_example", isVATRegistered: true, paymentTerms: SupplierPaymentTerms(), paymentDays: 123, nationalAddress: "nationalAddress_example", shortAddress: "shortAddress_example", buildingNumber: "buildingNumber_example", streetName: "streetName_example", secondaryNumber: "secondaryNumber_example", district: "district_example", postalCode: "postalCode_example", cityID: 123, countryID: 123, statusID: StatusType()) // SupplierRequest | The SupplierRequest parameter

// Update supplier
SuppliersAPI.updateSupplier(supplierID: supplierID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, supplierRequest: supplierRequest) { (response, error) in
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
 **supplierID** | **String** | The unique identifier of the supplier | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **supplierRequest** | [**SupplierRequest**](SupplierRequest.md) | The SupplierRequest parameter | 

### Return type

[**SupplierResponse**](SupplierResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

