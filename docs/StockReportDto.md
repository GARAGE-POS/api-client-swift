# StockReportDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**itemID** | **Int64** | Item ID | 
**item** | **String** | Item name | 
**SKU** | **String** | Item SKU | 
**category** | **String** | Category name | 
**location** | **String** | Warehouse/Location name | 
**currentStock** | **Double** | Current stock on hand (Stock.CurrentStock) | 
**stockOut** | **Double** | Quantity sold in the date period (from StockHistory where ReferenceType &#x3D; Sale) | 
**stockCost** | **Double** | Cost of current stock (CurrentStock × Stock.AvgCost) | 
**stockPrice** | **Double** | Retail value of current stock (CurrentStock × Item.Price) | 
**warehouseID** | **Int64** | Warehouse ID | 
**categoryID** | **Int64** | Category ID | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


