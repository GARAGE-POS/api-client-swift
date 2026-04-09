# OrderResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**orderID** | **Int64** |  | 
**transactionNo** | **Int64** |  | 
**orderNo** | **Int64** |  | 
**sessionID** | **Int64** |  | [optional] 
**sessionNo** | **Int64** |  | [optional] 
**carID** | **Int64** |  | [optional] 
**customerID** | **Int64** |  | [optional] 
**companyClientID** | **Int64** |  | [optional] 
**bayID** | **Int64** |  | [optional] 
**bayName** | **String** |  | [optional] 
**orderType** | [**OrderType**](OrderType.md) |  | [optional] 
**orderTakerID** | **Int64** |  | 
**orderTakerName** | **String** |  | [optional] 
**locationID** | **Int64** |  | 
**discountID** | **Int64** |  | [optional] 
**discountCode** | **String** |  | [optional] 
**discountName** | **String** |  | [optional] 
**discount** | [**DiscountResponse**](DiscountResponse.md) |  | [optional] 
**createdAt** | **Date** |  | [optional] [readonly] 
**updatedAt** | **Date** |  | [optional] [readonly] 
**lastServiceStatusID** | [**ServiceStatusType**](ServiceStatusType.md) |  | 
**subtotal** | **Double** |  | 
**itemDiscountTotal** | **Double** |  | 
**itemDiscountPercent** | **Double** |  | 
**discountAmount** | **Double** |  | 
**tax** | **Double** |  | 
**additionalCharges** | **Double** |  | 
**grandTotal** | **Double** |  | 
**amountPaid** | **Double** |  | 
**orderAmountPending** | **Double** |  | 
**taxPercent** | **Double** |  | 
**discountPercent** | **Double** |  | 
**refundAmount** | **Double** |  | 
**refund** | [**RefundSummary**](RefundSummary.md) |  | [optional] 
**lastOrderPaymentStatusID** | [**OrderPaymentStatusType**](OrderPaymentStatusType.md) |  | 
**isCompleted** | **Bool** |  | 
**technicians** | [TechnicianResponse] |  | 
**lineItems** | [LineItemResponse] |  | 
**orderHistory** | [**OrderHistoryResponse**](OrderHistoryResponse.md) |  | [optional] 
**orderNotes** | [OrderNoteResponse] |  | 
**payments** | [PaymentResponse] |  | 
**car** | [**CarResponse**](CarResponse.md) |  | [optional] 
**customer** | [**CustomerResponse**](CustomerResponse.md) |  | [optional] 
**companyClient** | [**CompanyClientResponse**](CompanyClientResponse.md) |  | [optional] 
**location** | [**OrderLocationResponse**](OrderLocationResponse.md) |  | [optional] 
**zatcaStatus** | **String** |  | [optional] 
**zatcaClearanceStatus** | **String** |  | [optional] 
**zatcaInvoiceUUID** | **String** |  | [optional] 
**zatcaQRCode** | **String** |  | [optional] 
**zatcaSubmittedAt** | **Date** |  | [optional] 
**zatcaErrorMessage** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


