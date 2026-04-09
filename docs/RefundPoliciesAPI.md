# RefundPoliciesAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createRefundPolicy**](RefundPoliciesAPI.md#createrefundpolicy) | **POST** /api/v1/refund-policies | Create a new refund policy
[**deleteRefundPolicy**](RefundPoliciesAPI.md#deleterefundpolicy) | **DELETE** /api/v1/refund-policies/{RefundPolicyID} | Delete a refund policy
[**getEffectiveRefundPolicy**](RefundPoliciesAPI.md#geteffectiverefundpolicy) | **GET** /api/v1/refund-policies/effective | Get the effective refund policy
[**getRefundPolicies**](RefundPoliciesAPI.md#getrefundpolicies) | **GET** /api/v1/refund-policies | Get all refund policies
[**getRefundPolicy**](RefundPoliciesAPI.md#getrefundpolicy) | **GET** /api/v1/refund-policies/{RefundPolicyID} | Get a refund policy by ID
[**updateRefundPolicy**](RefundPoliciesAPI.md#updaterefundpolicy) | **PUT** /api/v1/refund-policies/{RefundPolicyID} | Update a refund policy


# **createRefundPolicy**
```swift
    open class func createRefundPolicy(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, createRefundPolicyRequest: CreateRefundPolicyRequest, completion: @escaping (_ data: RefundPolicyResponse?, _ error: Error?) -> Void)
```

Create a new refund policy

Creates a new refund policy for an account. Only one policy can exist per account-location scope.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let createRefundPolicyRequest = CreateRefundPolicyRequest(accountID: 123, locationID: 123, policyType: RefundDiscountAccountingPolicy(), allowFreeItemProportionalRefund: true) // CreateRefundPolicyRequest | The CreateRefundPolicyRequest parameter

// Create a new refund policy
RefundPoliciesAPI.createRefundPolicy(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, createRefundPolicyRequest: createRefundPolicyRequest) { (response, error) in
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
 **createRefundPolicyRequest** | [**CreateRefundPolicyRequest**](CreateRefundPolicyRequest.md) | The CreateRefundPolicyRequest parameter | 

### Return type

[**RefundPolicyResponse**](RefundPolicyResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRefundPolicy**
```swift
    open class func deleteRefundPolicy(refundPolicyID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a refund policy

Deletes a refund policy by its unique identifier.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let refundPolicyID = "refundPolicyID_example" // String | The unique identifier of the RefundPolicy
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete a refund policy
RefundPoliciesAPI.deleteRefundPolicy(refundPolicyID: refundPolicyID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **refundPolicyID** | **String** | The unique identifier of the RefundPolicy | 
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

# **getEffectiveRefundPolicy**
```swift
    open class func getEffectiveRefundPolicy(accountID: Int64, page: Int, pageSize: Int, xAccountID: Int, xLocationID: Int, locationID: Int64? = nil, completion: @escaping (_ data: RefundPolicyResponse?, _ error: Error?) -> Void)
```

Get the effective refund policy

Gets the effective refund policy for a given account and optional location. Returns the location-specific policy if it exists, otherwise returns the account-level policy.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let accountID = 987 // Int64 | The unique identifier of the Account
let page = 987 // Int | Page number for pagination (1-based)
let pageSize = 987 // Int | Number of items per page
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let locationID = 987 // Int64 | The unique identifier of the Location (optional)

// Get the effective refund policy
RefundPoliciesAPI.getEffectiveRefundPolicy(accountID: accountID, page: page, pageSize: pageSize, xAccountID: xAccountID, xLocationID: xLocationID, locationID: locationID) { (response, error) in
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
 **accountID** | **Int64** | The unique identifier of the Account | 
 **page** | **Int** | Page number for pagination (1-based) | 
 **pageSize** | **Int** | Number of items per page | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **locationID** | **Int64** | The unique identifier of the Location | [optional] 

### Return type

[**RefundPolicyResponse**](RefundPolicyResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRefundPolicies**
```swift
    open class func getRefundPolicies(xAccountID: Int, xLocationID: Int, accountID: Int64? = nil, locationID: Int64? = nil, filters: String? = nil, page: Int? = nil, pageSize: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: PagedResultOfRefundPolicyResponse?, _ error: Error?) -> Void)
```

Get all refund policies

Retrieves a paginated list of refund policies, optionally filtered by account or location.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let accountID = 987 // Int64 | The unique identifier of the Account (optional)
let locationID = 987 // Int64 | The unique identifier of the Location (optional)
let filters = "filters_example" // String | JSON string containing array of filter rules to apply. Example: [{\"Field\":\"MakeID\",\"Operator\":\"eq\",\"Values\":[\"1\"]}] (optional)
let page = 987 // Int | Current page number (1-based) (optional)
let pageSize = 987 // Int | Number of items per page (optional)
let sortBy = "sortBy_example" // String | Field name to sort by (optional)
let sortDirection = "sortDirection_example" // String | Sort direction: \"asc\" or \"desc\" (optional)

// Get all refund policies
RefundPoliciesAPI.getRefundPolicies(xAccountID: xAccountID, xLocationID: xLocationID, accountID: accountID, locationID: locationID, filters: filters, page: page, pageSize: pageSize, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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
 **accountID** | **Int64** | The unique identifier of the Account | [optional] 
 **locationID** | **Int64** | The unique identifier of the Location | [optional] 
 **filters** | **String** | JSON string containing array of filter rules to apply. Example: [{\&quot;Field\&quot;:\&quot;MakeID\&quot;,\&quot;Operator\&quot;:\&quot;eq\&quot;,\&quot;Values\&quot;:[\&quot;1\&quot;]}] | [optional] 
 **page** | **Int** | Current page number (1-based) | [optional] 
 **pageSize** | **Int** | Number of items per page | [optional] 
 **sortBy** | **String** | Field name to sort by | [optional] 
 **sortDirection** | **String** | Sort direction: \&quot;asc\&quot; or \&quot;desc\&quot; | [optional] 

### Return type

[**PagedResultOfRefundPolicyResponse**](PagedResultOfRefundPolicyResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRefundPolicy**
```swift
    open class func getRefundPolicy(refundPolicyID: Int64, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: RefundPolicyResponse?, _ error: Error?) -> Void)
```

Get a refund policy by ID

Retrieves a specific refund policy by its unique identifier.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let refundPolicyID = 987 // Int64 | The unique identifier of the RefundPolicy
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get a refund policy by ID
RefundPoliciesAPI.getRefundPolicy(refundPolicyID: refundPolicyID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **refundPolicyID** | **Int64** | The unique identifier of the RefundPolicy | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**RefundPolicyResponse**](RefundPolicyResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRefundPolicy**
```swift
    open class func updateRefundPolicy(refundPolicyID: Int64, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, updateRefundPolicyRequest: UpdateRefundPolicyRequest, completion: @escaping (_ data: RefundPolicyResponse?, _ error: Error?) -> Void)
```

Update a refund policy

Updates an existing refund policy with new settings.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let refundPolicyID = 987 // Int64 | The unique identifier of the RefundPolicy
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let updateRefundPolicyRequest = UpdateRefundPolicyRequest(policyType: RefundDiscountAccountingPolicy(), allowFreeItemProportionalRefund: true) // UpdateRefundPolicyRequest | The UpdateRefundPolicyRequest parameter

// Update a refund policy
RefundPoliciesAPI.updateRefundPolicy(refundPolicyID: refundPolicyID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, updateRefundPolicyRequest: updateRefundPolicyRequest) { (response, error) in
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
 **refundPolicyID** | **Int64** | The unique identifier of the RefundPolicy | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **updateRefundPolicyRequest** | [**UpdateRefundPolicyRequest**](UpdateRefundPolicyRequest.md) | The UpdateRefundPolicyRequest parameter | 

### Return type

[**RefundPolicyResponse**](RefundPolicyResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

