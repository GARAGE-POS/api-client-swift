# QuotationResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**quotationID** | **Int64** |  | 
**quotationNumber** | **String** |  | 
**referenceNumber** | **String** |  | [optional] 
**companyClientName** | **String** |  | [optional] 
**companyClientID** | **Int64** |  | 
**carIDs** | **[Int64]** |  | 
**locationID** | **Int64** |  | [optional] 
**date** | **Date** |  | 
**dueDate** | **Date** |  | 
**subTotal** | **Double** |  | [optional] 
**discount** | **Double** |  | [optional] 
**total** | **Double** |  | 
**taxAmount** | **Double** |  | [optional] 
**additionalCost** | **Double** |  | [optional] 
**status** | [**QuotationStatus**](QuotationStatus.md) |  | 
**vatNumber** | **String** |  | [optional] 
**billingAddress** | **String** |  | [optional] 
**notes** | **String** |  | [optional] 
**paymentTerms** | **String** |  | [optional] 
**termsAndConditions** | **String** |  | [optional] 
**attachments** | **[String]** |  | 
**createdByUserID** | **Int64** |  | [optional] [readonly] 
**approvedByUserID** | **Int64** |  | [optional] 
**approvedAt** | **Date** |  | [optional] 
**auditedByUserID** | **Int64** |  | [optional] 
**createdAt** | **Date** |  | [optional] [readonly] 
**updatedAt** | **Date** |  | [optional] [readonly] 
**statusID** | [**StatusType**](StatusType.md) |  | 
**lineItems** | [QuotationLineItemResponse] |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


