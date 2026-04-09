# GenerateDownloadSasTokenRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**containerName** | **String** | Optional container name. If not specified, generates an account-level SAS token that allows downloading from all containers. If specified without BlobName, generates a container-level SAS token for that specific container. If specified with BlobName, generates a blob-level SAS token for that specific file. Example: \&quot;invoices\&quot;, \&quot;receipts\&quot;, \&quot;documents\&quot; | [optional] 
**blobName** | **String** | Optional blob name (file path) of the file to download. If provided with ContainerName, generates a blob-level SAS for that specific file. If not provided with ContainerName, generates a container-level SAS. If neither is provided, generates an account-level SAS. Example: \&quot;2024/11/invoice-12345_ab99f957.pdf\&quot; | [optional] 
**expirationMinutes** | **Int** | Optional expiration time in minutes for the SAS token. If not specified, defaults to 60 minutes. Must be between 5 and 1440 minutes (24 hours). Example: 60, 120, 1440 | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


