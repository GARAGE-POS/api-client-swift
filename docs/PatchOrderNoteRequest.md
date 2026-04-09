# PatchOrderNoteRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**orderID** | **Int64** | OrderID is optional when creating OrderNote as part of Order creation. It will be automatically set from the parent Order. | [optional] 
**comment** | **String** | Comment is optional. If not provided, defaults to empty string. | [optional] 
**notesStatus** | [**OrderNoteStatus**](OrderNoteStatus.md) |  | [optional] 
**signaturePath** | **String** |  | [optional] 
**noteImageJSON** | **[String]** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


