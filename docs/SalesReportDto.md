# SalesReportDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**date** | **String** | Date in ISO 8601 format (YYYY-MM-DD) | 
**grossSales** | **Double** | Gross sales — sum of order subtotals (before discounts) for completed/paid orders | 
**discounts** | **Double** | Total discounts applied (line item + order-level discounts) | 
**tax** | **Double** | Net tax collected (gross tax minus refunded tax amounts for refunds processed on this date) | 
**refunds** | **Double** | Refunds processed on this date (by refund transaction date, not original order date) | 
**netSales** | **Double** | Net sales &#x3D; Gross Sales − Discounts − Refunds | 
**orders** | **Int** | Number of completed/paid orders on this date | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


