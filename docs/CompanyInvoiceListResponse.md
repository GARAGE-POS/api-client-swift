# CompanyInvoiceListResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**orderID** | **Int64** |  | 
**transactionNo** | **Int64** |  | 
**orderNo** | **Int64** |  | 
**source** | **String** | Source of the invoice - POS or Admin | 
**companyClientName** | **String** | Company client information | [optional] 
**companyClientID** | **Int64** |  | [optional] 
**carID** | **Int64** | Car information (if any) | [optional] 
**carDescription** | **String** |  | [optional] 
**registrationNo** | **String** |  | [optional] 
**subtotal** | **Double** | Financial information | 
**itemTaxTotal** | **Double** |  | 
**grandTotal** | **Double** |  | 
**amountPaidTotal** | **Double** |  | 
**amountDueTotal** | **Double** |  | 
**paymentStatus** | [**OrderPaymentStatusType**](OrderPaymentStatusType.md) |  | 
**serviceStatus** | [**ServiceStatusType**](ServiceStatusType.md) |  | 
**createdAt** | **Date** | Dates | [optional] [readonly] 
**dueDate** | **Date** |  | [optional] 
**locationID** | **Int64** | Location information | 
**locationName** | **String** |  | [optional] 
**orderTakerID** | **Int64** | Order taker information | 
**orderTakerName** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


