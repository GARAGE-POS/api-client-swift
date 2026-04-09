# RefundHistoryItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**orderRefundID** | **Int64** |  | 
**refundReason** | **String** |  | [optional] 
**creditNoteReference** | **String** |  | [optional] 
**externalReferenceNumber** | **String** |  | [optional] 
**refundAmountTotal** | **Double** |  | 
**refundedTaxAmount** | **Double** |  | 
**grandTotalRefund** | **Double** |  | 
**refundPolicyID** | **Int64** |  | [optional] 
**refundPolicyType** | [**RefundDiscountAccountingPolicy**](RefundDiscountAccountingPolicy.md) |  | [optional] 
**refundDate** | **Date** |  | 
**refundedByUserID** | **Int64** |  | 
**refundedByUserName** | **String** |  | [optional] 
**lineItems** | [RefundLineItemDetail] |  | 
**zatcaStatus** | **String** |  | [optional] 
**zatcaClearanceStatus** | **String** |  | [optional] 
**zatcaInvoiceUUID** | **String** |  | [optional] 
**zatcaQRCode** | **String** |  | [optional] 
**zatcaSubmittedAt** | **Date** |  | [optional] 
**zatcaErrorMessage** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


