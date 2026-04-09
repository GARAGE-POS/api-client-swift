# ReconciliationResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reconciliationID** | **Int64** |  | 
**warehouseID** | **Int64** |  | 
**warehouseName** | **String** |  | [optional] 
**reconciliationDate** | **Date** |  | 
**submittedDate** | **Date** |  | [optional] 
**auditedDate** | **Date** |  | [optional] 
**submittedByUserID** | **Int64** |  | [optional] 
**submittedByUserName** | **String** |  | [optional] 
**auditedByUserID** | **Int64** |  | [optional] 
**auditedByUserName** | **String** |  | [optional] 
**statusID** | [**ReconciliationStatus**](ReconciliationStatus.md) |  | 
**reconciliationType** | [**ReconciliationType**](ReconciliationType.md) |  | 
**notes** | **String** |  | [optional] 
**auditNotes** | **String** |  | [optional] 
**reasonType** | [**ReconciliationVarianceReason**](ReconciliationVarianceReason.md) |  | [optional] 
**attachments** | **[String]** |  | 
**totalItems** | **Int** |  | 
**itemsWithVariance** | **Int** |  | 
**totalVarianceValue** | **Double** |  | 
**createdAt** | **Date** |  | [optional] [readonly] 
**updatedAt** | **Date** |  | [optional] [readonly] 
**details** | [ReconciliationDetailResponse] |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


