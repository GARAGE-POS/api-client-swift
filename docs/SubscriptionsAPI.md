# SubscriptionsAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSubscription**](SubscriptionsAPI.md#createsubscription) | **POST** /api/v1/subscriptions | Create a new subscription
[**deleteSubscription**](SubscriptionsAPI.md#deletesubscription) | **DELETE** /api/v1/subscriptions/{SubscriptionID} | Delete a subscription
[**getSubscriptionById**](SubscriptionsAPI.md#getsubscriptionbyid) | **GET** /api/v1/subscriptions/{SubscriptionID} | Get subscription by ID
[**getSubscriptions**](SubscriptionsAPI.md#getsubscriptions) | **GET** /api/v1/subscriptions | Get subscriptions with filtering and pagination
[**updateSubscription**](SubscriptionsAPI.md#updatesubscription) | **PUT** /api/v1/subscriptions/{SubscriptionID} | Update an existing subscription


# **createSubscription**
```swift
    open class func createSubscription(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, subscriptionRequest: SubscriptionRequest, completion: @escaping (_ data: SubscriptionResponse?, _ error: Error?) -> Void)
```

Create a new subscription

Creates a new subscription for an account with specified type, dates, and terminal count. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let subscriptionRequest = SubscriptionRequest(CRMID: "CRMID_example", subscriptionName: "subscriptionName_example", accountID: 123, subscriptionType: SubscriptionType(), startDate: Date(), expiryDate: Date(), numberOfTerminals: 123, paymentTerm: 123, statusID: StatusType()) // SubscriptionRequest | The SubscriptionRequest parameter

// Create a new subscription
SubscriptionsAPI.createSubscription(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, subscriptionRequest: subscriptionRequest) { (response, error) in
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
 **subscriptionRequest** | [**SubscriptionRequest**](SubscriptionRequest.md) | The SubscriptionRequest parameter | 

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSubscription**
```swift
    open class func deleteSubscription(subscriptionID: Int64, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a subscription

Soft deletes a subscription by setting its status to Deleted.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let subscriptionID = 987 // Int64 | The unique identifier of the subscription
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete a subscription
SubscriptionsAPI.deleteSubscription(subscriptionID: subscriptionID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **subscriptionID** | **Int64** | The unique identifier of the subscription | 
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

# **getSubscriptionById**
```swift
    open class func getSubscriptionById(subscriptionID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: SubscriptionDetailResponse?, _ error: Error?) -> Void)
```

Get subscription by ID

Retrieves a subscription with detailed information including terminals and add-ons.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let subscriptionID = "subscriptionID_example" // String | The unique identifier of the subscription
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get subscription by ID
SubscriptionsAPI.getSubscriptionById(subscriptionID: subscriptionID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **subscriptionID** | **String** | The unique identifier of the subscription | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**SubscriptionDetailResponse**](SubscriptionDetailResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSubscriptions**
```swift
    open class func getSubscriptions(xAccountID: Int, xLocationID: Int, filters: String? = nil, page: Int? = nil, pageSize: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: PagedResultOfSubscriptionResponse?, _ error: Error?) -> Void)
```

Get subscriptions with filtering and pagination

Retrieves a paginated list of subscriptions with optional filtering by account and subscription type.

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

// Get subscriptions with filtering and pagination
SubscriptionsAPI.getSubscriptions(xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, page: page, pageSize: pageSize, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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

[**PagedResultOfSubscriptionResponse**](PagedResultOfSubscriptionResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSubscription**
```swift
    open class func updateSubscription(subscriptionID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, subscriptionRequest: SubscriptionRequest, completion: @escaping (_ data: SubscriptionResponse?, _ error: Error?) -> Void)
```

Update an existing subscription

Updates subscription details including dates, terminal count, and payment terms. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let subscriptionID = "subscriptionID_example" // String | The unique identifier of the subscription
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let subscriptionRequest = SubscriptionRequest(CRMID: "CRMID_example", subscriptionName: "subscriptionName_example", accountID: 123, subscriptionType: SubscriptionType(), startDate: Date(), expiryDate: Date(), numberOfTerminals: 123, paymentTerm: 123, statusID: StatusType()) // SubscriptionRequest | The SubscriptionRequest parameter

// Update an existing subscription
SubscriptionsAPI.updateSubscription(subscriptionID: subscriptionID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, subscriptionRequest: subscriptionRequest) { (response, error) in
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
 **subscriptionID** | **String** | The unique identifier of the subscription | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **subscriptionRequest** | [**SubscriptionRequest**](SubscriptionRequest.md) | The SubscriptionRequest parameter | 

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

