# StockTransferResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transferID** | **Int64** |  | 
**sourceWarehouseID** | **Int64** |  | 
**sourceWarehouseName** | **String** |  | [optional] 
**destinationWarehouseID** | **Int64** |  | 
**destinationWarehouseName** | **String** |  | [optional] 
**referenceNumber** | **String** |  | [optional] 
**priority** | [**TransferPriority**](TransferPriority.md) |  | [optional] 
**urgencyReason** | **String** |  | [optional] 
**reason** | [**TransferReason**](TransferReason.md) |  | [optional] 
**otherReasonDescription** | **String** |  | [optional] 
**transportMethod** | [**TransportMethod**](TransportMethod.md) |  | [optional] 
**shippingCost** | **Double** |  | [optional] 
**expectedDeliveryDate** | **Date** |  | [optional] 
**trackingNumber** | **String** |  | [optional] 
**transferDate** | **Date** |  | [optional] 
**requestedDate** | **Date** |  | [optional] 
**approvedDate** | **Date** |  | [optional] 
**receivedDate** | **Date** |  | [optional] 
**requestedByUserID** | **Int64** |  | [optional] 
**approvedByUserID** | **Int64** |  | [optional] 
**receivedByUserID** | **Int64** |  | [optional] 
**statusID** | [**StockTransferStatus**](StockTransferStatus.md) |  | 
**requestNotes** | **String** |  | [optional] 
**transferNotes** | **String** |  | [optional] 
**receiveNotes** | **String** |  | [optional] 
**rejectionReason** | **String** |  | [optional] 
**createdAt** | **Date** |  | [optional] [readonly] 
**updatedAt** | **Date** |  | [optional] [readonly] 
**items** | [StockTransferDetailResponse] |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


