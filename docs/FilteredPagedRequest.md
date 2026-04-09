# FilteredPagedRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**filters** | **String** | JSON array of filter rules. Example: [{\&quot;Field\&quot;:\&quot;Name\&quot;,\&quot;Operator\&quot;:\&quot;contains\&quot;,\&quot;Values\&quot;:[\&quot;SearchTerm\&quot;]}] Available operators: eq, neq, gt, lt, gte, lte, contains, between | [optional] [default to "[]"]
**page** | **Int** | Page number for pagination (starts from 1) | [optional] [default to 1]
**pageSize** | **Int** | Number of items per page (1-100) | [optional] [default to 10]
**sortBy** | **String** | Field to sort by | [optional] 
**sortDirection** | **String** | Sort direction: \&quot;asc\&quot; or \&quot;desc\&quot; | [optional] [default to "asc"]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


