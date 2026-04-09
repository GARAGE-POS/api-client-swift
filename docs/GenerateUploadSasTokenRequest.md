# GenerateUploadSasTokenRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fileName** | **String** | The name of the file to upload (including extension). Required for validation and blob naming. Example: \&quot;invoice-12345.pdf\&quot; | 
**containerName** | **String** | Optional container name. If not specified, uses the default container from configuration. Example: \&quot;invoices\&quot;, \&quot;receipts\&quot;, \&quot;documents\&quot; | [optional] 
**folderPath** | **String** | Optional folder path within the container for organizing files. Example: \&quot;2024/01\&quot;, \&quot;customers/12345\&quot;, \&quot;uploads\&quot; | [optional] 
**expirationMinutes** | **Int** | Optional custom expiration time in minutes. If not specified, uses the default expiration from configuration. Minimum: 5 minutes, Maximum: 1440 minutes (24 hours) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


