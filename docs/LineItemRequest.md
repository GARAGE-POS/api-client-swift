# LineItemRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lineItemID** | **Int64** |  | [optional] 
**itemID** | **Int64** |  | [optional] 
**packageID** | **Int64** |  | [optional] 
**notes** | **String** |  | [optional] 
**quantity** | **Double** |  | 
**unitPrice** | **Double** |  | 
**unitCost** | **Double** |  | 
**taxPercent** | **Double** |  | 
**isInclusiveVAT** | **Bool** |  | 
**taxCategoryCode** | **String** | ZATCA tax category: S&#x3D;Standard, E&#x3D;Exempt, Z&#x3D;Zero-rated, O&#x3D;Out-of-scope. Defaults to \&quot;S\&quot;. | 
**taxExemptionReasonCode** | **String** |  | [optional] 
**taxExemptionReason** | **String** |  | [optional] 
**discountID** | **Int** |  | [optional] 
**discountPercent** | **Double** |  | [optional] 
**discountAmount** | **Double** |  | [optional] 
**grandTotal** | **Double** |  | 
**lineItemStatus** | [**ServiceStatusType**](ServiceStatusType.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


