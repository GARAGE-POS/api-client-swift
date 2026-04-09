# SalesReportSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**totalGrossSales** | **Double** | Total gross sales (sum of subtotals for all completed/paid orders in period) | 
**totalNetSales** | **Double** | Total net sales &#x3D; Gross Sales − Discounts − Refunds | 
**totalTax** | **Double** | Total tax collected (net of refunded tax amounts within the period) | 
**totalDiscounts** | **Double** | Total discounts applied across all orders in the period | 
**totalRefunds** | **Double** | Total refunds issued in the period (by refund transaction date) | 
**totalOrders** | **Int** | Total number of completed/paid orders in the period | 
**totalVoids** | **Int** | Number of voided orders in the period (excluded from Gross/Net Sales) | 
**totalVoidValue** | **Double** | Total value of voided orders in the period | 
**chartData** | [SalesChartData] | Weekly aggregated data for the Net Sales chart (React shadcn/recharts compatible) | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


