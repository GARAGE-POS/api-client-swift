# QuotationRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**quotationNumber** | **String** |  | 
**referenceNumber** | **String** |  | [optional] 
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
**approvedByUserID** | **Int64** |  | [optional] 
**approvedAt** | **Date** |  | [optional] 
**auditedByUserID** | **Int64** |  | [optional] 
**lineItems** | [QuotationLineItemRequest] |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


