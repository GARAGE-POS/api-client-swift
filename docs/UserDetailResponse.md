# UserDetailResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ID** | **Int64** |  | 
**email** | **String** |  | [optional] 
**userName** | **String** |  | [optional] 
**firstName** | **String** |  | [optional] 
**lastName** | **String** |  | [optional] 
**fullName** | **String** |  | [optional] 
**phoneNumber** | **String** |  | [optional] 
**designation** | **String** |  | [optional] 
**contactNo** | **String** |  | [optional] 
**imagePath** | **String** |  | [optional] 
**cityID** | **Int64** |  | [optional] 
**cityName** | **String** |  | [optional] 
**isEmailVerified** | **Bool** |  | 
**isContactNoVerified** | **Bool** |  | 
**statusID** | [**StatusType**](StatusType.md) |  | 
**createdAt** | **Date** |  | [optional] [readonly] 
**updatedAt** | **Date** |  | [optional] [readonly] 
**userType** | **String** |  | 
**hasPasscode** | **Bool** |  | 
**roles** | [UserRoleResponse] |  | 
**permissions** | **[String]** |  | 
**directPermissions** | [PermissionResponse] |  | 
**accountIDs** | **[Int64]** |  | 
**accountLocations** | [UserAccountLocationResponse] | Account-Location assignments grouped by account | 
**isLockedOut** | **Bool** |  | 
**lockoutEnd** | **Date** |  | [optional] 
**accessFailedCount** | **Int** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


