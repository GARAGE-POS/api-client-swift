# ZatcaAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSampleInvoices**](ZatcaAPI.md#createsampleinvoices) | **POST** /api/v1/zatca/system-compliance/samples | Submit 6 compliance sample invoices to ZATCA
[**createSystemCompliance**](ZatcaAPI.md#createsystemcompliance) | **POST** /api/v1/zatca/system-compliance | Create system-wide ZATCA compliance certificate
[**createZatcaCertificateRenewal**](ZatcaAPI.md#createzatcacertificaterenewal) | **POST** /api/v1/zatca/renew-certificate | Renew a terminal&#39;s certificate
[**createZatcaOnboarding**](ZatcaAPI.md#createzatcaonboarding) | **POST** /api/v1/zatca/onboard | Onboard a terminal with ZATCA
[**getSampleInvoice**](ZatcaAPI.md#getsampleinvoice) | **GET** /api/v1/zatca/system-compliance/samples/{InvoiceTypeID}/{DocumentTypeID} | Get sample invoice data for printing
[**getSystemComplianceStatus**](ZatcaAPI.md#getsystemcompliancestatus) | **GET** /api/v1/zatca/system-compliance/status | Get system compliance certificate status
[**getZatcaCertificateHealth**](ZatcaAPI.md#getzatcacertificatehealth) | **GET** /api/v1/zatca/certificates/health | Get ZATCA certificate health status
[**getZatcaCertificateStatus**](ZatcaAPI.md#getzatcacertificatestatus) | **GET** /api/v1/zatca/terminals/{TerminalID}/certificate-status | Get certificate status for a terminal
[**listZatcaCertificates**](ZatcaAPI.md#listzatcacertificates) | **GET** /api/v1/zatca/terminals/{TerminalID}/certificates | List all certificates for a terminal


# **createSampleInvoices**
```swift
    open class func createSampleInvoices(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, submitSampleInvoicesRequest: SubmitSampleInvoicesRequest, completion: @escaping (_ data: SubmitSampleInvoicesResponse?, _ error: Error?) -> Void)
```

Submit 6 compliance sample invoices to ZATCA

SuperAdmin only. Submits the 6 required sample invoices (3 standard + 3 simplified) to ZATCA for compliance verification using the system compliance certificate.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let submitSampleInvoicesRequest = SubmitSampleInvoicesRequest(systemComplianceID: 123) // SubmitSampleInvoicesRequest | The SubmitSampleInvoicesRequest parameter

// Submit 6 compliance sample invoices to ZATCA
ZatcaAPI.createSampleInvoices(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, submitSampleInvoicesRequest: submitSampleInvoicesRequest) { (response, error) in
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
 **submitSampleInvoicesRequest** | [**SubmitSampleInvoicesRequest**](SubmitSampleInvoicesRequest.md) | The SubmitSampleInvoicesRequest parameter | 

### Return type

[**SubmitSampleInvoicesResponse**](SubmitSampleInvoicesResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSystemCompliance**
```swift
    open class func createSystemCompliance(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, createSystemComplianceRequest: CreateSystemComplianceRequest, completion: @escaping (_ data: SystemComplianceResponse?, _ error: Error?) -> Void)
```

Create system-wide ZATCA compliance certificate

SuperAdmin only. Creates the initial compliance certificate for system-level validation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let createSystemComplianceRequest = CreateSystemComplianceRequest(otp: "otp_example") // CreateSystemComplianceRequest | The CreateSystemComplianceRequest parameter

// Create system-wide ZATCA compliance certificate
ZatcaAPI.createSystemCompliance(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, createSystemComplianceRequest: createSystemComplianceRequest) { (response, error) in
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
 **createSystemComplianceRequest** | [**CreateSystemComplianceRequest**](CreateSystemComplianceRequest.md) | The CreateSystemComplianceRequest parameter | 

### Return type

[**SystemComplianceResponse**](SystemComplianceResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createZatcaCertificateRenewal**
```swift
    open class func createZatcaCertificateRenewal(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, renewCertificateRequest: RenewCertificateRequest, completion: @escaping (_ data: OnboardResponse?, _ error: Error?) -> Void)
```

Renew a terminal's certificate

Renews an existing certificate before it expires using a new OTP from ZATCA portal. Creates a new certificate and marks the old one as expired.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let renewCertificateRequest = RenewCertificateRequest(terminalID: 123, otp: "otp_example") // RenewCertificateRequest | The RenewCertificateRequest parameter

// Renew a terminal's certificate
ZatcaAPI.createZatcaCertificateRenewal(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, renewCertificateRequest: renewCertificateRequest) { (response, error) in
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
 **renewCertificateRequest** | [**RenewCertificateRequest**](RenewCertificateRequest.md) | The RenewCertificateRequest parameter | 

### Return type

[**OnboardResponse**](OnboardResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createZatcaOnboarding**
```swift
    open class func createZatcaOnboarding(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, onboardRequest: OnboardRequest, completion: @escaping (_ data: OnboardResponse?, _ error: Error?) -> Void)
```

Onboard a terminal with ZATCA

Requests a production certificate from ZATCA using the system compliance certificate. System compliance must be complete (all 6 sample invoices passed) before onboarding.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let onboardRequest = OnboardRequest(terminalID: 123) // OnboardRequest | The OnboardRequest parameter

// Onboard a terminal with ZATCA
ZatcaAPI.createZatcaOnboarding(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, onboardRequest: onboardRequest) { (response, error) in
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
 **onboardRequest** | [**OnboardRequest**](OnboardRequest.md) | The OnboardRequest parameter | 

### Return type

[**OnboardResponse**](OnboardResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSampleInvoice**
```swift
    open class func getSampleInvoice(invoiceTypeID: String, documentTypeID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: SampleInvoiceDetailResponse?, _ error: Error?) -> Void)
```

Get sample invoice data for printing

Retrieves the complete sample invoice data including XML and JSON representations for a specific invoice type and document type. Used for printing and debugging compliance samples.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let invoiceTypeID = "invoiceTypeID_example" // String | Invoice type identifier (Simplified or Standard).
let documentTypeID = "documentTypeID_example" // String | Document type identifier (Invoice, CreditNote, or DebitNote).
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get sample invoice data for printing
ZatcaAPI.getSampleInvoice(invoiceTypeID: invoiceTypeID, documentTypeID: documentTypeID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **invoiceTypeID** | **String** | Invoice type identifier (Simplified or Standard). | 
 **documentTypeID** | **String** | Document type identifier (Invoice, CreditNote, or DebitNote). | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**SampleInvoiceDetailResponse**](SampleInvoiceDetailResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSystemComplianceStatus**
```swift
    open class func getSystemComplianceStatus(xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: SystemComplianceStatusResponse?, _ error: Error?) -> Void)
```

Get system compliance certificate status

Returns the current status of the system compliance certificate and sample invoice submissions.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get system compliance certificate status
ZatcaAPI.getSystemComplianceStatus(xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**SystemComplianceStatusResponse**](SystemComplianceStatusResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getZatcaCertificateHealth**
```swift
    open class func getZatcaCertificateHealth(xAccountID: Int, xLocationID: Int, page: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: CertificateHealthResponse?, _ error: Error?) -> Void)
```

Get ZATCA certificate health status

Retrieves health status of all active ZATCA certificates, showing which ones are expiring soon, in critical state, or already expired. Used for certificate lifecycle monitoring and proactive management.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let page = 987 // Int | Current page number (1-based). (optional)
let pageSize = 987 // Int | Number of items per page. (optional)

// Get ZATCA certificate health status
ZatcaAPI.getZatcaCertificateHealth(xAccountID: xAccountID, xLocationID: xLocationID, page: page, pageSize: pageSize) { (response, error) in
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
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **page** | **Int** | Current page number (1-based). | [optional] 
 **pageSize** | **Int** | Number of items per page. | [optional] 

### Return type

[**CertificateHealthResponse**](CertificateHealthResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getZatcaCertificateStatus**
```swift
    open class func getZatcaCertificateStatus(terminalID: Int64, xAccountID: Int, xLocationID: Int, page: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: CertificateStatusResponse?, _ error: Error?) -> Void)
```

Get certificate status for a terminal

Retrieves the active certificate and complete certificate history for a terminal.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let terminalID = 987 // Int64 | The unique identifier of the terminal
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let page = 987 // Int | Current page number (1-based). (optional)
let pageSize = 987 // Int | Number of items per page. (optional)

// Get certificate status for a terminal
ZatcaAPI.getZatcaCertificateStatus(terminalID: terminalID, xAccountID: xAccountID, xLocationID: xLocationID, page: page, pageSize: pageSize) { (response, error) in
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
 **terminalID** | **Int64** | The unique identifier of the terminal | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **page** | **Int** | Current page number (1-based). | [optional] 
 **pageSize** | **Int** | Number of items per page. | [optional] 

### Return type

[**CertificateStatusResponse**](CertificateStatusResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listZatcaCertificates**
```swift
    open class func listZatcaCertificates(terminalID: Int64, page: Int, pageSize: Int, xAccountID: Int, xLocationID: Int, status: String? = nil, certificateType: String? = nil, completion: @escaping (_ data: PagedResultOfCertificateInfo?, _ error: Error?) -> Void)
```

List all certificates for a terminal

Retrieves a paginated list of all certificates for a terminal with optional filtering by status and certificate type.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let terminalID = 987 // Int64 | The unique identifier of the terminal
let page = 987 // Int | Page number (default: 1).
let pageSize = 987 // Int | Page size (default: 10, max: 100).
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let status = "status_example" // String | Filter by certificate status (optional). (optional)
let certificateType = "certificateType_example" // String | Filter by certificate type (optional). (optional)

// List all certificates for a terminal
ZatcaAPI.listZatcaCertificates(terminalID: terminalID, page: page, pageSize: pageSize, xAccountID: xAccountID, xLocationID: xLocationID, status: status, certificateType: certificateType) { (response, error) in
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
 **terminalID** | **Int64** | The unique identifier of the terminal | 
 **page** | **Int** | Page number (default: 1). | 
 **pageSize** | **Int** | Page size (default: 10, max: 100). | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **status** | **String** | Filter by certificate status (optional). | [optional] 
 **certificateType** | **String** | Filter by certificate type (optional). | [optional] 

### Return type

[**PagedResultOfCertificateInfo**](PagedResultOfCertificateInfo.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

