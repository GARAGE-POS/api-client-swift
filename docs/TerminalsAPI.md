# TerminalsAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTerminal**](TerminalsAPI.md#createterminal) | **POST** /api/v1/terminals | Create a new terminal
[**deleteTerminal**](TerminalsAPI.md#deleteterminal) | **DELETE** /api/v1/terminals/{TerminalID} | Delete a terminal
[**getTerminalById**](TerminalsAPI.md#getterminalbyid) | **GET** /api/v1/terminals/{TerminalID} | Get terminal by ID
[**getTerminals**](TerminalsAPI.md#getterminals) | **GET** /api/v1/terminals | Get terminals with filtering and pagination
[**updateTerminal**](TerminalsAPI.md#updateterminal) | **PUT** /api/v1/terminals/{TerminalID} | Update an existing terminal


# **createTerminal**
```swift
    open class func createTerminal(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, terminalRequest: TerminalRequest, completion: @escaping (_ data: TerminalResponse?, _ error: Error?) -> Void)
```

Create a new terminal

Creates a new POS terminal/device under a subscription.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let terminalRequest = TerminalRequest(subscriptionID: 123, locationID: 123, terminalName: "terminalName_example", terminalSerialNumber: "terminalSerialNumber_example", devicePlatform: "devicePlatform_example", activationDate: Date(), deactivationDate: Date(), statusID: StatusType()) // TerminalRequest | The TerminalRequest parameter

// Create a new terminal
TerminalsAPI.createTerminal(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, terminalRequest: terminalRequest) { (response, error) in
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
 **terminalRequest** | [**TerminalRequest**](TerminalRequest.md) | The TerminalRequest parameter | 

### Return type

[**TerminalResponse**](TerminalResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTerminal**
```swift
    open class func deleteTerminal(terminalID: Int64, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a terminal

Soft deletes a terminal by setting its status to Deleted.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let terminalID = 987 // Int64 | The unique identifier of the terminal
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete a terminal
TerminalsAPI.deleteTerminal(terminalID: terminalID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **terminalID** | **Int64** | The unique identifier of the terminal | 
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

# **getTerminalById**
```swift
    open class func getTerminalById(terminalID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: TerminalDetailResponse?, _ error: Error?) -> Void)
```

Get terminal by ID

Retrieves a terminal with detailed information including location and account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let terminalID = "terminalID_example" // String | The unique identifier of the terminal
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get terminal by ID
TerminalsAPI.getTerminalById(terminalID: terminalID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **terminalID** | **String** | The unique identifier of the terminal | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**TerminalDetailResponse**](TerminalDetailResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTerminals**
```swift
    open class func getTerminals(page: Int, pageSize: Int, sortDirection: String, xAccountID: Int, subscriptionID: Int64? = nil, locationID: Int64? = nil, devicePlatform: String? = nil, filters: String? = nil, sortBy: String? = nil, completion: @escaping (_ data: PagedResultOfTerminalResponse?, _ error: Error?) -> Void)
```

Get terminals with filtering and pagination

Retrieves a paginated list of terminals with optional filtering.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let page = 987 // Int | Page number for pagination (starts from 1) (default to 1)
let pageSize = 987 // Int | Number of items per page (1-100) (default to 10)
let sortDirection = "sortDirection_example" // String | Sort direction: \"asc\" or \"desc\" (default to "asc")
let xAccountID = 987 // Int | The account ID to operate under (Required)
let subscriptionID = 987 // Int64 | The unique identifier of the Subscription (optional)
let locationID = 987 // Int64 | The unique identifier of the Location (optional)
let devicePlatform = "devicePlatform_example" // String | The DevicePlatform query parameter (optional)
let filters = "filters_example" // String | JSON array of filter rules. Example: [{\"Field\":\"Name\",\"Operator\":\"contains\",\"Values\":[\"SearchTerm\"]}] Available operators: eq, neq, gt, lt, gte, lte, contains, between (optional) (default to "[]")
let sortBy = "sortBy_example" // String | Field to sort by (optional)

// Get terminals with filtering and pagination
TerminalsAPI.getTerminals(page: page, pageSize: pageSize, sortDirection: sortDirection, xAccountID: xAccountID, subscriptionID: subscriptionID, locationID: locationID, devicePlatform: devicePlatform, filters: filters, sortBy: sortBy) { (response, error) in
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
 **subscriptionID** | **Int64** | The unique identifier of the Subscription | [optional] 
 **locationID** | **Int64** | The unique identifier of the Location | [optional] 
 **devicePlatform** | **String** | The DevicePlatform query parameter | [optional] 
 **filters** | **String** | JSON array of filter rules. Example: [{\&quot;Field\&quot;:\&quot;Name\&quot;,\&quot;Operator\&quot;:\&quot;contains\&quot;,\&quot;Values\&quot;:[\&quot;SearchTerm\&quot;]}] Available operators: eq, neq, gt, lt, gte, lte, contains, between | [optional] [default to &quot;[]&quot;]
 **sortBy** | **String** | Field to sort by | [optional] 

### Return type

[**PagedResultOfTerminalResponse**](PagedResultOfTerminalResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTerminal**
```swift
    open class func updateTerminal(terminalID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, terminalRequest: TerminalRequest, completion: @escaping (_ data: TerminalResponse?, _ error: Error?) -> Void)
```

Update an existing terminal

Updates terminal details including location assignment and activation status.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let terminalID = "terminalID_example" // String | The unique identifier of the terminal
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let terminalRequest = TerminalRequest(subscriptionID: 123, locationID: 123, terminalName: "terminalName_example", terminalSerialNumber: "terminalSerialNumber_example", devicePlatform: "devicePlatform_example", activationDate: Date(), deactivationDate: Date(), statusID: StatusType()) // TerminalRequest | The TerminalRequest parameter

// Update an existing terminal
TerminalsAPI.updateTerminal(terminalID: terminalID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, terminalRequest: terminalRequest) { (response, error) in
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
 **terminalID** | **String** | The unique identifier of the terminal | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **terminalRequest** | [**TerminalRequest**](TerminalRequest.md) | The TerminalRequest parameter | 

### Return type

[**TerminalResponse**](TerminalResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

