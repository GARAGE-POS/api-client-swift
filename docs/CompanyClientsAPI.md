# CompanyClientsAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCompanyClient**](CompanyClientsAPI.md#createcompanyclient) | **POST** /api/v1/company-clients | Create a new company client
[**createCustomerPayment**](CompanyClientsAPI.md#createcustomerpayment) | **POST** /api/v1/credit-customers/payments/record | Record a payment from a company client
[**createQuotation**](CompanyClientsAPI.md#createquotation) | **POST** /api/v1/quotations | Create a new quotation with line items
[**deleteCompanyClient**](CompanyClientsAPI.md#deletecompanyclient) | **DELETE** /api/v1/company-clients/{CompanyClientID} | Delete a company client (soft delete)
[**deleteQuotation**](CompanyClientsAPI.md#deletequotation) | **DELETE** /api/v1/quotations/{QuotationID} | Delete a quotation
[**getCompanyCars**](CompanyClientsAPI.md#getcompanycars) | **GET** /api/v1/company-clients/{CompanyClientID}/cars | Get company cars with full car details
[**getCompanyClientById**](CompanyClientsAPI.md#getcompanyclientbyid) | **GET** /api/v1/company-clients/{CompanyClientID} | Get a company client by ID
[**getCompanyClients**](CompanyClientsAPI.md#getcompanyclients) | **GET** /api/v1/company-clients | Get all company clients with filtering and pagination
[**getCompanyInvoices**](CompanyClientsAPI.md#getcompanyinvoices) | **GET** /api/v1/company-invoices | List company invoices
[**getCreditCustomerInvoices**](CompanyClientsAPI.md#getcreditcustomerinvoices) | **GET** /api/v1/credit-customers/{CompanyClientID}/invoices | Get unpaid credit invoices for a specific company client
[**getCreditCustomers**](CompanyClientsAPI.md#getcreditcustomers) | **GET** /api/v1/credit-customers | Get paginated list of credit customers with summary
[**getCustomerPayments**](CompanyClientsAPI.md#getcustomerpayments) | **GET** /api/v1/credit-customers/payments | Get list of customer payments
[**getCustomerStatement**](CompanyClientsAPI.md#getcustomerstatement) | **GET** /api/v1/credit-customers/{CompanyClientID}/statement | Get customer account statement
[**getQuotationById**](CompanyClientsAPI.md#getquotationbyid) | **GET** /api/v1/quotations/{QuotationID} | Get a quotation by ID
[**getQuotations**](CompanyClientsAPI.md#getquotations) | **GET** /api/v1/quotations | Get a paginated list of quotations
[**updateCompanyClient**](CompanyClientsAPI.md#updatecompanyclient) | **PUT** /api/v1/company-clients/{CompanyClientID} | Update an existing company client
[**updateQuotation**](CompanyClientsAPI.md#updatequotation) | **PUT** /api/v1/quotations/{QuotationID} | Update an existing quotation


# **createCompanyClient**
```swift
    open class func createCompanyClient(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, companyClientRequest: CompanyClientRequest, completion: @escaping (_ data: CompanyClientResponse?, _ error: Error?) -> Void)
```

Create a new company client

 Creates a new company client using the CompanyClient entity. CompanyClientID is ignored and auto-generated. CompanyCode is auto-generated if not provided (format: CC-{AccountID}-{Number}).  **Business Rules:** - Company Name is required (2-200 characters) - VAT Number is required for non-government clients and must be unique - Contact Phone must include country code (e.g., +966 or +971) - Email format validation when provided - Credit profile validations when IsCreditEnabled = true:   - CreditStatus is required   - PaymentTerms is required   - PaymentTermsDays is required   - CreditDueDate required when PaymentTerms = Custom   - CreditLimit must be >= OpeningBalance  **Headers:** - X-Account-ID: Required account identifier  **Authentication:** - Required: Yes - Permissions: CompanyClient_Create 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let companyClientRequest = CompanyClientRequest(companyCode: "companyCode_example", companyName: "companyName_example", companyNameAr: "companyNameAr_example", businessType: "businessType_example", cRNumber: "cRNumber_example", vATNumber: "vATNumber_example", cityID: 123, isGovernmentClient: true, carPolicy: CarPolicyType(), shortAddress: "shortAddress_example", buildingNumber: "buildingNumber_example", streetName: "streetName_example", secondaryNumber: "secondaryNumber_example", district: "district_example", postalCode: "postalCode_example", address1: "address1_example", address1Ar: "address1Ar_example", address2: "address2_example", address2Ar: "address2Ar_example", contactName: "contactName_example", contactPhone: "contactPhone_example", contactEmail: "contactEmail_example", isCreditEnabled: true, creditStatus: CreditStatus(), openingBalance: 123, creditLimit: 123, paymentTerms: PaymentTermsType(), paymentTermsDays: 123, creditDueDate: Date(), gracePeriodDays: 123, paymentStopPolicy: PaymentStopPolicy(), notes: "notes_example", internalFinanceNotes: "internalFinanceNotes_example", externalID: "externalID_example", statusID: StatusType(), carIDs: [123]) // CompanyClientRequest | The CompanyClientRequest parameter

// Create a new company client
CompanyClientsAPI.createCompanyClient(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, companyClientRequest: companyClientRequest) { (response, error) in
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
 **companyClientRequest** | [**CompanyClientRequest**](CompanyClientRequest.md) | The CompanyClientRequest parameter | 

### Return type

[**CompanyClientResponse**](CompanyClientResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCustomerPayment**
```swift
    open class func createCustomerPayment(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, recordCustomerPaymentRequest: RecordCustomerPaymentRequest, completion: @escaping (_ data: RecordCustomerPaymentResponse?, _ error: Error?) -> Void)
```

Record a payment from a company client

Records a payment received from a company client and allocates it against unpaid credit invoices.  Business Rules: - Total allocated amount must not exceed received amount - Allocation per invoice cannot exceed amount due - If isFullAmountReceived is true, payment is auto-distributed FIFO (oldest invoices first) - Excess amount is recorded as credit balance - Payment updates invoice balances and payment statuses - Supports file attachments for receipts/bank statements

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let recordCustomerPaymentRequest = RecordCustomerPaymentRequest(companyClientID: 123, paymentDate: Date(), receivedAmount: 123, isFullAmountReceived: true, paymentModeID: 123, transactionReferenceNumber: "transactionReferenceNumber_example", notes: "notes_example", attachment: "", invoices: [InvoiceAllocationDto(invoiceID: 123, invoiceNo: "invoiceNo_example", invoiceDate: Date(), invoiceAmount: 123, amountDue: 123, paymentReceivedDate: Date(), receivedAmount: 123)]) // RecordCustomerPaymentRequest | The RecordCustomerPaymentRequest parameter

// Record a payment from a company client
CompanyClientsAPI.createCustomerPayment(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, recordCustomerPaymentRequest: recordCustomerPaymentRequest) { (response, error) in
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
 **recordCustomerPaymentRequest** | [**RecordCustomerPaymentRequest**](RecordCustomerPaymentRequest.md) | The RecordCustomerPaymentRequest parameter | 

### Return type

[**RecordCustomerPaymentResponse**](RecordCustomerPaymentResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createQuotation**
```swift
    open class func createQuotation(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, quotationRequest: QuotationRequest, completion: @escaping (_ data: QuotationResponse?, _ error: Error?) -> Void)
```

Create a new quotation with line items

 Creates a new quotation using the Quotation entity with associated QuotationLineItem records. QuotationID is ignored and auto-generated.  **Headers:** - X-Account-ID: Required account identifier - X-Location-ID: Required location identifier  **Authentication:** - Required: Yes - Headers: X-Account-ID and X-Location-ID must be present 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let quotationRequest = QuotationRequest(quotationNumber: "quotationNumber_example", referenceNumber: "referenceNumber_example", companyClientID: 123, carIDs: [123], locationID: 123, date: Date(), dueDate: Date(), subTotal: 123, discount: 123, total: 123, taxAmount: 123, additionalCost: 123, status: QuotationStatus(), vatNumber: "vatNumber_example", billingAddress: "billingAddress_example", notes: "notes_example", paymentTerms: "paymentTerms_example", termsAndConditions: "termsAndConditions_example", attachments: ["attachments_example"], approvedByUserID: 123, approvedAt: Date(), auditedByUserID: 123, lineItems: [QuotationLineItemRequest(itemID: 123, packageID: 123, notes: "notes_example", quantity: 123, unitPrice: 123, discountAmount: 123, discountPercent: 123, taxPercent: 123, taxAmount: 123, grandTotal: 123, orderDiscountAllocation: 123, subtotal: 123, isInclusiveVAT: false)]) // QuotationRequest | The QuotationRequest parameter

// Create a new quotation with line items
CompanyClientsAPI.createQuotation(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, quotationRequest: quotationRequest) { (response, error) in
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
 **quotationRequest** | [**QuotationRequest**](QuotationRequest.md) | The QuotationRequest parameter | 

### Return type

[**QuotationResponse**](QuotationResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCompanyClient**
```swift
    open class func deleteCompanyClient(companyClientID: Int64, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a company client (soft delete)

 Performs a soft delete on a company client by setting StatusID to Deleted. Returns 404 if not found.  **Business Rules:** - Cannot delete if company has active cars - Cannot delete if company has existing invoices - Soft delete only (StatusID set to Deleted)  **Headers:** - X-Account-ID: Required account identifier  **Authentication:** - Required: Yes - Permissions: CompanyClient_Delete  **Scopes:** - company-clients:write 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let companyClientID = 987 // Int64 | The unique identifier of the CompanyClient
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete a company client (soft delete)
CompanyClientsAPI.deleteCompanyClient(companyClientID: companyClientID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **companyClientID** | **Int64** | The unique identifier of the CompanyClient | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteQuotation**
```swift
    open class func deleteQuotation(quotationID: Int64, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a quotation

 Soft deletes a quotation and all its line items by setting their status to Deleted.  **Headers:** - X-Account-ID: Required account identifier - X-Location-ID: Required location identifier  **Path Parameters:** - QuotationID: The ID of the quotation to delete  **Authentication:** - Required: Yes 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let quotationID = 987 // Int64 | The unique identifier of the Quotation
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete a quotation
CompanyClientsAPI.deleteQuotation(quotationID: quotationID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **quotationID** | **Int64** | The unique identifier of the Quotation | 
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

# **getCompanyCars**
```swift
    open class func getCompanyCars(companyClientID: Int64, page: Int, pageSize: Int, sortDirection: String, xAccountID: Int, xLocationID: Int, filters: String? = nil, sortBy: String? = nil, completion: @escaping (_ data: PagedResultOfCompanyCarResponse?, _ error: Error?) -> Void)
```

Get company cars with full car details

 Retrieves a paginated list of cars associated with a specific company client. Returns full car details including make, model, customer, and all car properties.  **Query Parameters:** - CompanyClientID: From route parameter (required) - Page: Page number (default: 1) - PageSize: Items per page (default: 10, max: 100) - SortBy: Field to sort by (default: CreatedAt) - SortDirection: Sort direction - asc/desc (default: desc) - Filters: Dynamic filters in format field:operator:value  **Headers:** - X-Account-ID: Required account identifier  **Authentication:** - Required: Yes - Permissions: CompanyClient_GetCars  **Scopes:** - company-clients:read  **Example Request:** ``` GET /api/v1/company-clients/123/cars?Page=1&PageSize=20&SortBy=CreatedAt&SortDirection=desc ```  **Example Response:** ```json {   \"page\": 1,   \"pageSize\": 20,   \"totalCount\": 5,   \"data\": [     {       \"companyCarID\": 1,       \"companyClientID\": 123,       \"carID\": 456,       \"notes\": \"Primary fleet vehicle\",       \"createdAt\": \"2024-01-15T10:30:00Z\",       \"updatedAt\": \"2024-01-15T10:30:00Z\",       \"car\": {         \"carID\": 456,         \"description\": \"Toyota Camry 2023\",         \"vinNo\": \"1HGBH41JXMN109186\",         \"customerID\": null,         \"makeID\": 10,         \"makeName\": \"Toyota\",         \"makeNameAr\": \"تويوتا\",         \"modelID\": 50,         \"modelName\": \"Camry\",         \"modelNameAr\": \"كامري\",         \"year\": 2023,         \"color\": \"Silver\",         \"registrationNo\": \"ABC123\",         \"registrationNoArabic\": \"أ ب ج ١٢٣\",         \"odometer\": 15000,         \"fuelType\": \"Gasoline\",         \"oilChangeIntervalKm\": 5000,         \"imagePath\": \"/images/cars/456.jpg\",         \"carType\": 1,         \"carPlateType\": 1,         \"createdAt\": \"2024-01-10T08:00:00Z\",         \"updatedAt\": \"2024-01-14T14:30:00Z\",         \"statusID\": 1       }     }   ] } ``` 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let companyClientID = 987 // Int64 | Company Client ID to get cars for
let page = 987 // Int | Page number for pagination (starts from 1) (default to 1)
let pageSize = 987 // Int | Number of items per page (1-100) (default to 10)
let sortDirection = "sortDirection_example" // String | Sort direction: \"asc\" or \"desc\" (default to "asc")
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let filters = "filters_example" // String | JSON array of filter rules. Example: [{\"Field\":\"Name\",\"Operator\":\"contains\",\"Values\":[\"SearchTerm\"]}] Available operators: eq, neq, gt, lt, gte, lte, contains, between (optional) (default to "[]")
let sortBy = "sortBy_example" // String | Field to sort by (optional)

// Get company cars with full car details
CompanyClientsAPI.getCompanyCars(companyClientID: companyClientID, page: page, pageSize: pageSize, sortDirection: sortDirection, xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, sortBy: sortBy) { (response, error) in
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
 **companyClientID** | **Int64** | Company Client ID to get cars for | 
 **page** | **Int** | Page number for pagination (starts from 1) | [default to 1]
 **pageSize** | **Int** | Number of items per page (1-100) | [default to 10]
 **sortDirection** | **String** | Sort direction: \&quot;asc\&quot; or \&quot;desc\&quot; | [default to &quot;asc&quot;]
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **filters** | **String** | JSON array of filter rules. Example: [{\&quot;Field\&quot;:\&quot;Name\&quot;,\&quot;Operator\&quot;:\&quot;contains\&quot;,\&quot;Values\&quot;:[\&quot;SearchTerm\&quot;]}] Available operators: eq, neq, gt, lt, gte, lte, contains, between | [optional] [default to &quot;[]&quot;]
 **sortBy** | **String** | Field to sort by | [optional] 

### Return type

[**PagedResultOfCompanyCarResponse**](PagedResultOfCompanyCarResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCompanyClientById**
```swift
    open class func getCompanyClientById(companyClientID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: CompanyClientResponse?, _ error: Error?) -> Void)
```

Get a company client by ID

 Retrieves a single company client by its ID. Returns 404 if not found or if the client is deleted.  **Headers:** - X-Account-ID: Required account identifier  **Authentication:** - Required: Yes - Permissions: CompanyClient_Get  **Scopes:** - company-clients:read 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let companyClientID = "companyClientID_example" // String | The unique identifier of the CompanyClient
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get a company client by ID
CompanyClientsAPI.getCompanyClientById(companyClientID: companyClientID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **companyClientID** | **String** | The unique identifier of the CompanyClient | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**CompanyClientResponse**](CompanyClientResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCompanyClients**
```swift
    open class func getCompanyClients(page: Int, pageSize: Int, sortDirection: String, xAccountID: Int, xLocationID: Int, businessType: String? = nil, isCreditEnabled: Bool? = nil, isGovernmentClient: Bool? = nil, filters: String? = nil, sortBy: String? = nil, completion: @escaping (_ data: PagedResultOfCompanyClientResponse?, _ error: Error?) -> Void)
```

Get all company clients with filtering and pagination

 Retrieves a paginated list of company clients with optional filtering and sorting.  **Query Parameters:** - Page: Page number (default: 1) - PageSize: Items per page (max: 100) - SortBy: Field to sort by - SortDirection: 'asc' or 'desc' - BusinessType: Filter by business type (Fleet, Insurance, Corporate, Government, Other) - Status: Filter by status (Active, Inactive) - IsCreditEnabled: Filter by credit status (true/false) - IsGovernmentClient: Filter by government client flag (true/false) - SearchTerm: Search in company name or code - Filters: JSON array for advanced filtering  **Advanced Filtering Example:** ```json [   {\"Field\":\"CompanyName\",\"Operator\":\"contains\",\"Values\":[\"Trading\"]},   {\"Field\":\"CreditLimit\",\"Operator\":\"gte\",\"Values\":[\"10000\"]} ] ```  **Available Operators:** eq, neq, gt, lt, gte, lte, contains, between  **Headers:** - X-Account-ID: Required account identifier  **Authentication:** - Required: Yes - Permissions: CompanyClient_GetList 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let page = 987 // Int | Page number for pagination (starts from 1) (default to 1)
let pageSize = 987 // Int | Number of items per page (1-100) (default to 10)
let sortDirection = "sortDirection_example" // String | Sort direction: \"asc\" or \"desc\" (default to "asc")
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let businessType = "businessType_example" // String | Filter by business type (optional)
let isCreditEnabled = true // Bool | Filter by credit enabled status (optional)
let isGovernmentClient = true // Bool | Filter by government client (optional)
let filters = "filters_example" // String | JSON array of filter rules. Example: [{\"Field\":\"Name\",\"Operator\":\"contains\",\"Values\":[\"SearchTerm\"]}] Available operators: eq, neq, gt, lt, gte, lte, contains, between (optional) (default to "[]")
let sortBy = "sortBy_example" // String | Field to sort by (optional)

// Get all company clients with filtering and pagination
CompanyClientsAPI.getCompanyClients(page: page, pageSize: pageSize, sortDirection: sortDirection, xAccountID: xAccountID, xLocationID: xLocationID, businessType: businessType, isCreditEnabled: isCreditEnabled, isGovernmentClient: isGovernmentClient, filters: filters, sortBy: sortBy) { (response, error) in
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
 **page** | **Int** | Page number for pagination (starts from 1) | [default to 1]
 **pageSize** | **Int** | Number of items per page (1-100) | [default to 10]
 **sortDirection** | **String** | Sort direction: \&quot;asc\&quot; or \&quot;desc\&quot; | [default to &quot;asc&quot;]
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **businessType** | **String** | Filter by business type | [optional] 
 **isCreditEnabled** | **Bool** | Filter by credit enabled status | [optional] 
 **isGovernmentClient** | **Bool** | Filter by government client | [optional] 
 **filters** | **String** | JSON array of filter rules. Example: [{\&quot;Field\&quot;:\&quot;Name\&quot;,\&quot;Operator\&quot;:\&quot;contains\&quot;,\&quot;Values\&quot;:[\&quot;SearchTerm\&quot;]}] Available operators: eq, neq, gt, lt, gte, lte, contains, between | [optional] [default to &quot;[]&quot;]
 **sortBy** | **String** | Field to sort by | [optional] 

### Return type

[**PagedResultOfCompanyClientResponse**](PagedResultOfCompanyClientResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCompanyInvoices**
```swift
    open class func getCompanyInvoices(page: Int, pageSize: Int, sortDirection: String, xAccountID: Int, xLocationID: Int, filters: String? = nil, sortBy: String? = nil, completion: @escaping (_ data: PagedResultOfCompanyInvoiceListResponse?, _ error: Error?) -> Void)
```

List company invoices

 Retrieves a paginated list of company invoices from both POS and Admin systems.  **Features:** - Lists all orders with credit payment status - Shows invoice source (POS or Admin) - Includes client, car, totals, and payment status - Supports filtering and sorting - Account and location scoped  **Business Rules:** - Only orders with credit payment mode are shown - Orders are filtered by account and optionally by location - Results support dynamic filtering and sorting  **Use Cases:** - Finance team viewing all outstanding invoices - Tracking credit orders from enterprise clients - Monitoring payment status and due dates 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let page = 987 // Int | Page number for pagination (starts from 1) (default to 1)
let pageSize = 987 // Int | Number of items per page (1-100) (default to 10)
let sortDirection = "sortDirection_example" // String | Sort direction: \"asc\" or \"desc\" (default to "asc")
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let filters = "filters_example" // String | JSON array of filter rules. Example: [{\"Field\":\"Name\",\"Operator\":\"contains\",\"Values\":[\"SearchTerm\"]}] Available operators: eq, neq, gt, lt, gte, lte, contains, between (optional) (default to "[]")
let sortBy = "sortBy_example" // String | Field to sort by (optional)

// List company invoices
CompanyClientsAPI.getCompanyInvoices(page: page, pageSize: pageSize, sortDirection: sortDirection, xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, sortBy: sortBy) { (response, error) in
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
 **page** | **Int** | Page number for pagination (starts from 1) | [default to 1]
 **pageSize** | **Int** | Number of items per page (1-100) | [default to 10]
 **sortDirection** | **String** | Sort direction: \&quot;asc\&quot; or \&quot;desc\&quot; | [default to &quot;asc&quot;]
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **filters** | **String** | JSON array of filter rules. Example: [{\&quot;Field\&quot;:\&quot;Name\&quot;,\&quot;Operator\&quot;:\&quot;contains\&quot;,\&quot;Values\&quot;:[\&quot;SearchTerm\&quot;]}] Available operators: eq, neq, gt, lt, gte, lte, contains, between | [optional] [default to &quot;[]&quot;]
 **sortBy** | **String** | Field to sort by | [optional] 

### Return type

[**PagedResultOfCompanyInvoiceListResponse**](PagedResultOfCompanyInvoiceListResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCreditCustomerInvoices**
```swift
    open class func getCreditCustomerInvoices(companyClientID: Int64, page: Int, pageSize: Int, sortDirection: String, xAccountID: Int, xLocationID: Int, filters: String? = nil, sortBy: String? = nil, completion: @escaping (_ data: PagedResultOfCompanyInvoiceListResponse?, _ error: Error?) -> Void)
```

Get unpaid credit invoices for a specific company client

Retrieves a paginated list of unpaid orders/invoices that use credit payment mode for the specified company client. Supports filtering, sorting, and pagination.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let companyClientID = 987 // Int64 | The unique identifier of the company client
let page = 987 // Int | Page number for pagination (starts from 1) (default to 1)
let pageSize = 987 // Int | Number of items per page (1-100) (default to 10)
let sortDirection = "sortDirection_example" // String | Sort direction: \"asc\" or \"desc\" (default to "asc")
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let filters = "filters_example" // String | JSON array of filter rules. Example: [{\"Field\":\"Name\",\"Operator\":\"contains\",\"Values\":[\"SearchTerm\"]}] Available operators: eq, neq, gt, lt, gte, lte, contains, between (optional) (default to "[]")
let sortBy = "sortBy_example" // String | Field to sort by (optional)

// Get unpaid credit invoices for a specific company client
CompanyClientsAPI.getCreditCustomerInvoices(companyClientID: companyClientID, page: page, pageSize: pageSize, sortDirection: sortDirection, xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, sortBy: sortBy) { (response, error) in
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
 **companyClientID** | **Int64** | The unique identifier of the company client | 
 **page** | **Int** | Page number for pagination (starts from 1) | [default to 1]
 **pageSize** | **Int** | Number of items per page (1-100) | [default to 10]
 **sortDirection** | **String** | Sort direction: \&quot;asc\&quot; or \&quot;desc\&quot; | [default to &quot;asc&quot;]
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **filters** | **String** | JSON array of filter rules. Example: [{\&quot;Field\&quot;:\&quot;Name\&quot;,\&quot;Operator\&quot;:\&quot;contains\&quot;,\&quot;Values\&quot;:[\&quot;SearchTerm\&quot;]}] Available operators: eq, neq, gt, lt, gte, lte, contains, between | [optional] [default to &quot;[]&quot;]
 **sortBy** | **String** | Field to sort by | [optional] 

### Return type

[**PagedResultOfCompanyInvoiceListResponse**](PagedResultOfCompanyInvoiceListResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCreditCustomers**
```swift
    open class func getCreditCustomers(page: Int, pageSize: Int, sortDirection: String, xAccountID: Int, xLocationID: Int, filters: String? = nil, sortBy: String? = nil, completion: @escaping (_ data: CreditCustomersWithSummaryResponse?, _ error: Error?) -> Void)
```

Get paginated list of credit customers with summary

Retrieves a paginated list of company clients who have credit enabled, along with a summary containing total balance due, current balance, and other metrics. Supports filtering, sorting, and pagination.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let page = 987 // Int | Page number for pagination (starts from 1) (default to 1)
let pageSize = 987 // Int | Number of items per page (1-100) (default to 10)
let sortDirection = "sortDirection_example" // String | Sort direction: \"asc\" or \"desc\" (default to "asc")
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let filters = "filters_example" // String | JSON array of filter rules. Example: [{\"Field\":\"Name\",\"Operator\":\"contains\",\"Values\":[\"SearchTerm\"]}] Available operators: eq, neq, gt, lt, gte, lte, contains, between (optional) (default to "[]")
let sortBy = "sortBy_example" // String | Field to sort by (optional)

// Get paginated list of credit customers with summary
CompanyClientsAPI.getCreditCustomers(page: page, pageSize: pageSize, sortDirection: sortDirection, xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, sortBy: sortBy) { (response, error) in
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
 **page** | **Int** | Page number for pagination (starts from 1) | [default to 1]
 **pageSize** | **Int** | Number of items per page (1-100) | [default to 10]
 **sortDirection** | **String** | Sort direction: \&quot;asc\&quot; or \&quot;desc\&quot; | [default to &quot;asc&quot;]
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **filters** | **String** | JSON array of filter rules. Example: [{\&quot;Field\&quot;:\&quot;Name\&quot;,\&quot;Operator\&quot;:\&quot;contains\&quot;,\&quot;Values\&quot;:[\&quot;SearchTerm\&quot;]}] Available operators: eq, neq, gt, lt, gte, lte, contains, between | [optional] [default to &quot;[]&quot;]
 **sortBy** | **String** | Field to sort by | [optional] 

### Return type

[**CreditCustomersWithSummaryResponse**](CreditCustomersWithSummaryResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerPayments**
```swift
    open class func getCustomerPayments(page: Int, pageSize: Int, sortDirection: String, xAccountID: Int, xLocationID: Int, companyClientID: Int64? = nil, fromDate: Date? = nil, toDate: Date? = nil, filters: String? = nil, sortBy: String? = nil, completion: @escaping (_ data: PagedResultOfCustomerPaymentListResponse?, _ error: Error?) -> Void)
```

Get list of customer payments

Retrieves a paginated list of payments made by company clients. Supports filtering by company client, date range, and includes payment allocation information. Supports dynamic filtering, sorting, and pagination.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let page = 987 // Int | Page number for pagination (starts from 1) (default to 1)
let pageSize = 987 // Int | Number of items per page (1-100) (default to 10)
let sortDirection = "sortDirection_example" // String | Sort direction: 'asc' or 'desc' (default: desc) (default to "asc")
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let companyClientID = 987 // Int64 | Optional: Filter by specific company client ID (optional)
let fromDate = Date() // Date | Optional: Filter payments from this date onwards (optional)
let toDate = Date() // Date | Optional: Filter payments up to this date (optional)
let filters = "filters_example" // String | JSON array of filter rules. Example: [{\"Field\":\"Mode\",\"Operator\":\"contains\",\"Values\":[\"Bank\"]}] (optional) (default to "[]")
let sortBy = "sortBy_example" // String | Field to sort by (default: PaymentDate) (optional)

// Get list of customer payments
CompanyClientsAPI.getCustomerPayments(page: page, pageSize: pageSize, sortDirection: sortDirection, xAccountID: xAccountID, xLocationID: xLocationID, companyClientID: companyClientID, fromDate: fromDate, toDate: toDate, filters: filters, sortBy: sortBy) { (response, error) in
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
 **page** | **Int** | Page number for pagination (starts from 1) | [default to 1]
 **pageSize** | **Int** | Number of items per page (1-100) | [default to 10]
 **sortDirection** | **String** | Sort direction: &#39;asc&#39; or &#39;desc&#39; (default: desc) | [default to &quot;asc&quot;]
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **companyClientID** | **Int64** | Optional: Filter by specific company client ID | [optional] 
 **fromDate** | **Date** | Optional: Filter payments from this date onwards | [optional] 
 **toDate** | **Date** | Optional: Filter payments up to this date | [optional] 
 **filters** | **String** | JSON array of filter rules. Example: [{\&quot;Field\&quot;:\&quot;Mode\&quot;,\&quot;Operator\&quot;:\&quot;contains\&quot;,\&quot;Values\&quot;:[\&quot;Bank\&quot;]}] | [optional] [default to &quot;[]&quot;]
 **sortBy** | **String** | Field to sort by (default: PaymentDate) | [optional] 

### Return type

[**PagedResultOfCustomerPaymentListResponse**](PagedResultOfCustomerPaymentListResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerStatement**
```swift
    open class func getCustomerStatement(companyClientID: Int64, page: Int, pageSize: Int, sortDirection: String, xAccountID: Int, xLocationID: Int, fromDate: Date? = nil, toDate: Date? = nil, filters: String? = nil, sortBy: String? = nil, completion: @escaping (_ data: CustomerStatementResponse?, _ error: Error?) -> Void)
```

Get customer account statement

Retrieves a detailed statement of account for a company client showing all debit (invoices) and credit (payments) transactions within a specified date range. Displays running balance and opening/closing balances.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let companyClientID = 987 // Int64 | The unique identifier of the company client
let page = 987 // Int | Page number for pagination (starts from 1) (default to 1)
let pageSize = 987 // Int | Number of items per page (1-100) (default to 10)
let sortDirection = "sortDirection_example" // String | Sort direction: \"asc\" or \"desc\" (default to "asc")
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let fromDate = Date() // Date | Start date for date range filter (optional)
let toDate = Date() // Date | End date for date range filter (optional)
let filters = "filters_example" // String | JSON array of filter rules. Example: [{\"Field\":\"Name\",\"Operator\":\"contains\",\"Values\":[\"SearchTerm\"]}] Available operators: eq, neq, gt, lt, gte, lte, contains, between (optional) (default to "[]")
let sortBy = "sortBy_example" // String | Field to sort by (optional)

// Get customer account statement
CompanyClientsAPI.getCustomerStatement(companyClientID: companyClientID, page: page, pageSize: pageSize, sortDirection: sortDirection, xAccountID: xAccountID, xLocationID: xLocationID, fromDate: fromDate, toDate: toDate, filters: filters, sortBy: sortBy) { (response, error) in
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
 **companyClientID** | **Int64** | The unique identifier of the company client | 
 **page** | **Int** | Page number for pagination (starts from 1) | [default to 1]
 **pageSize** | **Int** | Number of items per page (1-100) | [default to 10]
 **sortDirection** | **String** | Sort direction: \&quot;asc\&quot; or \&quot;desc\&quot; | [default to &quot;asc&quot;]
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **fromDate** | **Date** | Start date for date range filter | [optional] 
 **toDate** | **Date** | End date for date range filter | [optional] 
 **filters** | **String** | JSON array of filter rules. Example: [{\&quot;Field\&quot;:\&quot;Name\&quot;,\&quot;Operator\&quot;:\&quot;contains\&quot;,\&quot;Values\&quot;:[\&quot;SearchTerm\&quot;]}] Available operators: eq, neq, gt, lt, gte, lte, contains, between | [optional] [default to &quot;[]&quot;]
 **sortBy** | **String** | Field to sort by | [optional] 

### Return type

[**CustomerStatementResponse**](CustomerStatementResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQuotationById**
```swift
    open class func getQuotationById(quotationID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: QuotationResponse?, _ error: Error?) -> Void)
```

Get a quotation by ID

 Retrieves a single quotation by its ID, including all line items and related data.  **Headers:** - X-Account-ID: Required account identifier - X-Location-ID: Required location identifier  **Path Parameters:** - QuotationID: The ID of the quotation to retrieve  **Authentication:** - Required: Yes 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let quotationID = "quotationID_example" // String | The unique identifier of the Quotation
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get a quotation by ID
CompanyClientsAPI.getQuotationById(quotationID: quotationID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **quotationID** | **String** | The unique identifier of the Quotation | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**QuotationResponse**](QuotationResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQuotations**
```swift
    open class func getQuotations(xAccountID: Int, xLocationID: Int, filters: String? = nil, page: Int? = nil, pageSize: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: PagedResultOfQuotationResponse?, _ error: Error?) -> Void)
```

Get a paginated list of quotations

 Retrieves a paginated list of quotations for the authenticated account with optional filtering and sorting.  **Headers:** - X-Account-ID: Required account identifier - X-Location-ID: Required location identifier  **Query Parameters:** - Page: Page number (default: 1) - PageSize: Items per page (default: 10, max: 100) - SortBy: Field to sort by (default: Date) - SortDirection: asc or desc (default: desc) - Filters: Dynamic filters (optional)  **Authentication:** - Required: Yes 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let filters = "filters_example" // String | The Filters query parameter (optional)
let page = 987 // Int | Page number for pagination (1-based) (optional)
let pageSize = 987 // Int | Number of items per page (optional)
let sortBy = "sortBy_example" // String | Field name to sort by (optional)
let sortDirection = "sortDirection_example" // String | The SortDirection query parameter (optional)

// Get a paginated list of quotations
CompanyClientsAPI.getQuotations(xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, page: page, pageSize: pageSize, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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
 **filters** | **String** | The Filters query parameter | [optional] 
 **page** | **Int** | Page number for pagination (1-based) | [optional] 
 **pageSize** | **Int** | Number of items per page | [optional] 
 **sortBy** | **String** | Field name to sort by | [optional] 
 **sortDirection** | **String** | The SortDirection query parameter | [optional] 

### Return type

[**PagedResultOfQuotationResponse**](PagedResultOfQuotationResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCompanyClient**
```swift
    open class func updateCompanyClient(companyClientID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, companyClientRequest: CompanyClientRequest, completion: @escaping (_ data: CompanyClientResponse?, _ error: Error?) -> Void)
```

Update an existing company client

 Updates an existing company client. Returns 404 if not found or deleted.  **Business Rules:** - Cannot change VAT number if company has existing invoices - All validation rules from creation apply - CompanyCode cannot be changed once set - OutstandingBalance is calculated and cannot be updated directly  **Headers:** - X-Account-ID: Required account identifier  **Authentication:** - Required: Yes - Permissions: CompanyClient_Update 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let companyClientID = "companyClientID_example" // String | The unique identifier of the CompanyClient
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let companyClientRequest = CompanyClientRequest(companyCode: "companyCode_example", companyName: "companyName_example", companyNameAr: "companyNameAr_example", businessType: "businessType_example", cRNumber: "cRNumber_example", vATNumber: "vATNumber_example", cityID: 123, isGovernmentClient: true, carPolicy: CarPolicyType(), shortAddress: "shortAddress_example", buildingNumber: "buildingNumber_example", streetName: "streetName_example", secondaryNumber: "secondaryNumber_example", district: "district_example", postalCode: "postalCode_example", address1: "address1_example", address1Ar: "address1Ar_example", address2: "address2_example", address2Ar: "address2Ar_example", contactName: "contactName_example", contactPhone: "contactPhone_example", contactEmail: "contactEmail_example", isCreditEnabled: true, creditStatus: CreditStatus(), openingBalance: 123, creditLimit: 123, paymentTerms: PaymentTermsType(), paymentTermsDays: 123, creditDueDate: Date(), gracePeriodDays: 123, paymentStopPolicy: PaymentStopPolicy(), notes: "notes_example", internalFinanceNotes: "internalFinanceNotes_example", externalID: "externalID_example", statusID: StatusType(), carIDs: [123]) // CompanyClientRequest | The CompanyClientRequest parameter

// Update an existing company client
CompanyClientsAPI.updateCompanyClient(companyClientID: companyClientID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, companyClientRequest: companyClientRequest) { (response, error) in
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
 **companyClientID** | **String** | The unique identifier of the CompanyClient | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **companyClientRequest** | [**CompanyClientRequest**](CompanyClientRequest.md) | The CompanyClientRequest parameter | 

### Return type

[**CompanyClientResponse**](CompanyClientResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateQuotation**
```swift
    open class func updateQuotation(quotationID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, quotationRequest: QuotationRequest, completion: @escaping (_ data: QuotationResponse?, _ error: Error?) -> Void)
```

Update an existing quotation

 Updates an existing quotation with new data, including line items.  **Headers:** - X-Account-ID: Required account identifier - X-Location-ID: Required location identifier  **Path Parameters:** - QuotationID: The ID of the quotation to update  **Authentication:** - Required: Yes 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let quotationID = "quotationID_example" // String | The unique identifier of the Quotation
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let quotationRequest = QuotationRequest(quotationNumber: "quotationNumber_example", referenceNumber: "referenceNumber_example", companyClientID: 123, carIDs: [123], locationID: 123, date: Date(), dueDate: Date(), subTotal: 123, discount: 123, total: 123, taxAmount: 123, additionalCost: 123, status: QuotationStatus(), vatNumber: "vatNumber_example", billingAddress: "billingAddress_example", notes: "notes_example", paymentTerms: "paymentTerms_example", termsAndConditions: "termsAndConditions_example", attachments: ["attachments_example"], approvedByUserID: 123, approvedAt: Date(), auditedByUserID: 123, lineItems: [QuotationLineItemRequest(itemID: 123, packageID: 123, notes: "notes_example", quantity: 123, unitPrice: 123, discountAmount: 123, discountPercent: 123, taxPercent: 123, taxAmount: 123, grandTotal: 123, orderDiscountAllocation: 123, subtotal: 123, isInclusiveVAT: false)]) // QuotationRequest | The QuotationRequest parameter

// Update an existing quotation
CompanyClientsAPI.updateQuotation(quotationID: quotationID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, quotationRequest: quotationRequest) { (response, error) in
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
 **quotationID** | **String** | The unique identifier of the Quotation | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **quotationRequest** | [**QuotationRequest**](QuotationRequest.md) | The QuotationRequest parameter | 

### Return type

[**QuotationResponse**](QuotationResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

