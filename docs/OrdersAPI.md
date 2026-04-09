# OrdersAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createOrder**](OrdersAPI.md#createorder) | **POST** /api/v1/orders | Create a new order
[**createOrderPayment**](OrdersAPI.md#createorderpayment) | **POST** /api/v1/orders/{OrderID}/payment | Create a payment for an existing order
[**getOrderById**](OrdersAPI.md#getorderbyid) | **GET** /api/v1/orders/{OrderID} | Get a single order by ID
[**getOrderNoteByOrderId**](OrdersAPI.md#getordernotebyorderid) | **GET** /api/v1/orders/{OrderID}/order-notes | Get order notes by Order ID
[**getOrders**](OrdersAPI.md#getorders) | **GET** /api/v1/orders/search | Search and filter orders
[**getRefundHistory**](OrdersAPI.md#getrefundhistory) | **GET** /api/v1/orders/{OrderID}/refunds | Get refund history for an order
[**patchOrder**](OrdersAPI.md#patchorder) | **PATCH** /api/v1/orders/{OrderID} | Partially update an order
[**processRefund**](OrdersAPI.md#processrefund) | **POST** /api/v1/orders/{OrderID}/refund | Process a refund
[**processZatcaSubmission**](OrdersAPI.md#processzatcasubmission) | **POST** /api/v1/orders/{OrderID}/zatca/submit | Submit order invoice to Zatca
[**updateOrder**](OrdersAPI.md#updateorder) | **PUT** /api/v1/orders/{OrderID} | Update an existing order


# **createOrder**
```swift
    open class func createOrder(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, orderRequest: OrderRequest, completion: @escaping (_ data: OrderResponse?, _ error: Error?) -> Void)
```

Create a new order

Creates a new order using the Order entity directly with built-in validation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let orderRequest = OrderRequest(sessionID: 123, carID: 123, customerID: 123, bayID: 123, companyClientID: 123, orderType: OrderType(), orderTakerID: 123, locationID: 123, discountID: 123, discountCode: "discountCode_example", lastServiceStatusID: ServiceStatusType(), lineItems: [LineItemRequest(lineItemID: 123, itemID: 123, packageID: 123, notes: "notes_example", quantity: 123, unitPrice: 123, unitCost: 123, taxPercent: 123, isInclusiveVAT: false, taxCategoryCode: "taxCategoryCode_example", taxExemptionReasonCode: "taxExemptionReasonCode_example", taxExemptionReason: "taxExemptionReason_example", discountID: 123, discountPercent: 123, discountAmount: 123, grandTotal: 123, lineItemStatus: nil)], orderNotes: [PatchOrderNoteRequest(orderID: 123, comment: "comment_example", notesStatus: OrderNoteStatus(), signaturePath: "signaturePath_example", noteImageJSON: ["noteImageJSON_example"])], technicians: [TechnicianRequest(technicianID: 123)], subtotal: 123, grandTotal: 123, additionalCharges: 123, discountPercent: 123, discountAmount: 123) // OrderRequest | The OrderRequest parameter

// Create a new order
OrdersAPI.createOrder(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, orderRequest: orderRequest) { (response, error) in
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
 **orderRequest** | [**OrderRequest**](OrderRequest.md) | The OrderRequest parameter | 

### Return type

[**OrderResponse**](OrderResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOrderPayment**
```swift
    open class func createOrderPayment(orderID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, createOrderPaymentRequest: CreateOrderPaymentRequest, completion: @escaping (_ data: OrderResponse?, _ error: Error?) -> Void)
```

Create a payment for an existing order

Creates a new payment for an order with validation and business logic handling.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let orderID = "orderID_example" // String | The unique identifier of the order
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let createOrderPaymentRequest = CreateOrderPaymentRequest(payment: [PaymentRequest(notes: "notes_example", paymentModeID: 123, amountPaid: 123, externalReferenceNumber: "externalReferenceNumber_example")], sessionID: 123) // CreateOrderPaymentRequest | The CreateOrderPaymentRequest parameter

// Create a payment for an existing order
OrdersAPI.createOrderPayment(orderID: orderID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, createOrderPaymentRequest: createOrderPaymentRequest) { (response, error) in
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
 **orderID** | **String** | The unique identifier of the order | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **createOrderPaymentRequest** | [**CreateOrderPaymentRequest**](CreateOrderPaymentRequest.md) | The CreateOrderPaymentRequest parameter | 

### Return type

[**OrderResponse**](OrderResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderById**
```swift
    open class func getOrderById(orderID: Int64, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: OrderResponse?, _ error: Error?) -> Void)
```

Get a single order by ID

Retrieves a single order by its OrderID, including related entities (LineItems, OrderHistory, Payment).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let orderID = 987 // Int64 | The unique identifier of the order
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get a single order by ID
OrdersAPI.getOrderById(orderID: orderID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **orderID** | **Int64** | The unique identifier of the order | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**OrderResponse**](OrderResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderNoteByOrderId**
```swift
    open class func getOrderNoteByOrderId(orderID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: [OrderNoteResponse]?, _ error: Error?) -> Void)
```

Get order notes by Order ID

Returns all order notes for a specific order

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let orderID = "orderID_example" // String | The unique identifier of the order
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get order notes by Order ID
OrdersAPI.getOrderNoteByOrderId(orderID: orderID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **orderID** | **String** | The unique identifier of the order | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**[OrderNoteResponse]**](OrderNoteResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrders**
```swift
    open class func getOrders(xAccountID: Int, xLocationID: Int, filters: String? = nil, page: Int? = nil, pageSize: Int? = nil, sortBy: String? = nil, sortDirection: String? = nil, completion: @escaping (_ data: PagedResultOfOrderListResponse?, _ error: Error?) -> Void)
```

Search and filter orders

 Retrieves orders with comprehensive filtering, pagination, and sorting.  **Key Features:** - Advanced dynamic filtering system using FilterRule objects - Flexible pagination with configurable page sizes (max 100) - Multi-field sorting with ascending/descending options - Location-specific filtering for security  **Common Filtering Scenarios:** - **Order Info**: Find orders by OrderID, OrderNumber, or CustomerID - **Date Range**: Filter by OrderDate ranges - **Status**: Filter by order status - **Payment**: Filter by payment method or payment status - **Amounts**: Filter by order total amounts  **Query Parameters:** - **page**: Page number (default: 1) - **pageSize**: Items per page (default: 10, max: 100) - **sortBy**: Field to sort by (default: OrderID) - **sortDirection**: 'asc' or 'desc' (default: desc) - **filters**: JSON array of FilterRule objects for complex filtering  **Performance Optimizations:** - Uses EF Core Include() for efficient eager loading - Database-level filtering and sorting 

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

// Search and filter orders
OrdersAPI.getOrders(xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, page: page, pageSize: pageSize, sortBy: sortBy, sortDirection: sortDirection) { (response, error) in
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

[**PagedResultOfOrderListResponse**](PagedResultOfOrderListResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRefundHistory**
```swift
    open class func getRefundHistory(orderID: Int64, page: Int, pageSize: Int, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: RefundHistoryResponse?, _ error: Error?) -> Void)
```

Get refund history for an order

Retrieves the refund history for a specific order, including all refund audit records.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let orderID = 987 // Int64 | The unique identifier of the Order
let page = 987 // Int | Page number for pagination (1-based)
let pageSize = 987 // Int | Number of items per page
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get refund history for an order
OrdersAPI.getRefundHistory(orderID: orderID, page: page, pageSize: pageSize, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **orderID** | **Int64** | The unique identifier of the Order | 
 **page** | **Int** | Page number for pagination (1-based) | 
 **pageSize** | **Int** | Number of items per page | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**RefundHistoryResponse**](RefundHistoryResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchOrder**
```swift
    open class func patchOrder(orderID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, patchOrderRequest: PatchOrderRequest, completion: @escaping (_ data: OrderResponse?, _ error: Error?) -> Void)
```

Partially update an order

Updates specific fields of an existing order. Only provided fields will be updated. All fields are optional - only include the fields you want to update.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let orderID = "orderID_example" // String | The unique identifier of the order
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let patchOrderRequest = PatchOrderRequest(carID: 123, customerID: 123, bayID: 123, lastServiceStatusID: ServiceStatusType(), orderTakerID: 123, locationID: 123, orderType: OrderType(), discountID: 123, discountCode: "discountCode_example", technicians: [TechnicianRequest(technicianID: 123)], lineItemStatuses: [PatchLineItemStatusRequest(lineItemID: 123, lineItemStatus: nil)], subtotal: 123, discountAmount: 123, tax: 123, additionalCharges: 123, total: 123, amountPaid: 123, taxPercent: 123, discountPercent: 123, refundAmount: 123, lastOrderPaymentStatusID: OrderPaymentStatusType()) // PatchOrderRequest | The PatchOrderRequest parameter

// Partially update an order
OrdersAPI.patchOrder(orderID: orderID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, patchOrderRequest: patchOrderRequest) { (response, error) in
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
 **orderID** | **String** | The unique identifier of the order | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **patchOrderRequest** | [**PatchOrderRequest**](PatchOrderRequest.md) | The PatchOrderRequest parameter | 

### Return type

[**OrderResponse**](OrderResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **processRefund**
```swift
    open class func processRefund(orderID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, processRefundRequest: ProcessRefundRequest, completion: @escaping (_ data: OrderResponse?, _ error: Error?) -> Void)
```

Process a refund

Processes a refund for specified line items, creating an audit record and returning the new refund order.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let orderID = "orderID_example" // String | The unique identifier of the Order
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let processRefundRequest = ProcessRefundRequest(lineItems: [RefundLineItemRequest(lineItemID: 123, quantity: 123, refundedAmount: 123, refundedTax: 123, refundNotes: "refundNotes_example")], refundSummary: RefundSummaryRequest(totalRefundAmount: 123, totalRefundTax: 123, grandTotalRefund: 123, refundDate: Date()), policyOverride: RefundDiscountAccountingPolicy(), refundReason: "refundReason_example", externalReferenceNumber: "externalReferenceNumber_example", sessionID: 123, paymentModeID: 123) // ProcessRefundRequest | The ProcessRefundRequest parameter

// Process a refund
OrdersAPI.processRefund(orderID: orderID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, processRefundRequest: processRefundRequest) { (response, error) in
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
 **orderID** | **String** | The unique identifier of the Order | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **processRefundRequest** | [**ProcessRefundRequest**](ProcessRefundRequest.md) | The ProcessRefundRequest parameter | 

### Return type

[**OrderResponse**](OrderResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **processZatcaSubmission**
```swift
    open class func processZatcaSubmission(orderID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: SubmitOrderToZatcaResponse?, _ error: Error?) -> Void)
```

Submit order invoice to Zatca

Manually submits an order as an e-invoice to Zatca. Can be used for any order regardless of completion status.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let orderID = "orderID_example" // String | The unique identifier of the order
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Submit order invoice to Zatca
OrdersAPI.processZatcaSubmission(orderID: orderID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **orderID** | **String** | The unique identifier of the order | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**SubmitOrderToZatcaResponse**](SubmitOrderToZatcaResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOrder**
```swift
    open class func updateOrder(orderID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, orderRequest: OrderRequest, completion: @escaping (_ data: OrderResponse?, _ error: Error?) -> Void)
```

Update an existing order

Updates an order and its related entities (LineItems, OrderHistory).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let orderID = "orderID_example" // String | The unique identifier of the order
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let orderRequest = OrderRequest(sessionID: 123, carID: 123, customerID: 123, bayID: 123, companyClientID: 123, orderType: OrderType(), orderTakerID: 123, locationID: 123, discountID: 123, discountCode: "discountCode_example", lastServiceStatusID: ServiceStatusType(), lineItems: [LineItemRequest(lineItemID: 123, itemID: 123, packageID: 123, notes: "notes_example", quantity: 123, unitPrice: 123, unitCost: 123, taxPercent: 123, isInclusiveVAT: false, taxCategoryCode: "taxCategoryCode_example", taxExemptionReasonCode: "taxExemptionReasonCode_example", taxExemptionReason: "taxExemptionReason_example", discountID: 123, discountPercent: 123, discountAmount: 123, grandTotal: 123, lineItemStatus: nil)], orderNotes: [PatchOrderNoteRequest(orderID: 123, comment: "comment_example", notesStatus: OrderNoteStatus(), signaturePath: "signaturePath_example", noteImageJSON: ["noteImageJSON_example"])], technicians: [TechnicianRequest(technicianID: 123)], subtotal: 123, grandTotal: 123, additionalCharges: 123, discountPercent: 123, discountAmount: 123) // OrderRequest | The OrderRequest parameter

// Update an existing order
OrdersAPI.updateOrder(orderID: orderID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, orderRequest: orderRequest) { (response, error) in
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
 **orderID** | **String** | The unique identifier of the order | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **orderRequest** | [**OrderRequest**](OrderRequest.md) | The OrderRequest parameter | 

### Return type

[**OrderResponse**](OrderResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

