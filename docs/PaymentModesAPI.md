# PaymentModesAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPaymentMode**](PaymentModesAPI.md#createpaymentmode) | **POST** /api/v1/payment-modes | Create a new payment mode
[**deletePaymentMode**](PaymentModesAPI.md#deletepaymentmode) | **DELETE** /api/v1/payment-modes/{PaymentModeID} | Delete a payment mode
[**getPaymentModeById**](PaymentModesAPI.md#getpaymentmodebyid) | **GET** /api/v1/payment-modes/{PaymentModeID} | Get payment mode by ID
[**getPaymentModes**](PaymentModesAPI.md#getpaymentmodes) | **GET** /api/v1/payment-modes | Get all payment modes
[**updatePaymentMode**](PaymentModesAPI.md#updatepaymentmode) | **PUT** /api/v1/payment-modes/{PaymentModeID} | Update an existing payment mode


# **createPaymentMode**
```swift
    open class func createPaymentMode(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, paymentModeRequest: PaymentModeRequest, completion: @escaping (_ data: PaymentModeResponse?, _ error: Error?) -> Void)
```

Create a new payment mode

Creates a new payment mode with the specified name, Arabic name, and image path

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let paymentModeRequest = PaymentModeRequest(name: "name_example", nameAr: "nameAr_example", imagePath: "imagePath_example", createdBy: 123, lastUpdatedBy: 123, isReferenceRequired: true, isIntegrated: true) // PaymentModeRequest | The PaymentModeRequest parameter

// Create a new payment mode
PaymentModesAPI.createPaymentMode(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, paymentModeRequest: paymentModeRequest) { (response, error) in
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
 **paymentModeRequest** | [**PaymentModeRequest**](PaymentModeRequest.md) | The PaymentModeRequest parameter | 

### Return type

[**PaymentModeResponse**](PaymentModeResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePaymentMode**
```swift
    open class func deletePaymentMode(paymentModeID: Int64, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a payment mode

Deletes a payment mode by its ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let paymentModeID = 987 // Int64 | The unique identifier of the paymentmode
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete a payment mode
PaymentModesAPI.deletePaymentMode(paymentModeID: paymentModeID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **paymentModeID** | **Int64** | The unique identifier of the paymentmode | 
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

# **getPaymentModeById**
```swift
    open class func getPaymentModeById(paymentModeID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: PaymentModeResponse?, _ error: Error?) -> Void)
```

Get payment mode by ID

Retrieves a payment mode by its ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let paymentModeID = "paymentModeID_example" // String | The unique identifier of the paymentmode
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get payment mode by ID
PaymentModesAPI.getPaymentModeById(paymentModeID: paymentModeID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **paymentModeID** | **String** | The unique identifier of the paymentmode | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**PaymentModeResponse**](PaymentModeResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPaymentModes**
```swift
    open class func getPaymentModes(page: Int, pageSize: Int, sortDirection: String, xAccountID: Int, xLocationID: Int, filters: String? = nil, sortBy: String? = nil, completion: @escaping (_ data: PagedResultOfPaymentModeResponse?, _ error: Error?) -> Void)
```

Get all payment modes

Retrieves all payment modes with pagination and filtering

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

// Get all payment modes
PaymentModesAPI.getPaymentModes(page: page, pageSize: pageSize, sortDirection: sortDirection, xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, sortBy: sortBy) { (response, error) in
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

[**PagedResultOfPaymentModeResponse**](PagedResultOfPaymentModeResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePaymentMode**
```swift
    open class func updatePaymentMode(paymentModeID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, paymentModeRequest: PaymentModeRequest, completion: @escaping (_ data: PaymentModeResponse?, _ error: Error?) -> Void)
```

Update an existing payment mode

Updates an existing payment mode's properties

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let paymentModeID = "paymentModeID_example" // String | The unique identifier of the paymentmode
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let paymentModeRequest = PaymentModeRequest(name: "name_example", nameAr: "nameAr_example", imagePath: "imagePath_example", createdBy: 123, lastUpdatedBy: 123, isReferenceRequired: true, isIntegrated: true) // PaymentModeRequest | The PaymentModeRequest parameter

// Update an existing payment mode
PaymentModesAPI.updatePaymentMode(paymentModeID: paymentModeID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, paymentModeRequest: paymentModeRequest) { (response, error) in
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
 **paymentModeID** | **String** | The unique identifier of the paymentmode | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **paymentModeRequest** | [**PaymentModeRequest**](PaymentModeRequest.md) | The PaymentModeRequest parameter | 

### Return type

[**PaymentModeResponse**](PaymentModeResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

