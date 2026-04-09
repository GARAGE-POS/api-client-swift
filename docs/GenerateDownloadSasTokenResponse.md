# GenerateDownloadSasTokenResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**blobName** | **String** | The blob name (file path) in the storage container. Null for account-level or container-level SAS tokens. | [optional] 
**downloadUrl** | **String** | The full SAS URL to use for downloading files. For blob-level SAS: direct download URL for the specific file. For container-level SAS: base URL for the container, append blob name to download specific files. For account-level SAS: base URL for the account, append container/blob path to download specific files. Use HTTP GET method to download. | 
**expiresOn** | **Date** | The expiration time of the SAS token (UTC). Download must be initiated before this time. | 
**downloadMethod** | **String** | The HTTP method to use for downloading files. Always \&quot;GET\&quot; for Azure Blob Storage downloads. | 
**sasScope** | **String** | The scope of the SAS token. \&quot;blob\&quot;: specific file, \&quot;container\&quot;: all files in container, \&quot;account\&quot;: all files in all containers. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


