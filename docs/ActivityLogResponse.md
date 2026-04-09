# ActivityLogResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**activityLogID** | **Int64** | Unique identifier for the activity log entry | 
**entityType** | **String** | The type of entity that was acted upon | 
**objectID** | **Int64** | The ID of the entity that was acted upon | 
**action** | **String** | The action that was performed (Created, Updated, Deleted, etc.) | 
**userID** | **Int64** | The ID of the user who performed the action | 
**oldValues** | **String** | JSON representation of the old values (before the change), with PII redacted | [optional] 
**newValues** | **String** | JSON representation of the new values (after the change), with PII redacted | [optional] 
**createdAt** | **Date** | When the action was performed | [optional] [readonly] 
**accountID** | **Int64** | The account ID this activity log belongs to | 
**locationID** | **Int64** | The location ID this activity log belongs to | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


