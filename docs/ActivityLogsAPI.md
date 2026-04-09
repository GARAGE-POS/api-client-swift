# ActivityLogsAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getActivityLogs**](ActivityLogsAPI.md#getactivitylogs) | **GET** /api/v1/activitylogs | Get activity logs for a specific entity


# **getActivityLogs**
```swift
    open class func getActivityLogs(page: Int, pageSize: Int, sortDirection: String, xAccountID: Int, xLocationID: Int, entityType: String? = nil, objectID: Int64? = nil, action: String? = nil, userID: Int64? = nil, dateFrom: Date? = nil, dateTo: Date? = nil, filters: String? = nil, sortBy: String? = nil, completion: @escaping (_ data: PagedResultOfActivityLogResponse?, _ error: Error?) -> Void)
```

Get activity logs for a specific entity

 Retrieves a paginated list of activity log entries for a specific entity. Activity logs track changes made to entities including creation, updates, and deletions.  **Features:** - Filter by entity type and ID (required) - Optional filters: action type, user, date range - Pagination support (max 100 items per page) - Sorted by creation date (most recent first) - PII data is automatically redacted in old/new values  **Note:** Activity logs are written synchronously as part of the SaveChanges call. Log entries are available immediately after the operation completes.  **Common Use Cases:** - Audit trail for compliance - Debugging entity changes - User activity tracking - Change history display in UI         

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let page = 987 // Int | Page number for pagination (starts from 1) (default to 1)
let pageSize = 987 // Int | Number of items per page (1-100) (default to 10)
let sortDirection = "sortDirection_example" // String | Sort direction: \"asc\" or \"desc\" (default to "asc")
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let entityType = "entityType_example" // String | The type of entity (e.g., \"Karage.Domain.Entity.Order\") (optional) (default to "")
let objectID = 987 // Int64 | The ID of the entity (optional)
let action = "action_example" // String | Optional filter by action type (Created, Updated, Deleted, etc.) (optional)
let userID = 987 // Int64 | Optional filter by user ID who performed the action (optional)
let dateFrom = Date() // Date | Optional filter by date from (inclusive) (optional)
let dateTo = Date() // Date | Optional filter by date to (inclusive) (optional)
let filters = "filters_example" // String | JSON array of filter rules. Example: [{\"Field\":\"Name\",\"Operator\":\"contains\",\"Values\":[\"SearchTerm\"]}] Available operators: eq, neq, gt, lt, gte, lte, contains, between (optional) (default to "[]")
let sortBy = "sortBy_example" // String | Field to sort by (optional)

// Get activity logs for a specific entity
ActivityLogsAPI.getActivityLogs(page: page, pageSize: pageSize, sortDirection: sortDirection, xAccountID: xAccountID, xLocationID: xLocationID, entityType: entityType, objectID: objectID, action: action, userID: userID, dateFrom: dateFrom, dateTo: dateTo, filters: filters, sortBy: sortBy) { (response, error) in
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
 **entityType** | **String** | The type of entity (e.g., \&quot;Karage.Domain.Entity.Order\&quot;) | [optional] [default to &quot;&quot;]
 **objectID** | **Int64** | The ID of the entity | [optional] 
 **action** | **String** | Optional filter by action type (Created, Updated, Deleted, etc.) | [optional] 
 **userID** | **Int64** | Optional filter by user ID who performed the action | [optional] 
 **dateFrom** | **Date** | Optional filter by date from (inclusive) | [optional] 
 **dateTo** | **Date** | Optional filter by date to (inclusive) | [optional] 
 **filters** | **String** | JSON array of filter rules. Example: [{\&quot;Field\&quot;:\&quot;Name\&quot;,\&quot;Operator\&quot;:\&quot;contains\&quot;,\&quot;Values\&quot;:[\&quot;SearchTerm\&quot;]}] Available operators: eq, neq, gt, lt, gte, lte, contains, between | [optional] [default to &quot;[]&quot;]
 **sortBy** | **String** | Field to sort by | [optional] 

### Return type

[**PagedResultOfActivityLogResponse**](PagedResultOfActivityLogResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

