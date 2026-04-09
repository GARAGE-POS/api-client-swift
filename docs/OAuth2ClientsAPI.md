# OAuth2ClientsAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createOAuth2Client**](OAuth2ClientsAPI.md#createoauth2client) | **POST** /api/v1/oauth2/clients | Create a new OAuth2 client
[**deleteOAuth2Client**](OAuth2ClientsAPI.md#deleteoauth2client) | **DELETE** /api/v1/oauth2/clients/{OAuth2ClientID} | Delete an OAuth2 client
[**getAllOAuth2Clients**](OAuth2ClientsAPI.md#getalloauth2clients) | **GET** /api/v1/oauth2/clients | Get all OAuth2 clients
[**getOAuth2Client**](OAuth2ClientsAPI.md#getoauth2client) | **GET** /api/v1/oauth2/clients/{OAuth2ClientID} | Get OAuth2 client by ID
[**updateOAuth2Client**](OAuth2ClientsAPI.md#updateoauth2client) | **PUT** /api/v1/oauth2/clients/{OAuth2ClientID} | Update an existing OAuth2 client


# **createOAuth2Client**
```swift
    open class func createOAuth2Client(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, createOAuth2ClientRequest: CreateOAuth2ClientRequest, completion: @escaping (_ data: CreateOAuth2ClientResponse?, _ error: Error?) -> Void)
```

Create a new OAuth2 client

 Creates a new OAuth2 client application with the specified configuration.  **Key Features:** - Supports both public and confidential client types - Configurable redirect URIs for authorization flows - Flexible permission and requirement settings - Auto-generates unique client ID if not provided  **Supported Client Types:** - **public**: For mobile apps, SPAs (no client secret) - **confidential**: For server-side apps (requires client secret)  **Supported Grant Types:** - Authorization Code Flow with PKCE - Client Credentials Flow - Refresh Token Flow  **Common Permissions:** - ept:authorization, ept:token (endpoints) - gt:authorization_code, gt:client_credentials, gt:refresh_token (grant types) - rt:code (response types) - scp:email, scp:profile, scp:roles (scopes)  **Consent Types:** - **explicit**: User must explicitly consent - **implicit**: No consent required - **external**: Consent managed externally - **systematic**: Systematic consent handling 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let createOAuth2ClientRequest = CreateOAuth2ClientRequest(clientID: "clientID_example", displayName: "displayName_example", clientType: "clientType_example", clientSecret: "clientSecret_example", redirectUris: ["redirectUris_example"], postLogoutRedirectUris: ["postLogoutRedirectUris_example"], permissions: ["permissions_example"], requirements: ["requirements_example"], consentType: "consentType_example") // CreateOAuth2ClientRequest | The CreateOAuth2ClientRequest parameter

// Create a new OAuth2 client
OAuth2ClientsAPI.createOAuth2Client(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, createOAuth2ClientRequest: createOAuth2ClientRequest) { (response, error) in
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
 **createOAuth2ClientRequest** | [**CreateOAuth2ClientRequest**](CreateOAuth2ClientRequest.md) | The CreateOAuth2ClientRequest parameter | 

### Return type

[**CreateOAuth2ClientResponse**](CreateOAuth2ClientResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOAuth2Client**
```swift
    open class func deleteOAuth2Client(oAuth2ClientID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete an OAuth2 client

 Deletes an OAuth2 client permanently.  **Warning:** This action cannot be undone and will: - Invalidate all existing tokens for this client - Remove all associated authorizations - Break existing integrations using this client  **Use with caution** - only delete clients that are no longer needed. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let oAuth2ClientID = "oAuth2ClientID_example" // String | The unique identifier of the OAuth2 client
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete an OAuth2 client
OAuth2ClientsAPI.deleteOAuth2Client(oAuth2ClientID: oAuth2ClientID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **oAuth2ClientID** | **String** | The unique identifier of the OAuth2 client | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllOAuth2Clients**
```swift
    open class func getAllOAuth2Clients(page: Int, pageSize: Int, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: PagedResultOfGetAllOAuth2ClientsResponse?, _ error: Error?) -> Void)
```

Get all OAuth2 clients

 Retrieves a paginated list of all OAuth2 clients.  **Features:** - Paginated results with configurable page size - Summary information for each client - Total count for pagination purposes  **Query Parameters:** - page: Page number (default: 1) - pageSize: Items per page (default: 10, max: 100) 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let page = 987 // Int | Page number for pagination (1-based)
let pageSize = 987 // Int | Number of items per page
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get all OAuth2 clients
OAuth2ClientsAPI.getAllOAuth2Clients(page: page, pageSize: pageSize, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **page** | **Int** | Page number for pagination (1-based) | 
 **pageSize** | **Int** | Number of items per page | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**PagedResultOfGetAllOAuth2ClientsResponse**](PagedResultOfGetAllOAuth2ClientsResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOAuth2Client**
```swift
    open class func getOAuth2Client(oAuth2ClientID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: GetOAuth2ClientResponse?, _ error: Error?) -> Void)
```

Get OAuth2 client by ID

 Retrieves a specific OAuth2 client by its unique identifier.  **Response includes:** - Client configuration details - Redirect URIs - Permissions and requirements - Client type and consent settings  **Note:** Client secret is never returned in the response for security reasons. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let oAuth2ClientID = "oAuth2ClientID_example" // String | The unique identifier of the OAuth2Client
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get OAuth2 client by ID
OAuth2ClientsAPI.getOAuth2Client(oAuth2ClientID: oAuth2ClientID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **oAuth2ClientID** | **String** | The unique identifier of the OAuth2Client | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**GetOAuth2ClientResponse**](GetOAuth2ClientResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOAuth2Client**
```swift
    open class func updateOAuth2Client(oAuth2ClientID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, updateOAuth2ClientRequest: UpdateOAuth2ClientRequest, completion: @escaping (_ data: UpdateOAuth2ClientResponse?, _ error: Error?) -> Void)
```

Update an existing OAuth2 client

 Updates an existing OAuth2 client configuration.  **Updatable Fields:** - Display name - Client type (public/confidential) - Client secret (for confidential clients) - Redirect URIs - Permissions and requirements - Consent type  **Important Notes:** - Client ID cannot be changed after creation - Changing client type may affect existing integrations - Client secret can be updated or cleared 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let oAuth2ClientID = "oAuth2ClientID_example" // String | The unique identifier of the OAuth2 client
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let updateOAuth2ClientRequest = UpdateOAuth2ClientRequest(displayName: "displayName_example", clientType: "clientType_example", clientSecret: "clientSecret_example", redirectUris: ["redirectUris_example"], postLogoutRedirectUris: ["postLogoutRedirectUris_example"], permissions: ["permissions_example"], requirements: ["requirements_example"], consentType: "consentType_example") // UpdateOAuth2ClientRequest | The UpdateOAuth2ClientRequest parameter

// Update an existing OAuth2 client
OAuth2ClientsAPI.updateOAuth2Client(oAuth2ClientID: oAuth2ClientID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, updateOAuth2ClientRequest: updateOAuth2ClientRequest) { (response, error) in
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
 **oAuth2ClientID** | **String** | The unique identifier of the OAuth2 client | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **updateOAuth2ClientRequest** | [**UpdateOAuth2ClientRequest**](UpdateOAuth2ClientRequest.md) | The UpdateOAuth2ClientRequest parameter | 

### Return type

[**UpdateOAuth2ClientResponse**](UpdateOAuth2ClientResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

