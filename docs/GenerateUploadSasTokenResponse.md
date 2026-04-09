# GenerateUploadSasTokenResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sasUrl** | **String** | The full SAS URL to use for uploading the file. Use this URL with HTTP PUT method to upload the file. | 
**blobName** | **String** | The blob name (file path) in the storage container. This is the final path where the file will be stored. | 
**containerName** | **String** | The container name where the file will be uploaded. | 
**expiresOn** | **Date** | The expiration time of the SAS token (UTC). Upload must be completed before this time. | 
**uploadMethod** | **String** | The HTTP method to use for uploading the file. Always \&quot;PUT\&quot; for Azure Blob Storage. | 
**maxFileSizeBytes** | **Int64** | Maximum allowed file size in bytes. | 
**instructions** | [**UploadInstructions**](UploadInstructions.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


