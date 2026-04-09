# UserInfoResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **String** | OIDC &#39;sub&#39; claim - Unique identifier for the user (user ID as string). | [optional] 
**userType** | **String** | User type discriminator: \&quot;User\&quot; for staff/employees, \&quot;Customer\&quot; for customers. | [optional] 
**ID** | **Int64** | Internal user ID (numeric). Use Subject for OIDC-compliant integrations. | 
**status** | **String** | User account status (e.g., Active, Inactive, Suspended). | [optional] 
**createdAt** | **Date** | Timestamp when the user account was created. | [optional] [readonly] 
**updatedAt** | **Date** | Timestamp when the user account was last updated. | [optional] [readonly] 
**firstName** | **String** | OIDC &#39;given_name&#39; claim - User&#39;s first/given name. | [optional] 
**lastName** | **String** | OIDC &#39;family_name&#39; claim - User&#39;s last/family name. | [optional] 
**name** | **String** | OIDC &#39;name&#39; claim - User&#39;s full display name. Computed as \&quot;{FirstName} {LastName}\&quot; or falls back to login username. Requires &#39;profile&#39; scope. | [optional] 
**preferredUsername** | **String** | OIDC &#39;preferred_username&#39; claim - User&#39;s preferred display/login username. Requires &#39;profile&#39; scope. | [optional] 
**imagePath** | **String** | OIDC &#39;picture&#39; claim - URL/path to user&#39;s profile image. Requires &#39;profile&#39; scope. | [optional] 
**cityID** | **Int64** | User&#39;s associated city ID for location-based features. Requires &#39;profile&#39; scope. | [optional] 
**email** | **String** | OIDC &#39;email&#39; claim - User&#39;s email address. Requires &#39;email&#39; scope. | [optional] 
**emailVerified** | **Bool** | OIDC &#39;email_verified&#39; claim - Whether the email has been verified. Requires &#39;email&#39; scope. | [optional] 
**phoneNumber** | **String** | OIDC &#39;phone_number&#39; claim - User&#39;s primary phone number from identity system. Requires &#39;phone&#39; scope. | [optional] 
**phoneNumberVerified** | **Bool** | OIDC &#39;phone_number_verified&#39; claim - Whether the phone number has been verified. Requires &#39;phone&#39; scope. | [optional] 
**roles** | **[String]** | List of role names assigned to the user. | [optional] 
**permissions** | **[String]** | Combined permissions from both role claims and user-specific claims. | [optional] 
**scopes** | **[String]** | OAuth2 scopes granted in the access token. | [optional] 
**dateOfBirth** | **Date** | Customer&#39;s date of birth. Only for Customer user type. | [optional] 
**address** | **String** | Customer&#39;s address. Only for Customer user type. | [optional] 
**gender** | **String** | Customer&#39;s gender. Only for Customer user type. | [optional] 
**mobile** | **String** | Customer&#39;s mobile phone number (may differ from PhoneNumber). Only for Customer user type. | [optional] 
**lastVisit** | **Date** | Customer&#39;s last visit timestamp. Only for Customer user type. | [optional] 
**emailNotifications** | **Bool** | Whether customer has opted in for email notifications. Only for Customer user type. | [optional] 
**smsNotifications** | **Bool** | Whether customer has opted in for SMS notifications. Only for Customer user type. | [optional] 
**countryID** | **Int64** | Customer&#39;s country ID. Only for Customer user type. | [optional] 
**contactNo** | **String** | Staff member&#39;s work contact number (may differ from PhoneNumber). Only for Staff user type. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


