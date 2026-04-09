# AccountPaymentModesAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAccountPaymentMode**](AccountPaymentModesAPI.md#createaccountpaymentmode) | **POST** /api/v1/account-payment-modes | Add payment mode to account
[**deleteAccountPaymentMode**](AccountPaymentModesAPI.md#deleteaccountpaymentmode) | **DELETE** /api/v1/account-payment-modes/{AccountPaymentModeID} | Delete account payment mode
[**getAccountPaymentModeById**](AccountPaymentModesAPI.md#getaccountpaymentmodebyid) | **GET** /api/v1/account-payment-modes/{AccountPaymentModeID} | Get account payment mode by ID
[**getAccountPaymentModes**](AccountPaymentModesAPI.md#getaccountpaymentmodes) | **GET** /api/v1/account-payment-modes | Get all account payment modes with filtering
[**updateAccountPaymentMode**](AccountPaymentModesAPI.md#updateaccountpaymentmode) | **PUT** /api/v1/account-payment-modes/{AccountPaymentModeID} | Update account payment mode


# **createAccountPaymentMode**
```swift
    open class func createAccountPaymentMode(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, accountPaymentModeRequest: AccountPaymentModeRequest, completion: @escaping (_ data: AccountPaymentModeResponse?, _ error: Error?) -> Void)
```

Add payment mode to account

Associates a payment mode with an account. The account is identified from the authentication context.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let accountPaymentModeRequest = AccountPaymentModeRequest(paymentModeID: 123, statusID: 123) // AccountPaymentModeRequest | The AccountPaymentModeRequest parameter

// Add payment mode to account
AccountPaymentModesAPI.createAccountPaymentMode(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, accountPaymentModeRequest: accountPaymentModeRequest) { (response, error) in
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
 **accountPaymentModeRequest** | [**AccountPaymentModeRequest**](AccountPaymentModeRequest.md) | The AccountPaymentModeRequest parameter | 

### Return type

[**AccountPaymentModeResponse**](AccountPaymentModeResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAccountPaymentMode**
```swift
    open class func deleteAccountPaymentMode(accountPaymentModeID: Int64, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete account payment mode

Removes the association between an account and a payment mode. This does not delete the payment mode itself, only the link between the account and the payment mode.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let accountPaymentModeID = 987 // Int64 | The unique identifier of the account payment mode association to delete
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete account payment mode
AccountPaymentModesAPI.deleteAccountPaymentMode(accountPaymentModeID: accountPaymentModeID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **accountPaymentModeID** | **Int64** | The unique identifier of the account payment mode association to delete | 
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

# **getAccountPaymentModeById**
```swift
    open class func getAccountPaymentModeById(accountPaymentModeID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: AccountPaymentModeResponse?, _ error: Error?) -> Void)
```

Get account payment mode by ID

Retrieves detailed information about a specific account payment mode association, including the related payment mode details.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let accountPaymentModeID = "accountPaymentModeID_example" // String | The unique identifier of the account payment mode association
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get account payment mode by ID
AccountPaymentModesAPI.getAccountPaymentModeById(accountPaymentModeID: accountPaymentModeID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **accountPaymentModeID** | **String** | The unique identifier of the account payment mode association | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**AccountPaymentModeResponse**](AccountPaymentModeResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountPaymentModes**
```swift
    open class func getAccountPaymentModes(xAccountID: Int, xLocationID: Int, filters: String? = nil, page: Int? = nil, pageSize: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: PagedResultOfAccountPaymentModeResponse?, _ error: Error?) -> Void)
```

Get all account payment modes with filtering

Retrieves a paginated list of account payment mode associations with advanced filtering and sorting capabilities.  **Query Parameters:** - **page**: Page number (default: 1) - **pageSize**: Items per page (default: 10, max: 100) - **sortBy**: Field name to sort by (default: AccountPaymentModeID) - **sortDirection**: Sort direction - 'asc' or 'desc' (default: asc) - **filters**: JSON array of FilterRule objects for complex filtering  **Supported Filter Fields:** - AccountPaymentModeID, AccountID, PaymentModeID - CreatedAt, UpdatedAt  **Filter Operators:** - eq (equals), ne (not equals) - gt (greater than), gte (greater than or equal) - lt (less than), lte (less than or equal) - contains, startswith, endswith - in (value in list) - between (requires two values for dates/numbers)

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

// Get all account payment modes with filtering
AccountPaymentModesAPI.getAccountPaymentModes(xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, page: page, pageSize: pageSize, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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

[**PagedResultOfAccountPaymentModeResponse**](PagedResultOfAccountPaymentModeResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAccountPaymentMode**
```swift
    open class func updateAccountPaymentMode(accountPaymentModeID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, accountPaymentModeRequest: AccountPaymentModeRequest, completion: @escaping (_ data: AccountPaymentModeResponse?, _ error: Error?) -> Void)
```

Update account payment mode

Updates the payment mode associated with an account payment mode record. Only the PaymentModeID can be changed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let accountPaymentModeID = "accountPaymentModeID_example" // String | The unique identifier of the account payment mode association to update
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let accountPaymentModeRequest = AccountPaymentModeRequest(paymentModeID: 123, statusID: 123) // AccountPaymentModeRequest | The AccountPaymentModeRequest parameter

// Update account payment mode
AccountPaymentModesAPI.updateAccountPaymentMode(accountPaymentModeID: accountPaymentModeID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, accountPaymentModeRequest: accountPaymentModeRequest) { (response, error) in
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
 **accountPaymentModeID** | **String** | The unique identifier of the account payment mode association to update | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **accountPaymentModeRequest** | [**AccountPaymentModeRequest**](AccountPaymentModeRequest.md) | The AccountPaymentModeRequest parameter | 

### Return type

[**AccountPaymentModeResponse**](AccountPaymentModeResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

