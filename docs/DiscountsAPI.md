# DiscountsAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDiscount**](DiscountsAPI.md#creatediscount) | **POST** /api/v1/discounts | Create a new discount
[**deleteDiscount**](DiscountsAPI.md#deletediscount) | **DELETE** /api/v1/discounts/{DiscountID} | Delete a discount
[**deleteDiscountLocation**](DiscountsAPI.md#deletediscountlocation) | **DELETE** /api/v1/discounts/{DiscountID}/location | Remove discount from current location
[**getDiscountById**](DiscountsAPI.md#getdiscountbyid) | **GET** /api/v1/discounts/{DiscountID} | Get discount by ID
[**getDiscounts**](DiscountsAPI.md#getdiscounts) | **GET** /api/v1/discounts | Get all discounts
[**updateDiscount**](DiscountsAPI.md#updatediscount) | **PUT** /api/v1/discounts/{DiscountID} | Update an existing discount


# **createDiscount**
```swift
    open class func createDiscount(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, discountRequest: DiscountRequest, completion: @escaping (_ data: DiscountResponse?, _ error: Error?) -> Void)
```

Create a new discount

Creates a new discount with configurable rules, requirements, and redemption limits.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let discountRequest = DiscountRequest(name: "name_example", description: "description_example", discountType: DiscountType(), discountMethod: DiscountMethodType(), discountValueType: DiscountValueType(), requirementType: DiscountRequirementType(), discountCode: "discountCode_example", percentageValue: 123, fixedAmountValue: 123, minimumPurchaseAmount: 123, minimumQuantity: 123, maximumRedemptionCount: 123, maximumUsesPerOrder: 123, isLimitedToOnePerCustomer: true, buyQuantity: 123, getQuantity: 123, rewardItemID: 123, locationIDs: [123], startsAt: Date(), endsAt: Date(), statusID: StatusType(), discountItems: [DiscountItemRequest(itemID: 123, role: DiscountItemRole())]) // DiscountRequest | The DiscountRequest parameter

// Create a new discount
DiscountsAPI.createDiscount(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, discountRequest: discountRequest) { (response, error) in
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
 **discountRequest** | [**DiscountRequest**](DiscountRequest.md) | The DiscountRequest parameter | 

### Return type

[**DiscountResponse**](DiscountResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDiscount**
```swift
    open class func deleteDiscount(discountID: Int64, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a discount

Soft deletes a discount by setting its status to deleted.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let discountID = 987 // Int64 | The unique identifier of the Discount
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete a discount
DiscountsAPI.deleteDiscount(discountID: discountID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **discountID** | **Int64** | The unique identifier of the Discount | 
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

# **deleteDiscountLocation**
```swift
    open class func deleteDiscountLocation(discountID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Remove discount from current location

Removes the current location from the discount. If this is the only location attached to the discount, the discount is soft-deleted.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let discountID = "discountID_example" // String | The unique identifier of the Discount
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Remove discount from current location
DiscountsAPI.deleteDiscountLocation(discountID: discountID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **discountID** | **String** | The unique identifier of the Discount | 
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

# **getDiscountById**
```swift
    open class func getDiscountById(discountID: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: DiscountResponse?, _ error: Error?) -> Void)
```

Get discount by ID

Retrieves a specific discount by its unique identifier.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let discountID = "discountID_example" // String | The unique identifier of the Discount
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get discount by ID
DiscountsAPI.getDiscountById(discountID: discountID, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **discountID** | **String** | The unique identifier of the Discount | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 

### Return type

[**DiscountResponse**](DiscountResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDiscounts**
```swift
    open class func getDiscounts(page: Int, pageSize: Int, sortDirection: String, xAccountID: Int, xLocationID: Int, filters: String? = nil, sortBy: String? = nil, completion: @escaping (_ data: PagedResultOfDiscountResponse?, _ error: Error?) -> Void)
```

Get all discounts

Retrieves a paginated list of discounts for the current account with optional filtering.

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

// Get all discounts
DiscountsAPI.getDiscounts(page: page, pageSize: pageSize, sortDirection: sortDirection, xAccountID: xAccountID, xLocationID: xLocationID, filters: filters, sortBy: sortBy) { (response, error) in
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

[**PagedResultOfDiscountResponse**](PagedResultOfDiscountResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDiscount**
```swift
    open class func updateDiscount(discountID: String, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, discountRequest: DiscountRequest, completion: @escaping (_ data: DiscountResponse?, _ error: Error?) -> Void)
```

Update an existing discount

Updates the properties of an existing discount including its rules and redemption limits.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let discountID = "discountID_example" // String | The unique identifier of the Discount
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let discountRequest = DiscountRequest(name: "name_example", description: "description_example", discountType: DiscountType(), discountMethod: DiscountMethodType(), discountValueType: DiscountValueType(), requirementType: DiscountRequirementType(), discountCode: "discountCode_example", percentageValue: 123, fixedAmountValue: 123, minimumPurchaseAmount: 123, minimumQuantity: 123, maximumRedemptionCount: 123, maximumUsesPerOrder: 123, isLimitedToOnePerCustomer: true, buyQuantity: 123, getQuantity: 123, rewardItemID: 123, locationIDs: [123], startsAt: Date(), endsAt: Date(), statusID: StatusType(), discountItems: [DiscountItemRequest(itemID: 123, role: DiscountItemRole())]) // DiscountRequest | The DiscountRequest parameter

// Update an existing discount
DiscountsAPI.updateDiscount(discountID: discountID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, discountRequest: discountRequest) { (response, error) in
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
 **discountID** | **String** | The unique identifier of the Discount | 
 **xKarageRequestId** | **String** | Unique request identifier for tracing and debugging | 
 **xAccountID** | **Int** | The account ID to operate under (Required) | 
 **xLocationID** | **Int** | The location ID to operate under (Required) | 
 **discountRequest** | [**DiscountRequest**](DiscountRequest.md) | The DiscountRequest parameter | 

### Return type

[**DiscountResponse**](DiscountResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

