# TechniciansAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllTechnicians**](TechniciansAPI.md#getalltechnicians) | **GET** /api/v1/technicians | Get all technicians for the account


# **getAllTechnicians**
```swift
    open class func getAllTechnicians(xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: [TechnicianResponse]?, _ error: Error?) -> Void)
```

Get all technicians for the account

         Retrieves all users with designation 'Technician' for the authenticated account.          **Authentication Required:** Yes          **Required Headers:**         - X-Account-ID: The account identifier          **Response:**         - Returns list of technicians with their ID, name, and contact information         - Only returns active users         - Filters by designation = 'Technician'         

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get all technicians for the account
TechniciansAPI.getAllTechnicians(xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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

[**[TechnicianResponse]**](TechnicianResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

