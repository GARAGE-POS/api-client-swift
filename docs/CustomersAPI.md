# CustomersAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCustomer**](CustomersAPI.md#createcustomer) | **POST** /api/v1/customers | Create a new customer
[**deleteCustomer**](CustomersAPI.md#deletecustomer) | **DELETE** /api/v1/customers/{CustomerID} | Delete a customer (soft delete)
[**getCustomerById**](CustomersAPI.md#getcustomerbyid) | **GET** /api/v1/customers/{CustomerID} | Get a customer by ID with location context
[**getCustomers**](CustomersAPI.md#getcustomers) | **GET** /api/v1/customers | Get customers with advanced filtering and related data
[**updateCustomer**](CustomersAPI.md#updatecustomer) | **PUT** /api/v1/customers/{CustomerID} | Update an existing customer


# **createCustomer**
```swift
    open class func createCustomer(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, customerRequest: CustomerRequest, completion: @escaping (_ data: CustomerResponse?, _ error: Error?) -> Void)
```

Create a new customer

Creates a new customer in the system with comprehensive validation and automatic CustomerLocation association based on these acceptance criteria:

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let customerRequest = CustomerRequest(firstName: "firstName_example", lastName: "lastName_example", password: "password_example", email: "email_example", DOB: Date(), address: "address_example", gender: "gender_example", mobile: "mobile_example", imagePath: "imagePath_example", lastVisit: Date(), isEmail: true, isSMS: true, cityID: 123, countryID: 123, locationID: 123) // CustomerRequest | The CustomerRequest parameter

// Create a new customer
CustomersAPI.createCustomer(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, customerRequest: customerRequest) { (response, error) in
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
 **customerRequest** | [**CustomerRequest**](CustomerRequest.md) | The CustomerRequest parameter | 

### Return type

[**CustomerResponse**](CustomerResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCustomer**
```swift
    open class func deleteCustomer(customerID: Int64, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a customer (soft delete)

Performs a soft delete on a customer by setting their status to Deleted while preserving all data.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let customerID = 987 // Int64 | The unique identifier of the customer
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete a customer (soft delete)
CustomersAPI.deleteCustomer(customerID: customerID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **customerID** | **Int64** | The unique identifier of the customer | 
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

# **getCustomerById**
```swift
    open class func getCustomerById(customerID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: CustomerResponse?, _ error: Error?) -> Void)
```

Get a customer by ID with location context

Retrieves a specific customer by ID with location-based access control and related data.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let customerID = "customerID_example" // String | The unique identifier of the customer
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get a customer by ID with location context
CustomersAPI.getCustomerById(customerID: customerID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **customerID** | **String** | The unique identifier of the customer | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**CustomerResponse**](CustomerResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomers**
```swift
    open class func getCustomers(xAccountID: Int, xLocationID: Int, filters: String? = nil, page: Int? = nil, pageSize: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: PagedResultOfCustomerResponse?, _ error: Error?) -> Void)
```

Get customers with advanced filtering and related data

Retrieves customers with comprehensive filtering, pagination, and sorting, including related geographic and vehicle data.

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

// Get customers with advanced filtering and related data
CustomersAPI.getCustomers(xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, page: page, pageSize: pageSize, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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

[**PagedResultOfCustomerResponse**](PagedResultOfCustomerResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCustomer**
```swift
    open class func updateCustomer(customerID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, customerRequest: CustomerRequest, completion: @escaping (_ data: CustomerResponse?, _ error: Error?) -> Void)
```

Update an existing customer

Updates an existing customer with partial update support and comprehensive business validation based on these acceptance criteria:

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let customerID = "customerID_example" // String | The unique identifier of the customer
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let customerRequest = CustomerRequest(firstName: "firstName_example", lastName: "lastName_example", password: "password_example", email: "email_example", DOB: Date(), address: "address_example", gender: "gender_example", mobile: "mobile_example", imagePath: "imagePath_example", lastVisit: Date(), isEmail: true, isSMS: true, cityID: 123, countryID: 123, locationID: 123) // CustomerRequest | The CustomerRequest parameter

// Update an existing customer
CustomersAPI.updateCustomer(customerID: customerID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, customerRequest: customerRequest) { (response, error) in
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
 **customerID** | **String** | The unique identifier of the customer | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **customerRequest** | [**CustomerRequest**](CustomerRequest.md) | The CustomerRequest parameter | 

### Return type

[**CustomerResponse**](CustomerResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

