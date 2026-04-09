# SubscriptionAddOnsAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSubscriptionAddOn**](SubscriptionAddOnsAPI.md#createsubscriptionaddon) | **POST** /api/v1/subscription-addons | Link an add-on to a subscription
[**deleteSubscriptionAddOn**](SubscriptionAddOnsAPI.md#deletesubscriptionaddon) | **DELETE** /api/v1/subscription-addons/{SubscriptionAddOnID} | Delete a subscription add-on link
[**getSubscriptionAddOnById**](SubscriptionAddOnsAPI.md#getsubscriptionaddonbyid) | **GET** /api/v1/subscription-addons/{SubscriptionAddOnID} | Get subscription add-on by ID
[**getSubscriptionAddOns**](SubscriptionAddOnsAPI.md#getsubscriptionaddons) | **GET** /api/v1/subscription-addons | Get subscription add-ons with filtering
[**updateSubscriptionAddOn**](SubscriptionAddOnsAPI.md#updatesubscriptionaddon) | **PUT** /api/v1/subscription-addons/{SubscriptionAddOnID} | Update a subscription add-on link


# **createSubscriptionAddOn**
```swift
    open class func createSubscriptionAddOn(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, subscriptionAddOnRequest: SubscriptionAddOnRequest, completion: @escaping (_ data: SubscriptionAddOnResponse?, _ error: Error?) -> Void)
```

Link an add-on to a subscription

Creates a link between a subscription and an add-on with validity period.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let subscriptionAddOnRequest = SubscriptionAddOnRequest(subscriptionID: 123, addOnID: 123, startDate: Date(), endDate: Date(), statusID: StatusType()) // SubscriptionAddOnRequest | The SubscriptionAddOnRequest parameter

// Link an add-on to a subscription
SubscriptionAddOnsAPI.createSubscriptionAddOn(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, subscriptionAddOnRequest: subscriptionAddOnRequest) { (response, error) in
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
 **subscriptionAddOnRequest** | [**SubscriptionAddOnRequest**](SubscriptionAddOnRequest.md) | The SubscriptionAddOnRequest parameter | 

### Return type

[**SubscriptionAddOnResponse**](SubscriptionAddOnResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSubscriptionAddOn**
```swift
    open class func deleteSubscriptionAddOn(subscriptionAddOnID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a subscription add-on link

Soft deletes a subscription add-on link by setting its status to Deleted.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let subscriptionAddOnID = "subscriptionAddOnID_example" // String | The unique identifier of the SubscriptionAddOn
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete a subscription add-on link
SubscriptionAddOnsAPI.deleteSubscriptionAddOn(subscriptionAddOnID: subscriptionAddOnID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **subscriptionAddOnID** | **String** | The unique identifier of the SubscriptionAddOn | 
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

# **getSubscriptionAddOnById**
```swift
    open class func getSubscriptionAddOnById(subscriptionAddOnID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: SubscriptionAddOnDetailResponse?, _ error: Error?) -> Void)
```

Get subscription add-on by ID

Retrieves a subscription add-on link with detailed information.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let subscriptionAddOnID = "subscriptionAddOnID_example" // String | The unique identifier of the SubscriptionAddOn
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get subscription add-on by ID
SubscriptionAddOnsAPI.getSubscriptionAddOnById(subscriptionAddOnID: subscriptionAddOnID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **subscriptionAddOnID** | **String** | The unique identifier of the SubscriptionAddOn | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**SubscriptionAddOnDetailResponse**](SubscriptionAddOnDetailResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSubscriptionAddOns**
```swift
    open class func getSubscriptionAddOns(xAccountID: Int, xLocationID: Int, filters: String? = nil, page: Int? = nil, pageSize: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: PagedResultOfSubscriptionAddOnResponse?, _ error: Error?) -> Void)
```

Get subscription add-ons with filtering

Retrieves a paginated list of subscription add-on links with optional filtering.

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

// Get subscription add-ons with filtering
SubscriptionAddOnsAPI.getSubscriptionAddOns(xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, page: page, pageSize: pageSize, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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

[**PagedResultOfSubscriptionAddOnResponse**](PagedResultOfSubscriptionAddOnResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSubscriptionAddOn**
```swift
    open class func updateSubscriptionAddOn(subscriptionAddOnID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, subscriptionAddOnRequest: SubscriptionAddOnRequest, completion: @escaping (_ data: SubscriptionAddOnResponse?, _ error: Error?) -> Void)
```

Update a subscription add-on link

Updates the validity period of a subscription add-on link.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let subscriptionAddOnID = "subscriptionAddOnID_example" // String | The unique identifier of the SubscriptionAddOn
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let subscriptionAddOnRequest = SubscriptionAddOnRequest(subscriptionID: 123, addOnID: 123, startDate: Date(), endDate: Date(), statusID: StatusType()) // SubscriptionAddOnRequest | The SubscriptionAddOnRequest parameter

// Update a subscription add-on link
SubscriptionAddOnsAPI.updateSubscriptionAddOn(subscriptionAddOnID: subscriptionAddOnID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, subscriptionAddOnRequest: subscriptionAddOnRequest) { (response, error) in
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
 **subscriptionAddOnID** | **String** | The unique identifier of the SubscriptionAddOn | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **subscriptionAddOnRequest** | [**SubscriptionAddOnRequest**](SubscriptionAddOnRequest.md) | The SubscriptionAddOnRequest parameter | 

### Return type

[**SubscriptionAddOnResponse**](SubscriptionAddOnResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

