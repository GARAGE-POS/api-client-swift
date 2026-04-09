# AccountsAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAccount**](AccountsAPI.md#createaccount) | **POST** /api/v1/accounts | Create a new account
[**deleteAccount**](AccountsAPI.md#deleteaccount) | **DELETE** /api/v1/accounts/{AccountID} | Delete an account
[**getAccountById**](AccountsAPI.md#getaccountbyid) | **GET** /api/v1/accounts/{AccountID} | Get account by ID
[**getAccountPaymentModesByAccountId**](AccountsAPI.md#getaccountpaymentmodesbyaccountid) | **GET** /api/v1/accounts/{AccountID}/payment-modes | Get payment modes for a specific account
[**getAccountWarehouses**](AccountsAPI.md#getaccountwarehouses) | **GET** /api/v1/accounts/{AccountID}/warehouses | Get account warehouses
[**getAccounts**](AccountsAPI.md#getaccounts) | **GET** /api/v1/accounts | Get accounts with dynamic filtering
[**updateAccount**](AccountsAPI.md#updateaccount) | **PUT** /api/v1/accounts/{AccountID} | Update an existing account


# **createAccount**
```swift
    open class func createAccount(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, accountRequest: AccountRequest, completion: @escaping (_ data: AccountResponse?, _ error: Error?) -> Void)
```

Create a new account

Creates a new business account in the system with comprehensive company and representative information.  **Key Information:** - AccountID is auto-generated - Timestamps (CreatedAt, UpdatedAt) are automatically set - All bilingual fields (Arabic) are optional but recommended - Social media links stored as key-value pairs - Images should be pre-uploaded and paths provided  **Required Fields:** - CompanyName - RepresentativeFirstName - RepresentativeLastName - CompanyContactNo - CRNo (Commercial Registration Number) - VATNo (VAT Registration Number)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let accountRequest = AccountRequest(companyName: "companyName_example", representativeFirstName: "representativeFirstName_example", representativeLastName: "representativeLastName_example", representativeContactNo: "representativeContactNo_example", companyContactNo: "companyContactNo_example", companyNameAr: "companyNameAr_example", cRNo: "cRNo_example", vATNo: 123, companyEmail: "companyEmail_example", primaryBusiness: 123, businessService: [123], companyCode: "companyCode_example", externalID: "externalID_example", socialMedias: "TODO", brandThumbnailImage: "brandThumbnailImage_example", imagePath: "imagePath_example", statusID: StatusType(), locationName: "locationName_example", locationNameAr: "locationNameAr_example", cityID: 123, locationAddress: "locationAddress_example", warehouse: CreateWarehouseRequest(code: "code_example", name: "name_example", nameAr: "nameAr_example", address: "address_example", contact: "contact_example")) // AccountRequest | The AccountRequest parameter

// Create a new account
AccountsAPI.createAccount(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, accountRequest: accountRequest) { (response, error) in
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
 **accountRequest** | [**AccountRequest**](AccountRequest.md) | The AccountRequest parameter | 

### Return type

[**AccountResponse**](AccountResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAccount**
```swift
    open class func deleteAccount(accountID: Int64, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete an account

Permanently deletes a business account from the system.  **Warning:** This operation cannot be undone. All data associated with this account may be affected.  **Considerations:** - Ensure all dependent data is handled appropriately - Consider soft-delete patterns for production systems - Verify no active transactions are linked to this account

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let accountID = 987 // Int64 | The unique identifier of the account to delete
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete an account
AccountsAPI.deleteAccount(accountID: accountID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **accountID** | **Int64** | The unique identifier of the account to delete | 
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

# **getAccountById**
```swift
    open class func getAccountById(accountID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: AccountResponse?, _ error: Error?) -> Void)
```

Get account by ID

Retrieves detailed information about a specific business account including company details, representative information, and metadata.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let accountID = "accountID_example" // String | The unique identifier of the account to retrieve
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get account by ID
AccountsAPI.getAccountById(accountID: accountID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **accountID** | **String** | The unique identifier of the account to retrieve | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**AccountResponse**](AccountResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountPaymentModesByAccountId**
```swift
    open class func getAccountPaymentModesByAccountId(accountID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: [AccountPaymentModeResponse]?, _ error: Error?) -> Void)
```

Get payment modes for a specific account

Retrieves all payment mode associations for a specific account, including full payment mode details.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let accountID = "accountID_example" // String | The unique identifier of the account to retrieve payment modes for
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get payment modes for a specific account
AccountsAPI.getAccountPaymentModesByAccountId(accountID: accountID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **accountID** | **String** | The unique identifier of the account to retrieve payment modes for | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**[AccountPaymentModeResponse]**](AccountPaymentModeResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountWarehouses**
```swift
    open class func getAccountWarehouses(accountID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: [WarehouseResponse]?, _ error: Error?) -> Void)
```

Get account warehouses

Retrieves all warehouses belonging to the specified account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let accountID = "accountID_example" // String | The unique identifier of the account
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get account warehouses
AccountsAPI.getAccountWarehouses(accountID: accountID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **accountID** | **String** | The unique identifier of the account | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**[WarehouseResponse]**](WarehouseResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccounts**
```swift
    open class func getAccounts(filters: String? = nil, page: Int? = nil, pageSize: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: PagedResultOfAccountResponse?, _ error: Error?) -> Void)
```

Get accounts with dynamic filtering

Retrieves a paginated list of business accounts with advanced filtering, sorting, and search capabilities.  **Query Parameters:** - **page**: Page number (default: 1) - **pageSize**: Items per page (default: 10, max: 100) - **sortBy**: Field name to sort by (e.g., AccountID, CompanyName, CreatedAt) - **sortDirection**: Sort direction - 'asc' or 'desc' (default: asc) - **filters**: JSON array of FilterRule objects for complex filtering  **Supported Filter Fields:** - AccountID, CompanyName, CompanyNameAr - CompanyCode, CRNo, VATNo - CompanyEmail, RepresentativeFirstName, RepresentativeLastName - PrimaryBusiness, CreatedAt, UpdatedAt  **Filter Operators:** - eq (equals), ne (not equals) - gt (greater than), gte (greater than or equal) - lt (less than), lte (less than or equal) - contains (substring search), startswith, endswith - in (value in list) - between (requires two values for dates/numbers)  **Performance Notes:** - Uses database-level filtering and pagination - Maximum page size is 100 items - Results are returned without tracking for better performance

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let filters = "filters_example" // String | The Filters query parameter (optional)
let page = 987 // Int | Page number for pagination (1-based) (optional)
let pageSize = 987 // Int | Number of items per page (optional)
let sortBy = "sortBy_example" // String | Field name to sort by (optional)
let sortDirection = "sortDirection_example" // String | The SortDirection query parameter (optional)

// Get accounts with dynamic filtering
AccountsAPI.getAccounts(filters: filters, page: page, pageSize: pageSize, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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
 **filters** | **String** | The Filters query parameter | [optional] 
 **page** | **Int** | Page number for pagination (1-based) | [optional] 
 **pageSize** | **Int** | Number of items per page | [optional] 
 **sortBy** | **String** | Field name to sort by | [optional] 
 **sortDirection** | **String** | The SortDirection query parameter | [optional] 

### Return type

[**PagedResultOfAccountResponse**](PagedResultOfAccountResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAccount**
```swift
    open class func updateAccount(accountID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, accountRequest: AccountRequest, completion: @escaping (_ data: AccountResponse?, _ error: Error?) -> Void)
```

Update an existing account

Updates an existing business account with new information. All fields in the request will replace the existing values.  **Note:** This is a full update operation. Provide all fields you want to keep, as missing fields may be cleared.  **Updatable Fields:** - Company information (name, contact details) - Representative information - Registration numbers (CR, VAT) - Business details - Social media links - Images

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let accountID = "accountID_example" // String | The unique identifier of the account to update
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let accountRequest = AccountRequest(companyName: "companyName_example", representativeFirstName: "representativeFirstName_example", representativeLastName: "representativeLastName_example", representativeContactNo: "representativeContactNo_example", companyContactNo: "companyContactNo_example", companyNameAr: "companyNameAr_example", cRNo: "cRNo_example", vATNo: 123, companyEmail: "companyEmail_example", primaryBusiness: 123, businessService: [123], companyCode: "companyCode_example", externalID: "externalID_example", socialMedias: "TODO", brandThumbnailImage: "brandThumbnailImage_example", imagePath: "imagePath_example", statusID: StatusType(), locationName: "locationName_example", locationNameAr: "locationNameAr_example", cityID: 123, locationAddress: "locationAddress_example", warehouse: CreateWarehouseRequest(code: "code_example", name: "name_example", nameAr: "nameAr_example", address: "address_example", contact: "contact_example")) // AccountRequest | The AccountRequest parameter

// Update an existing account
AccountsAPI.updateAccount(accountID: accountID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, accountRequest: accountRequest) { (response, error) in
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
 **accountID** | **String** | The unique identifier of the account to update | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **accountRequest** | [**AccountRequest**](AccountRequest.md) | The AccountRequest parameter | 

### Return type

[**AccountResponse**](AccountResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

