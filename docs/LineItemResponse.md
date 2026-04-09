# LineItemResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lineItemID** | **Int64** |  | 
**orderID** | **Int64** |  | 
**itemID** | **Int64** |  | [optional] 
**itemName** | **String** |  | [optional] 
**itemNameAr** | **String** |  | [optional] 
**packageID** | **Int64** |  | [optional] 
**package** | [**PackageResponse**](PackageResponse.md) |  | [optional] 
**notes** | **String** |  | [optional] 
**quantity** | **Double** |  | 
**unitPrice** | **Double** |  | 
**unitCost** | **Double** |  | 
**discountID** | **Int64** |  | [optional] 
**discount** | [**DiscountResponse**](DiscountResponse.md) |  | [optional] 
**discountAmount** | **Double** |  | [optional] 
**discountPercent** | **Double** |  | [optional] 
**orderDiscountPerItem** | **Double** |  | [optional] 
**orderDiscountPerItemPercent** | **Double** |  | [optional] 
**orderDiscountAllocation** | **Double** |  | [optional] 
**subtotal** | **Double** |  | 
**taxAmount** | **Double** |  | [optional] 
**taxPercent** | **Double** |  | 
**isInclusiveVAT** | **Bool** |  | 
**grandTotal** | **Double** |  | 
**lineItemStatus** | [**ServiceStatusType**](ServiceStatusType.md) |  | 
**createdBy** | **Int64** |  | [optional] [readonly] 
**createdAt** | **Date** |  | [optional] [readonly] 
**lastUpdatedBy** | **Int64** |  | [optional] [readonly] 
**updatedAt** | **Date** |  | [optional] [readonly] 
**refund** | [**LineItemRefundSummary**](LineItemRefundSummary.md) |  | [optional] 
**isFreeItem** | **Bool** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


