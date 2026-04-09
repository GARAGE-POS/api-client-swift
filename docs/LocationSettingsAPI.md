# LocationSettingsAPI

All URIs are relative to *https://api-qa1.karage.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createLocationSetting**](LocationSettingsAPI.md#createlocationsetting) | **POST** /api/v1/location-settings | Create or update location settings for the current location
[**deleteLocationSetting**](LocationSettingsAPI.md#deletelocationsetting) | **DELETE** /api/v1/location-settings/{LocationSettingID} | Delete a location setting
[**getLocationSettings**](LocationSettingsAPI.md#getlocationsettings) | **GET** /api/v1/location-settings | Get all location settings for the current location
[**updateLocationSetting**](LocationSettingsAPI.md#updatelocationsetting) | **PUT** /api/v1/location-settings | Update location settings for the current location


# **createLocationSetting**
```swift
    open class func createLocationSetting(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, patchTypedLocationSettingsRequest: PatchTypedLocationSettingsRequest, completion: @escaping (_ data: TypedLocationSettingsResponse?, _ error: Error?) -> Void)
```

Create or update location settings for the current location

Creates or updates location settings (kashier, discount, lite, hardware, receipt) for the current location. If a setting already exists, it will be updated; otherwise, it will be created.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let patchTypedLocationSettingsRequest = PatchTypedLocationSettingsRequest(kashier: KashierSettings(jobOrder: JobOrderSettings(isSunmi: true, isA4: true), hasCheckList: true, hasNotes: true), discount: DiscountSettings(orderDiscount: OrderDiscountSettings(hasAmount: true, hasPercentage: true, hasPromo: true, hasTrend: true), itemDiscount: ItemDiscountSettings(hasAmount: true, hasPercentage: true)), lite: LiteSettings(isCustomerMandatoryOnCheckout: true), hardware: HardwareSettings(hasContactless: true, hasNearPay: true), receipt: ReceiptSettings(hasLogo: true, hasLocationAddress: true, hasPhoneNo: true, hasVatNo: true, hasCashierName: true, hasBayName: true, hasKilometers: true, hasNotes: true, hasSocialMedia: true, showCustomerName: true, showOrderName: true, showCRNo: true), receiptTemplate: ReceiptTemplateSettings(logo: "logo_example", footer: "footer_example", qrtagline: "qrtagline_example", qRLink: "qRLink_example", zetcaQr: "zetcaQr_example", cRNo: "cRNo_example")) // PatchTypedLocationSettingsRequest | The PatchTypedLocationSettingsRequest parameter

// Create or update location settings for the current location
LocationSettingsAPI.createLocationSetting(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, patchTypedLocationSettingsRequest: patchTypedLocationSettingsRequest) { (response, error) in
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
 **patchTypedLocationSettingsRequest** | [**PatchTypedLocationSettingsRequest**](PatchTypedLocationSettingsRequest.md) | The PatchTypedLocationSettingsRequest parameter | 

### Return type

[**TypedLocationSettingsResponse**](TypedLocationSettingsResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteLocationSetting**
```swift
    open class func deleteLocationSetting(locationSettingID: Int64, xKarageRequestId: String, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a location setting

Deletes a location setting by its ID. Returns 404 if not found.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let locationSettingID = 987 // Int64 | The unique identifier of the locationsetting
let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Delete a location setting
LocationSettingsAPI.deleteLocationSetting(locationSettingID: locationSettingID, xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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
 **locationSettingID** | **Int64** | The unique identifier of the locationsetting | 
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

# **getLocationSettings**
```swift
    open class func getLocationSettings(page: Int, pageSize: Int, xAccountID: Int, xLocationID: Int, completion: @escaping (_ data: TypedLocationSettingsResponse?, _ error: Error?) -> Void)
```

Get all location settings for the current location

Retrieves all location settings (kashier, discount, lite, hardware, receipt) for the current location as a structured object.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let page = 987 // Int | Page number for pagination (1-based)
let pageSize = 987 // Int | Number of items per page
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)

// Get all location settings for the current location
LocationSettingsAPI.getLocationSettings(page: page, pageSize: pageSize, xAccountID: xAccountID, xLocationID: xLocationID) { (response, error) in
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

[**TypedLocationSettingsResponse**](TypedLocationSettingsResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateLocationSetting**
```swift
    open class func updateLocationSetting(xKarageRequestId: String, xAccountID: Int, xLocationID: Int, patchTypedLocationSettingsRequest: PatchTypedLocationSettingsRequest, completion: @escaping (_ data: TypedLocationSettingsResponse?, _ error: Error?) -> Void)
```

Update location settings for the current location

Updates location settings (kashier, discount, lite, hardware, receipt) for the current location. Only include the settings you want to update - missing settings will not be modified.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KarageAPIClient

let xKarageRequestId = "xKarageRequestId_example" // String | Unique request identifier for tracing and debugging
let xAccountID = 987 // Int | The account ID to operate under (Required)
let xLocationID = 987 // Int | The location ID to operate under (Required)
let patchTypedLocationSettingsRequest = PatchTypedLocationSettingsRequest(kashier: KashierSettings(jobOrder: JobOrderSettings(isSunmi: true, isA4: true), hasCheckList: true, hasNotes: true), discount: DiscountSettings(orderDiscount: OrderDiscountSettings(hasAmount: true, hasPercentage: true, hasPromo: true, hasTrend: true), itemDiscount: ItemDiscountSettings(hasAmount: true, hasPercentage: true)), lite: LiteSettings(isCustomerMandatoryOnCheckout: true), hardware: HardwareSettings(hasContactless: true, hasNearPay: true), receipt: ReceiptSettings(hasLogo: true, hasLocationAddress: true, hasPhoneNo: true, hasVatNo: true, hasCashierName: true, hasBayName: true, hasKilometers: true, hasNotes: true, hasSocialMedia: true, showCustomerName: true, showOrderName: true, showCRNo: true), receiptTemplate: ReceiptTemplateSettings(logo: "logo_example", footer: "footer_example", qrtagline: "qrtagline_example", qRLink: "qRLink_example", zetcaQr: "zetcaQr_example", cRNo: "cRNo_example")) // PatchTypedLocationSettingsRequest | The PatchTypedLocationSettingsRequest parameter

// Update location settings for the current location
LocationSettingsAPI.updateLocationSetting(xKarageRequestId: xKarageRequestId, xAccountID: xAccountID, xLocationID: xLocationID, patchTypedLocationSettingsRequest: patchTypedLocationSettingsRequest) { (response, error) in
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
 **patchTypedLocationSettingsRequest** | [**PatchTypedLocationSettingsRequest**](PatchTypedLocationSettingsRequest.md) | The PatchTypedLocationSettingsRequest parameter | 

### Return type

[**TypedLocationSettingsResponse**](TypedLocationSettingsResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

