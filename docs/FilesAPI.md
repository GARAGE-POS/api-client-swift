# FilesAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generateDownloadSasToken**](FilesAPI.md#generatedownloadsastoken) | **POST** /api/v1/files/generate-download-sas | Generate a SAS token for secure file download
[**generateUploadSasToken**](FilesAPI.md#generateuploadsastoken) | **POST** /api/v1/files/generate-upload-sas | Generate a SAS token for secure file upload


# **generateDownloadSasToken**
```swift
    open class func generateDownloadSasToken(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, generateDownloadSasTokenRequest: GenerateDownloadSasTokenRequest, completion: @escaping (_ data: GenerateDownloadSasTokenResponse?, _ error: Error?) -> Void)
```

Generate a SAS token for secure file download

 Generates a time-limited SAS (Shared Access Signature) token for downloading files from Azure Blob Storage.  **SAS Token Scopes:** - **Blob-level**: Specific file download (requires both ContainerName and BlobName) - **Container-level**: Download any file from a specific container (requires ContainerName, BlobName optional) - **Account-level**: Download any file from any container (no ContainerName or BlobName required)  **Security Features:** - Temporary access with read-only permissions - HTTPS-only enforcement - File/container existence validation (for blob/container-level) - 1-hour expiration by default  **Download Process:** 1. Client requests a SAS token specifying scope (blob/container/account) 2. Server validates the request and generates appropriate SAS token 3. Server returns the SAS URL and scope information 4. Client constructs full download URLs and downloads files using HTTP GET  **Usage Examples:**  **Account-level SAS (download from any container):** ```javascript // Request: { ContainerName: null, BlobName: null } // Response: { DownloadUrl: 'https://account.blob.core.windows.net?sv=...', SasScope: 'account' } // Usage: fetch(`${downloadUrl}/${containerName}/${blobName}`) ```  **Container-level SAS (download from specific container):** ```javascript // Request: { ContainerName: 'invoices', BlobName: null } // Response: { DownloadUrl: 'https://account.blob.core.windows.net/invoices?sv=...', SasScope: 'container' } // Usage: fetch(`${downloadUrl}/${blobName}`) ```  **Blob-level SAS (download specific file):** ```javascript // Request: { ContainerName: 'invoices', BlobName: '2024/11/invoice.pdf' } // Response: { DownloadUrl: 'https://account.blob.core.windows.net/invoices/2024/11/invoice.pdf?sv=...', SasScope: 'blob' } // Usage: fetch(downloadUrl) ```  **Benefits:** - Flexible access control (blob/container/account level) - Direct client-to-storage download (improved performance) - No file content passes through the API server - Enhanced security (minimal permissions, time-limited access) - Scalable architecture 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let generateDownloadSasTokenRequest = GenerateDownloadSasTokenRequest(containerName: "containerName_example", blobName: "blobName_example", expirationMinutes: 123) // GenerateDownloadSasTokenRequest | The GenerateDownloadSasTokenRequest parameter

// Generate a SAS token for secure file download
FilesAPI.generateDownloadSasToken(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, generateDownloadSasTokenRequest: generateDownloadSasTokenRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **generateDownloadSasTokenRequest** | [**GenerateDownloadSasTokenRequest**](GenerateDownloadSasTokenRequest.md) | The GenerateDownloadSasTokenRequest parameter | 

### Return type

[**GenerateDownloadSasTokenResponse**](GenerateDownloadSasTokenResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateUploadSasToken**
```swift
    open class func generateUploadSasToken(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, generateUploadSasTokenRequest: GenerateUploadSasTokenRequest, completion: @escaping (_ data: GenerateUploadSasTokenResponse?, _ error: Error?) -> Void)
```

Generate a SAS token for secure file upload

 Generates a time-limited SAS (Shared Access Signature) token for uploading a file directly to Azure Blob Storage.  **Security Features:** - Temporary access with configurable expiration (5-1440 minutes) - Write-only permissions (no read, delete, or list access) - HTTPS-only enforcement - Optional IP address restrictions - File extension validation - File size limits  **Upload Process:** 1. Client requests a SAS token by providing the file name 2. Server validates the request and generates a time-limited SAS token 3. Server returns the SAS URL and upload instructions 4. Client uploads the file directly to Blob Storage using HTTP PUT 5. No file content passes through the API server (improved performance)  **Benefits:** - Reduced API server load and costs - Improved upload performance (direct client-to-storage) - Enhanced security (minimal permissions, time-limited access) - Scalable architecture  **Example Upload (using cURL):** ```bash curl -X PUT \"$sasUrl\" \\   -H \"Content-Type: application/pdf\" \\   -H \"x-ms-blob-type: BlockBlob\" \\   --data-binary \"@/path/to/file.pdf\" ```  **Example Upload (using JavaScript fetch):** ```javascript const file = document.getElementById('fileInput').files[0]; const response = await fetch(sasUrl, {   method: 'PUT',   headers: {     'Content-Type': file.type,     'x-ms-blob-type': 'BlockBlob'   },   body: file }); ``` 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let generateUploadSasTokenRequest = GenerateUploadSasTokenRequest(fileName: "fileName_example", containerName: "containerName_example", folderPath: "folderPath_example", expirationMinutes: 123) // GenerateUploadSasTokenRequest | The GenerateUploadSasTokenRequest parameter

// Generate a SAS token for secure file upload
FilesAPI.generateUploadSasToken(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, generateUploadSasTokenRequest: generateUploadSasTokenRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **generateUploadSasTokenRequest** | [**GenerateUploadSasTokenRequest**](GenerateUploadSasTokenRequest.md) | The GenerateUploadSasTokenRequest parameter | 

### Return type

[**GenerateUploadSasTokenResponse**](GenerateUploadSasTokenResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

