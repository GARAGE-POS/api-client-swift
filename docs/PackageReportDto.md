# PackageReportDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**packageID** | **Int64** | Package ID | 
**SKU** | **String** | Package SKU | 
**packageName** | **String** | Package name | 
**packagesSold** | **Double** | Total quantity sold (minus refunded quantity) | 
**grossSales** | **Double** | Gross sales (Quantity × UnitPrice, before discounts) | 
**netSales** | **Double** | Net sales (Gross - Line Discounts - Allocated Order Discounts + Taxes) | 
**refund** | **Double** | Total refund amount for this package | 
**discount** | **Double** | Total discount (line item discount + allocated order discount) | 
**taxes** | **Double** | Total tax amount | 
**profit** | **Double** | Package profit (Net Sales - Cost of Goods Sold) Calculated as: NetSales - (UnitCost × PackagesSold) | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


