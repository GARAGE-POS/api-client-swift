# OrderListResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**orderID** | **Int64** |  | 
**transactionNo** | **Int64** |  | 
**orderNo** | **Int64** |  | 
**carID** | **Int64** |  | [optional] 
**registrationNo** | **String** |  | [optional] 
**color** | **String** |  | [optional] 
**customerID** | **Int64** |  | [optional] 
**customerName** | **String** |  | [optional] 
**companyClientID** | **Int64** |  | [optional] 
**companyClientName** | **String** |  | [optional] 
**bayID** | **Int64** |  | [optional] 
**bayName** | **String** |  | [optional] 
**makeID** | **Int64** |  | [optional] 
**makeName** | **String** |  | [optional] 
**modelID** | **Int64** |  | [optional] 
**modelName** | **String** |  | [optional] 
**orderType** | [**OrderType**](OrderType.md) |  | [optional] 
**orderTakerID** | **Int64** |  | 
**orderTakerName** | **String** |  | [optional] 
**locationID** | **Int64** |  | 
**locationName** | **String** |  | [optional] 
**lastServiceStatusID** | [**ServiceStatusType**](ServiceStatusType.md) |  | 
**lastOrderPaymentStatusID** | [**OrderPaymentStatusType**](OrderPaymentStatusType.md) |  | 
**grandTotal** | **Double** |  | 
**amountPaid** | **Double** |  | 
**orderAmountPending** | **Double** |  | 
**discountID** | **Int64** |  | [optional] 
**isCompleted** | **Bool** |  | 
**technicians** | [TechnicianResponse] |  | 
**createdAt** | **Date** |  | [optional] [readonly] 
**zatcaStatus** | **String** |  | [optional] 
**itemPackageCount** | **Int** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


