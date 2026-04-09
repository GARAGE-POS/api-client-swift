# PosSessionsAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**closeSession**](PosSessionsAPI.md#closesession) | **PATCH** /api/v1/sessions/{SessionID}/close | Close a POS session
[**createSession**](PosSessionsAPI.md#createsession) | **POST** /api/v1/sessions/open | Create and open a POS session
[**getActivePosSession**](PosSessionsAPI.md#getactivepossession) | **GET** /api/v1/sessions/active | Get active POS session for terminal
[**getPosSessions**](PosSessionsAPI.md#getpossessions) | **GET** /api/v1/sessions | Get all POS sessions for terminal


# **closeSession**
```swift
    open class func closeSession(sessionID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, closePosSessionRequest: ClosePosSessionRequest, completion: @escaping (_ data: PosSessionResponse?, _ error: Error?) -> Void)
```

Close a POS session

Transitions a session from 'Opened' to 'Closing' state. Calculates all session totals from orders, computes theoretical cash balance, and records the actual cash count.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let sessionID = "sessionID_example" // String | The unique identifier of the Session
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let closePosSessionRequest = ClosePosSessionRequest(cashClosingBalanceActual: 123, closingNotes: "closingNotes_example") // ClosePosSessionRequest | The ClosePosSessionRequest parameter

// Close a POS session
PosSessionsAPI.closeSession(sessionID: sessionID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, closePosSessionRequest: closePosSessionRequest) { (response, error) in
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
 **sessionID** | **String** | The unique identifier of the Session | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **closePosSessionRequest** | [**ClosePosSessionRequest**](ClosePosSessionRequest.md) | The ClosePosSessionRequest parameter | 

### Return type

[**PosSessionResponse**](PosSessionResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSession**
```swift
    open class func createSession(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, openPosSessionRequest: OpenPosSessionRequest, completion: @escaping (_ data: PosSessionResponse?, _ error: Error?) -> Void)
```

Create and open a POS session

Creates a new POS session for the specified terminal and immediately opens it. The session is now active and can process orders. Requires terminal ID, opening cash balance, and optional opening notes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let openPosSessionRequest = OpenPosSessionRequest(terminalID: 123, cashOpeningBalance: 123, openingNotes: "openingNotes_example") // OpenPosSessionRequest | The OpenPosSessionRequest parameter

// Create and open a POS session
PosSessionsAPI.createSession(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, openPosSessionRequest: openPosSessionRequest) { (response, error) in
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
 **openPosSessionRequest** | [**OpenPosSessionRequest**](OpenPosSessionRequest.md) | The OpenPosSessionRequest parameter | 

### Return type

[**PosSessionResponse**](PosSessionResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getActivePosSession**
```swift
    open class func getActivePosSession(terminalID: Int64, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: PosSessionResponse?, _ error: Error?) -> Void)
```

Get active POS session for terminal

Retrieves the currently active session (Opening, Opened, or Closing state) for a terminal.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let terminalID = 987 // Int64 | Terminal ID to get the active session for.
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get active POS session for terminal
PosSessionsAPI.getActivePosSession(terminalID: terminalID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **terminalID** | **Int64** | Terminal ID to get the active session for. | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**PosSessionResponse**](PosSessionResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPosSessions**
```swift
    open class func getPosSessions(terminalID: Int64, page: Int, pageSize: Int, sortDirection: String, xAccountID: Int, xLocationID: Int, filters: String? = nil, sortBy: String? = nil, completion: @escaping (_ data: [PosSessionResponse]?, _ error: Error?) -> Void)
```

Get all POS sessions for terminal

Retrieves all sessions (both open and closed) for a specific terminal, ordered by creation date descending.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let terminalID = 987 // Int64 | Terminal ID to get all sessions for.
let page = 987 // Int | Page number for pagination (starts from 1) (default to 1)
let pageSize = 987 // Int | Number of items per page (1-100) (default to 10)
let sortDirection = "sortDirection_example" // String | Sort direction: \"asc\" or \"desc\" (default to "asc")
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let filters = "filters_example" // String | JSON array of filter rules. Example: [{\"Field\":\"Name\",\"Operator\":\"contains\",\"Values\":[\"SearchTerm\"]}] Available operators: eq, neq, gt, lt, gte, lte, contains, between (optional) (default to "[]")
let sortBy = "sortBy_example" // String | Field to sort by (optional)

// Get all POS sessions for terminal
PosSessionsAPI.getPosSessions(terminalID: terminalID, page: page, pageSize: pageSize, sortDirection: sortDirection, xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, sortBy: sortBy) { (response, error) in
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
 **terminalID** | **Int64** | Terminal ID to get all sessions for. | 
 **page** | **Int** | Page number for pagination (starts from 1) | [default to 1]
 **pageSize** | **Int** | Number of items per page (1-100) | [default to 10]
 **sortDirection** | **String** | Sort direction: \&quot;asc\&quot; or \&quot;desc\&quot; | [default to &quot;asc&quot;]
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **filters** | **String** | JSON array of filter rules. Example: [{\&quot;Field\&quot;:\&quot;Name\&quot;,\&quot;Operator\&quot;:\&quot;contains\&quot;,\&quot;Values\&quot;:[\&quot;SearchTerm\&quot;]}] Available operators: eq, neq, gt, lt, gte, lte, contains, between | [optional] [default to &quot;[]&quot;]
 **sortBy** | **String** | Field to sort by | [optional] 

### Return type

[**[PosSessionResponse]**](PosSessionResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

