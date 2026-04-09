# IntegrationAuditAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getIntegrationLogs**](IntegrationAuditAPI.md#getintegrationlogs) | **GET** /api/v1/integration-audit/logs | Get integration audit logs


# **getIntegrationLogs**
```swift
    open class func getIntegrationLogs(page: Int, pageSize: Int, xAccountID: Int, xLocationID: Int, integrationName: String? = nil, status: String? = nil, endpointName: String? = nil, correlationID: String? = nil, startDate: Date? = nil, endDate: Date? = nil, accountID: Int64? = nil, locationID: Int64? = nil, completion: @escaping (_ data: PagedResultOfIntegrationLogResponse?, _ error: Error?) -> Void)
```

Get integration audit logs

Retrieve paginated list of external integration API request/response audit logs with filtering

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let page = 987 // Int | Page number for pagination (1-based)
let pageSize = 987 // Int | Number of items per page
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let integrationName = "integrationName_example" // String | Filter by integration name (Unifonic, Zatca, AzureBlob, Email, Webhook) (optional)
let status = "status_example" // String | Filter by request status (InProgress, Success, Failed, Timeout, CircuitBreakerOpen) (optional)
let endpointName = "endpointName_example" // String | Filter by endpoint name (optional)
let correlationID = "correlationID_example" // String | Filter by correlation ID (optional)
let startDate = Date() // Date | Filter by start date (inclusive) (optional)
let endDate = Date() // Date | Filter by end date (inclusive) (optional)
let accountID = 987 // Int64 | Filter by account ID (admin only) (optional)
let locationID = 987 // Int64 | Filter by location ID (optional)

// Get integration audit logs
IntegrationAuditAPI.getIntegrationLogs(page: page, pageSize: pageSize, xAccountID: xAccountID, xLocationID: xLocationID, integrationName: integrationName, status: status, endpointName: endpointName, correlationID: correlationID, startDate: startDate, endDate: endDate, accountID: accountID, locationID: locationID) { (response, error) in
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
 **integrationName** | **String** | Filter by integration name (Unifonic, Zatca, AzureBlob, Email, Webhook) | [optional] 
 **status** | **String** | Filter by request status (InProgress, Success, Failed, Timeout, CircuitBreakerOpen) | [optional] 
 **endpointName** | **String** | Filter by endpoint name | [optional] 
 **correlationID** | **String** | Filter by correlation ID | [optional] 
 **startDate** | **Date** | Filter by start date (inclusive) | [optional] 
 **endDate** | **Date** | Filter by end date (inclusive) | [optional] 
 **accountID** | **Int64** | Filter by account ID (admin only) | [optional] 
 **locationID** | **Int64** | Filter by location ID | [optional] 

### Return type

[**PagedResultOfIntegrationLogResponse**](PagedResultOfIntegrationLogResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

