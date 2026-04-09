# ReportsAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generateOrdersReport**](ReportsAPI.md#generateordersreport) | **GET** /api/v1/reports/orders/export | Export order report to CSV
[**generateXReport**](ReportsAPI.md#generatexreport) | **GET** /api/v1/reports/x-report | Generate X Report for an active session
[**generateZReport**](ReportsAPI.md#generatezreport) | **POST** /api/v1/reports/z-report | Generate Z Report (end-of-day summary) for a location
[**getDashboardSummary**](ReportsAPI.md#getdashboardsummary) | **GET** /api/v1/reports/dashboard | Get dashboard summary
[**getOrderReport**](ReportsAPI.md#getorderreport) | **GET** /api/v1/reports/orders | Generate order report with rows
[**getOverviewReport**](ReportsAPI.md#getoverviewreport) | **GET** /api/v1/reports/overview | Generate business overview report for main dashboard
[**getPackageReport**](ReportsAPI.md#getpackagereport) | **GET** /api/v1/reports/packages | Generate package sales report
[**getProductReport**](ReportsAPI.md#getproductreport) | **GET** /api/v1/reports/products | Generate product sales report
[**getSalesReport**](ReportsAPI.md#getsalesreport) | **GET** /api/v1/reports/sales | Generate sales report
[**getStockReport**](ReportsAPI.md#getstockreport) | **GET** /api/v1/reports/stock | Generate stock report


# **generateOrdersReport**
```swift
    open class func generateOrdersReport(pageSize: Int, xAccountID: Int, xLocationID: Int, orderStatuses: [Int]? = nil, paymentStatuses: [Int]? = nil, startDate: Date? = nil, endDate: Date? = nil, locationId: Int64? = nil, page: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Export order report to CSV

Exports order report data to CSV format with columns: Order No, Phone Number, Car Model, Plate No, Date, Total. Returns all rows (no pagination). Supports sorting and filtering. Admin and managers can view all locations. Location-restricted users can only view their assigned location.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let pageSize = 987 // Int | Page size for pagination (default: 50)
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let orderStatuses = [123] // [Int] | Order statuses to include (default: ServiceFinished, Paid) (optional)
let paymentStatuses = [123] // [Int] | Payment statuses to include (default: Paid) (optional)
let startDate = Date() // Date | Start date for the report (inclusive) (optional)
let endDate = Date() // Date | End date for the report (inclusive) (optional)
let locationId = 987 // Int64 | Location ID to filter by (null for all accessible locations) (optional)
let page = 987 // Int | Page number for pagination (1-based). If not specified, returns all rows. (optional)
let sortBy = "sortBy_example" // String | Field to sort by (case-insensitive). Available fields vary by report type. (optional)
let sortDirection = "sortDirection_example" // String | Sort direction: asc or desc (optional)

// Export order report to CSV
ReportsAPI.generateOrdersReport(pageSize: pageSize, xAccountID: xAccountID, xLocationID: xLocationID, orderStatuses: orderStatuses, paymentStatuses: paymentStatuses, startDate: startDate, endDate: endDate, locationId: locationId, page: page, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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
 **pageSize** | **Int** | Page size for pagination (default: 50) | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **orderStatuses** | [**[Int]**](Int.md) | Order statuses to include (default: ServiceFinished, Paid) | [optional] 
 **paymentStatuses** | [**[Int]**](Int.md) | Payment statuses to include (default: Paid) | [optional] 
 **startDate** | **Date** | Start date for the report (inclusive) | [optional] 
 **endDate** | **Date** | End date for the report (inclusive) | [optional] 
 **locationId** | **Int64** | Location ID to filter by (null for all accessible locations) | [optional] 
 **page** | **Int** | Page number for pagination (1-based). If not specified, returns all rows. | [optional] 
 **sortBy** | **String** | Field to sort by (case-insensitive). Available fields vary by report type. | [optional] 
 **sortDirection** | **String** | Sort direction: asc or desc | [optional] 

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateXReport**
```swift
    open class func generateXReport(sessionID: Int64, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: XReportResponse?, _ error: Error?) -> Void)
```

Generate X Report for an active session

Returns real-time sales, payments, and transaction data for an open POS session. Can be run multiple times without modifying data. Requires an active (open) session ID. Admin and managers can view all locations. Location-restricted users can only view their assigned location.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let sessionID = 987 // Int64 | Session ID for which to generate the X Report
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Generate X Report for an active session
ReportsAPI.generateXReport(sessionID: sessionID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **sessionID** | **Int64** | Session ID for which to generate the X Report | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**XReportResponse**](XReportResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateZReport**
```swift
    open class func generateZReport(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, zReportRequest: ZReportRequest, completion: @escaping (_ data: ZReportResponse?, _ error: Error?) -> Void)
```

Generate Z Report (end-of-day summary) for a location

Returns aggregated sales, payments, transactions, and cash reconciliation for closed sessions across all terminals in the location. Can only be generated when no sessions are open for any terminal in the location. Admin and managers can view all locations. Location-restricted users can only view their assigned location.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let zReportRequest = ZReportRequest(date: Date()) // ZReportRequest | The ZReportRequest parameter

// Generate Z Report (end-of-day summary) for a location
ReportsAPI.generateZReport(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, zReportRequest: zReportRequest) { (response, error) in
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
 **zReportRequest** | [**ZReportRequest**](ZReportRequest.md) | The ZReportRequest parameter | 

### Return type

[**ZReportResponse**](ZReportResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDashboardSummary**
```swift
    open class func getDashboardSummary(topCount: Int, xAccountID: Int, xLocationID: Int, locationID: Int64? = nil, startDate: Date? = nil, endDate: Date? = nil, completion: @escaping (_ data: DashboardSummaryResponse?, _ error: Error?) -> Void)
```

Get dashboard summary

Generates a dashboard summary with stock alerts, refund reasons, discount usage, popular sales, and employee targets. Use StartDate and EndDate to filter the period (defaults to today). Use TopCount to limit the number of items returned per section (defaults to 5).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let topCount = 987 // Int | Number of items to return for each section. Defaults to 5.
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let locationID = 987 // Int64 | Optional location filter. If null, returns data for all accessible locations. (optional)
let startDate = Date() // Date | Start date for the summary period. Defaults to today. (optional)
let endDate = Date() // Date | End date for the summary period. Defaults to today. (optional)

// Get dashboard summary
ReportsAPI.getDashboardSummary(topCount: topCount, xAccountID: xAccountID, xLocationID: xLocationID, locationID: locationID, startDate: startDate, endDate: endDate) { (response, error) in
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
 **topCount** | **Int** | Number of items to return for each section. Defaults to 5. | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **locationID** | **Int64** | Optional location filter. If null, returns data for all accessible locations. | [optional] 
 **startDate** | **Date** | Start date for the summary period. Defaults to today. | [optional] 
 **endDate** | **Date** | End date for the summary period. Defaults to today. | [optional] 

### Return type

[**DashboardSummaryResponse**](DashboardSummaryResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderReport**
```swift
    open class func getOrderReport(pageSize: Int, xAccountID: Int, xLocationID: Int, orderStatuses: [Int]? = nil, paymentStatuses: [Int]? = nil, startDate: Date? = nil, endDate: Date? = nil, locationId: Int64? = nil, page: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: ReportResultOfOrderReportDtoAndOrderReportSummary?, _ error: Error?) -> Void)
```

Generate order report with rows

Generates a full report of orders with individual rows, summary, and chart data. Supports pagination for large datasets (use Page and PageSize parameters). For dashboard views without rows, use /reports/orders/summary instead. Admin and managers can view all locations. Location-restricted users can only view their assigned location.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let pageSize = 987 // Int | Number of items per page
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let orderStatuses = [123] // [Int] | The OrderStatuses query parameter (optional)
let paymentStatuses = [123] // [Int] | The PaymentStatuses query parameter (optional)
let startDate = Date() // Date | The StartDate in ISO 8601 format (optional)
let endDate = Date() // Date | The EndDate in ISO 8601 format (optional)
let locationId = 987 // Int64 | The LocationId query parameter (optional)
let page = 987 // Int | Page number for pagination (1-based) (optional)
let sortBy = "sortBy_example" // String | Field name to sort by (optional)
let sortDirection = "sortDirection_example" // String | The SortDirection query parameter (optional)

// Generate order report with rows
ReportsAPI.getOrderReport(pageSize: pageSize, xAccountID: xAccountID, xLocationID: xLocationID, orderStatuses: orderStatuses, paymentStatuses: paymentStatuses, startDate: startDate, endDate: endDate, locationId: locationId, page: page, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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
 **pageSize** | **Int** | Number of items per page | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **orderStatuses** | [**[Int]**](Int.md) | The OrderStatuses query parameter | [optional] 
 **paymentStatuses** | [**[Int]**](Int.md) | The PaymentStatuses query parameter | [optional] 
 **startDate** | **Date** | The StartDate in ISO 8601 format | [optional] 
 **endDate** | **Date** | The EndDate in ISO 8601 format | [optional] 
 **locationId** | **Int64** | The LocationId query parameter | [optional] 
 **page** | **Int** | Page number for pagination (1-based) | [optional] 
 **sortBy** | **String** | Field name to sort by | [optional] 
 **sortDirection** | **String** | The SortDirection query parameter | [optional] 

### Return type

[**ReportResultOfOrderReportDtoAndOrderReportSummary**](ReportResultOfOrderReportDtoAndOrderReportSummary.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOverviewReport**
```swift
    open class func getOverviewReport(pageSize: Int, xAccountID: Int, xLocationID: Int, startDate: Date? = nil, endDate: Date? = nil, locationId: Int64? = nil, page: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: ReportResultOfNoRowDataAndOverviewReportSummary?, _ error: Error?) -> Void)
```

Generate business overview report for main dashboard

Generates a comprehensive overview report that includes key performance indicators (KPIs), trends, and analytics for the specified location and date range. This report provides insights into business performance and helps identify areas for improvement.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let pageSize = 987 // Int | Page size for pagination (default: 50)
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let startDate = Date() // Date | Start date for the report (inclusive) (optional)
let endDate = Date() // Date | End date for the report (inclusive) (optional)
let locationId = 987 // Int64 | Location ID to filter by (null for all accessible locations) (optional)
let page = 987 // Int | Page number for pagination (1-based). If not specified, returns all rows. (optional)
let sortBy = "sortBy_example" // String | Field to sort by (case-insensitive). Available fields vary by report type. (optional)
let sortDirection = "sortDirection_example" // String | Sort direction: asc or desc (optional)

// Generate business overview report for main dashboard
ReportsAPI.getOverviewReport(pageSize: pageSize, xAccountID: xAccountID, xLocationID: xLocationID, startDate: startDate, endDate: endDate, locationId: locationId, page: page, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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
 **pageSize** | **Int** | Page size for pagination (default: 50) | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **startDate** | **Date** | Start date for the report (inclusive) | [optional] 
 **endDate** | **Date** | End date for the report (inclusive) | [optional] 
 **locationId** | **Int64** | Location ID to filter by (null for all accessible locations) | [optional] 
 **page** | **Int** | Page number for pagination (1-based). If not specified, returns all rows. | [optional] 
 **sortBy** | **String** | Field to sort by (case-insensitive). Available fields vary by report type. | [optional] 
 **sortDirection** | **String** | Sort direction: asc or desc | [optional] 

### Return type

[**ReportResultOfNoRowDataAndOverviewReportSummary**](ReportResultOfNoRowDataAndOverviewReportSummary.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPackageReport**
```swift
    open class func getPackageReport(pageSize: Int, xAccountID: Int, xLocationID: Int, packageId: Int64? = nil, startDate: Date? = nil, endDate: Date? = nil, locationId: Int64? = nil, page: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: ReportResultOfPackageReportDtoAndPackageReportSummary?, _ error: Error?) -> Void)
```

Generate package sales report

Generates a package sales report with individual package rows, summary totals, and chart data. Supports pagination for large datasets (use Page and PageSize parameters). Admin and managers can view all locations. Location-restricted users can only view their assigned location.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let pageSize = 987 // Int | Page size for pagination (default: 50)
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let packageId = 987 // Int64 | Package ID to filter by (optional - null for all packages) (optional)
let startDate = Date() // Date | Start date for the report (inclusive) (optional)
let endDate = Date() // Date | End date for the report (inclusive) (optional)
let locationId = 987 // Int64 | Location ID to filter by (null for all accessible locations) (optional)
let page = 987 // Int | Page number for pagination (1-based). If not specified, returns all rows. (optional)
let sortBy = "sortBy_example" // String | Field to sort by (case-insensitive). Available fields vary by report type. (optional)
let sortDirection = "sortDirection_example" // String | Sort direction: asc or desc (optional)

// Generate package sales report
ReportsAPI.getPackageReport(pageSize: pageSize, xAccountID: xAccountID, xLocationID: xLocationID, packageId: packageId, startDate: startDate, endDate: endDate, locationId: locationId, page: page, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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
 **pageSize** | **Int** | Page size for pagination (default: 50) | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **packageId** | **Int64** | Package ID to filter by (optional - null for all packages) | [optional] 
 **startDate** | **Date** | Start date for the report (inclusive) | [optional] 
 **endDate** | **Date** | End date for the report (inclusive) | [optional] 
 **locationId** | **Int64** | Location ID to filter by (null for all accessible locations) | [optional] 
 **page** | **Int** | Page number for pagination (1-based). If not specified, returns all rows. | [optional] 
 **sortBy** | **String** | Field to sort by (case-insensitive). Available fields vary by report type. | [optional] 
 **sortDirection** | **String** | Sort direction: asc or desc | [optional] 

### Return type

[**ReportResultOfPackageReportDtoAndPackageReportSummary**](ReportResultOfPackageReportDtoAndPackageReportSummary.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductReport**
```swift
    open class func getProductReport(pageSize: Int, xAccountID: Int, xLocationID: Int, itemId: Int64? = nil, startDate: Date? = nil, endDate: Date? = nil, locationId: Int64? = nil, page: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: ReportResultOfProductReportDtoAndProductReportSummary?, _ error: Error?) -> Void)
```

Generate product sales report

Generates a product sales report with individual product rows, summary totals, and chart data. Supports pagination for large datasets (use Page and PageSize parameters). Admin and managers can view all locations. Location-restricted users can only view their assigned location.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let pageSize = 987 // Int | Page size for pagination (default: 50)
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let itemId = 987 // Int64 | Product/Item ID to filter by (optional - null for all products) (optional)
let startDate = Date() // Date | Start date for the report (inclusive) (optional)
let endDate = Date() // Date | End date for the report (inclusive) (optional)
let locationId = 987 // Int64 | Location ID to filter by (null for all accessible locations) (optional)
let page = 987 // Int | Page number for pagination (1-based). If not specified, returns all rows. (optional)
let sortBy = "sortBy_example" // String | Field to sort by (case-insensitive). Available fields vary by report type. (optional)
let sortDirection = "sortDirection_example" // String | Sort direction: asc or desc (optional)

// Generate product sales report
ReportsAPI.getProductReport(pageSize: pageSize, xAccountID: xAccountID, xLocationID: xLocationID, itemId: itemId, startDate: startDate, endDate: endDate, locationId: locationId, page: page, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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
 **pageSize** | **Int** | Page size for pagination (default: 50) | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **itemId** | **Int64** | Product/Item ID to filter by (optional - null for all products) | [optional] 
 **startDate** | **Date** | Start date for the report (inclusive) | [optional] 
 **endDate** | **Date** | End date for the report (inclusive) | [optional] 
 **locationId** | **Int64** | Location ID to filter by (null for all accessible locations) | [optional] 
 **page** | **Int** | Page number for pagination (1-based). If not specified, returns all rows. | [optional] 
 **sortBy** | **String** | Field to sort by (case-insensitive). Available fields vary by report type. | [optional] 
 **sortDirection** | **String** | Sort direction: asc or desc | [optional] 

### Return type

[**ReportResultOfProductReportDtoAndProductReportSummary**](ReportResultOfProductReportDtoAndProductReportSummary.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSalesReport**
```swift
    open class func getSalesReport(pageSize: Int, xAccountID: Int, xLocationID: Int, startDate: Date? = nil, endDate: Date? = nil, locationId: Int64? = nil, page: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: ReportResultOfSalesReportDtoAndSalesReportSummary?, _ error: Error?) -> Void)
```

Generate sales report

Generates a sales report with daily aggregated rows, KPI summary totals (Gross Sales, Net Sales, Tax, Discounts, Refunds, Voids), and weekly Net Sales chart data. Refunds are calculated by refund transaction date, not original order date. Voided orders are excluded from Gross/Net Sales and reported separately. Supports date range filters (Today, Yesterday, Last 7 Days, Last 30 Days, Custom). Admin and managers can view all locations. Location-restricted users can only view their assigned location.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let pageSize = 987 // Int | Page size for pagination (default: 50)
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let startDate = Date() // Date | Start date for the report (inclusive) (optional)
let endDate = Date() // Date | End date for the report (inclusive) (optional)
let locationId = 987 // Int64 | Location ID to filter by (null for all accessible locations) (optional)
let page = 987 // Int | Page number for pagination (1-based). If not specified, returns all rows. (optional)
let sortBy = "sortBy_example" // String | Field to sort by (case-insensitive). Available fields vary by report type. (optional)
let sortDirection = "sortDirection_example" // String | Sort direction: asc or desc (optional)

// Generate sales report
ReportsAPI.getSalesReport(pageSize: pageSize, xAccountID: xAccountID, xLocationID: xLocationID, startDate: startDate, endDate: endDate, locationId: locationId, page: page, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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
 **pageSize** | **Int** | Page size for pagination (default: 50) | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **startDate** | **Date** | Start date for the report (inclusive) | [optional] 
 **endDate** | **Date** | End date for the report (inclusive) | [optional] 
 **locationId** | **Int64** | Location ID to filter by (null for all accessible locations) | [optional] 
 **page** | **Int** | Page number for pagination (1-based). If not specified, returns all rows. | [optional] 
 **sortBy** | **String** | Field to sort by (case-insensitive). Available fields vary by report type. | [optional] 
 **sortDirection** | **String** | Sort direction: asc or desc | [optional] 

### Return type

[**ReportResultOfSalesReportDtoAndSalesReportSummary**](ReportResultOfSalesReportDtoAndSalesReportSummary.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStockReport**
```swift
    open class func getStockReport(pageSize: Int, xAccountID: Int, xLocationID: Int, categoryId: Int64? = nil, startDate: Date? = nil, endDate: Date? = nil, locationId: Int64? = nil, page: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: ReportResultOfStockReportDtoAndStockReportSummary?, _ error: Error?) -> Void)
```

Generate stock report

Generates a stock inventory report with individual items, summary totals, and optional category filtering. Supports pagination for large datasets (use Page and PageSize parameters). Admin and managers can view all locations. Location-restricted users can only view their assigned location.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let pageSize = 987 // Int | Page size for pagination (default: 50)
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let categoryId = 987 // Int64 | Category ID to filter by (optional) (optional)
let startDate = Date() // Date | Start date for the report (inclusive) (optional)
let endDate = Date() // Date | End date for the report (inclusive) (optional)
let locationId = 987 // Int64 | Location ID to filter by (null for all accessible locations) (optional)
let page = 987 // Int | Page number for pagination (1-based). If not specified, returns all rows. (optional)
let sortBy = "sortBy_example" // String | Field to sort by (case-insensitive). Available fields vary by report type. (optional)
let sortDirection = "sortDirection_example" // String | Sort direction: asc or desc (optional)

// Generate stock report
ReportsAPI.getStockReport(pageSize: pageSize, xAccountID: xAccountID, xLocationID: xLocationID, categoryId: categoryId, startDate: startDate, endDate: endDate, locationId: locationId, page: page, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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
 **pageSize** | **Int** | Page size for pagination (default: 50) | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **categoryId** | **Int64** | Category ID to filter by (optional) | [optional] 
 **startDate** | **Date** | Start date for the report (inclusive) | [optional] 
 **endDate** | **Date** | End date for the report (inclusive) | [optional] 
 **locationId** | **Int64** | Location ID to filter by (null for all accessible locations) | [optional] 
 **page** | **Int** | Page number for pagination (1-based). If not specified, returns all rows. | [optional] 
 **sortBy** | **String** | Field to sort by (case-insensitive). Available fields vary by report type. | [optional] 
 **sortDirection** | **String** | Sort direction: asc or desc | [optional] 

### Return type

[**ReportResultOfStockReportDtoAndStockReportSummary**](ReportResultOfStockReportDtoAndStockReportSummary.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

