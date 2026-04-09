# PurchaseOrderResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**purchaseOrderID** | **Int64** |  | 
**pONumber** | **String** |  | 
**referenceNumber** | **String** |  | [optional] 
**supplierID** | **Int64** |  | 
**supplierName** | **String** |  | [optional] 
**locationID** | **Int64** |  | 
**locationName** | **String** |  | [optional] 
**pODate** | **Date** |  | 
**expectedDeliveryDate** | **Date** |  | [optional] 
**subTotal** | **Double** |  | [optional] 
**discount** | **Double** |  | [optional] 
**shippingCost** | **Double** |  | [optional] 
**taxAmount** | **Double** |  | [optional] 
**total** | **Double** |  | 
**paymentMethod** | [**SupplierPaymentMethod**](SupplierPaymentMethod.md) |  | [optional] 
**paymentTerms** | **String** |  | [optional] 
**notes** | **String** |  | [optional] 
**termsAndConditions** | **String** |  | [optional] 
**statusID** | [**PurchaseOrderStatus**](PurchaseOrderStatus.md) |  | 
**createdAt** | **Date** |  | [optional] [readonly] 
**updatedAt** | **Date** |  | [optional] [readonly] 
**details** | [PurchaseOrderDetailResponse] |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


