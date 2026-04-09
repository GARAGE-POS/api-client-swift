# OrderRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sessionID** | **Int64** |  | [optional] 
**carID** | **Int64** |  | [optional] 
**customerID** | **Int64** |  | [optional] 
**bayID** | **Int64** |  | [optional] 
**companyClientID** | **Int64** |  | [optional] 
**orderType** | [**OrderType**](OrderType.md) |  | [optional] 
**orderTakerID** | **Int64** |  | 
**locationID** | **Int64** |  | 
**discountID** | **Int64** |  | [optional] 
**discountCode** | **String** |  | [optional] 
**lastServiceStatusID** | [**ServiceStatusType**](ServiceStatusType.md) |  | [optional] 
**lineItems** | [LineItemRequest] |  | 
**orderNotes** | [PatchOrderNoteRequest] |  | 
**technicians** | [TechnicianRequest] |  | 
**subtotal** | **Double** |  | 
**grandTotal** | **Double** |  | 
**additionalCharges** | **Double** |  | 
**discountPercent** | **Double** |  | 
**discountAmount** | **Double** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


