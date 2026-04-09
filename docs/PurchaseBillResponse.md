# PurchaseBillResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**purchaseBillID** | **Int64** |  | 
**billNumber** | **String** |  | 
**purchaseOrderID** | **Int64** |  | [optional] 
**referenceNumber** | **String** |  | [optional] 
**externalInvoiceNumber** | **String** |  | [optional] 
**supplierID** | **Int64** |  | 
**supplierName** | **String** |  | [optional] 
**warehouseID** | **Int64** |  | 
**warehouseName** | **String** |  | [optional] 
**deliveryDate** | **Date** |  | [optional] 
**subTotal** | **Double** |  | [optional] 
**discount** | **Double** |  | [optional] 
**total** | **Double** |  | 
**taxAmount** | **Double** |  | [optional] 
**shippingCost** | **Double** |  | [optional] 
**customsDuty** | **Double** |  | [optional] 
**handlingCost** | **Double** |  | [optional] 
**paymentTerms** | **String** |  | [optional] 
**notes** | **String** |  | [optional] 
**termsAndConditions** | **String** |  | [optional] 
**attachments** | **[String]** |  | 
**paymentStatus** | [**PurchaseBillPaymentStatus**](PurchaseBillPaymentStatus.md) |  | 
**paymentDate** | **Date** |  | [optional] 
**paymentMethod** | [**SupplierPaymentMethod**](SupplierPaymentMethod.md) |  | [optional] 
**paymentReference** | **String** |  | [optional] 
**dueDate** | **Date** |  | [optional] 
**internalRemarks** | **String** |  | [optional] 
**supplierNotes** | **String** |  | [optional] 
**statusID** | [**PurchaseBillStatus**](PurchaseBillStatus.md) |  | 
**auditedByUserID** | **Int64** |  | 
**auditedByUserName** | **String** |  | [optional] 
**createdAt** | **Date** |  | [optional] [readonly] 
**updatedAt** | **Date** |  | [optional] [readonly] 
**details** | [PurchaseBillDetailResponse] |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


