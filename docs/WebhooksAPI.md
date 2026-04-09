# WebhooksAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWebhook**](WebhooksAPI.md#createwebhook) | **POST** /api/v1/webhooks | Create a new webhook subscription
[**deleteWebhook**](WebhooksAPI.md#deletewebhook) | **DELETE** /api/v1/webhooks/{WebhookID} | Delete a webhook subscription
[**getWebhook**](WebhooksAPI.md#getwebhook) | **GET** /api/v1/webhooks/{WebhookID} | Get webhook by ID
[**getWebhooks**](WebhooksAPI.md#getwebhooks) | **GET** /api/v1/webhooks | Get all webhook subscriptions
[**testWebhook**](WebhooksAPI.md#testwebhook) | **POST** /api/v1/webhooks/{WebhookID}/test | Test webhook endpoint
[**updateWebhook**](WebhooksAPI.md#updatewebhook) | **PUT** /api/v1/webhooks/{WebhookID} | Update an existing webhook subscription


# **createWebhook**
```swift
    open class func createWebhook(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, webhookRequest: WebhookRequest, completion: @escaping (_ data: WebhookResponse?, _ error: Error?) -> Void)
```

Create a new webhook subscription

Creates a new webhook subscription for an account to receive notifications when specific events occur.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let webhookRequest = WebhookRequest(accountID: 123, eventType: WebhookEventType(), endpointUrl: "endpointUrl_example", description: "description_example", secret: "secret_example") // WebhookRequest | The WebhookRequest parameter

// Create a new webhook subscription
WebhooksAPI.createWebhook(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, webhookRequest: webhookRequest) { (response, error) in
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
 **webhookRequest** | [**WebhookRequest**](WebhookRequest.md) | The WebhookRequest parameter | 

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWebhook**
```swift
    open class func deleteWebhook(webhookID: Int64, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a webhook subscription

Deletes a webhook subscription by its ID. This action cannot be undone.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let webhookID = 987 // Int64 | The unique identifier of the Webhook
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete a webhook subscription
WebhooksAPI.deleteWebhook(webhookID: webhookID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **webhookID** | **Int64** | The unique identifier of the Webhook | 
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

# **getWebhook**
```swift
    open class func getWebhook(webhookID: Int64, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: WebhookResponse?, _ error: Error?) -> Void)
```

Get webhook by ID

Retrieves a webhook subscription by its ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let webhookID = 987 // Int64 | The unique identifier of the Webhook
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get webhook by ID
WebhooksAPI.getWebhook(webhookID: webhookID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **webhookID** | **Int64** | The unique identifier of the Webhook | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWebhooks**
```swift
    open class func getWebhooks(page: Int, pageSize: Int, xAccountID: Int, xLocationID: Int, accountID: Int64? = nil, eventType: WebhookEventType? = nil, isActive: Bool? = nil, completion: @escaping (_ data: PagedResultOfWebhookResponse?, _ error: Error?) -> Void)
```

Get all webhook subscriptions

Retrieves a paginated list of webhook subscriptions with optional filtering by account, event type, and active status.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let page = 987 // Int | Page number for pagination (1-based)
let pageSize = 987 // Int | Number of items per page
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let accountID = 987 // Int64 | The unique identifier of the Account (optional)
let eventType = WebhookEventType() // WebhookEventType | The EventType query parameter (optional)
let isActive = true // Bool | Filter by active status (optional)

// Get all webhook subscriptions
WebhooksAPI.getWebhooks(page: page, pageSize: pageSize, xAccountID: xAccountID, xLocationID: xLocationID, accountID: accountID, eventType: eventType, isActive: isActive) { (response, error) in
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
 **page** | **Int** | Page number for pagination (1-based) | 
 **pageSize** | **Int** | Number of items per page | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **accountID** | **Int64** | The unique identifier of the Account | [optional] 
 **eventType** | **WebhookEventType** | The EventType query parameter | [optional] 
 **isActive** | **Bool** | Filter by active status | [optional] 

### Return type

[**PagedResultOfWebhookResponse**](PagedResultOfWebhookResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testWebhook**
```swift
    open class func testWebhook(webhookID: Int64, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: TestWebhookResponse?, _ error: Error?) -> Void)
```

Test webhook endpoint

Sends a sample webhook payload to the specified webhook endpoint for testing purposes. This allows developers to verify their webhook integration is working correctly.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let webhookID = 987 // Int64 | The unique identifier of the Webhook
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Test webhook endpoint
WebhooksAPI.testWebhook(webhookID: webhookID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **webhookID** | **Int64** | The unique identifier of the Webhook | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**TestWebhookResponse**](TestWebhookResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWebhook**
```swift
    open class func updateWebhook(webhookID: Int64, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, updateWebhookRequest: UpdateWebhookRequest, completion: @escaping (_ data: WebhookResponse?, _ error: Error?) -> Void)
```

Update an existing webhook subscription

Updates an existing webhook subscription. You can modify the event type, endpoint URL, description, secret, and active status.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let webhookID = 987 // Int64 | The unique identifier of the Webhook
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let updateWebhookRequest = UpdateWebhookRequest(eventType: WebhookEventType(), endpointUrl: "endpointUrl_example", description: "description_example", secret: "secret_example", isActive: true) // UpdateWebhookRequest | The UpdateWebhookRequest parameter

// Update an existing webhook subscription
WebhooksAPI.updateWebhook(webhookID: webhookID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, updateWebhookRequest: updateWebhookRequest) { (response, error) in
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
 **webhookID** | **Int64** | The unique identifier of the Webhook | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **updateWebhookRequest** | [**UpdateWebhookRequest**](UpdateWebhookRequest.md) | The UpdateWebhookRequest parameter | 

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

