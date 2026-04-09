# PosSessionResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sessionID** | **Int64** | Unique session identifier. | 
**sessionNo** | **Int64** | Auto-generated sequence number. | 
**name** | **String** | Display name for the session. | [optional] 
**state** | [**PosSessionState**](PosSessionState.md) |  | 
**stateName** | **String** | Human-readable state name. | 
**terminalID** | **Int64** | Terminal ID this session belongs to. | 
**terminalName** | **String** | Terminal name. | [optional] 
**locationID** | **Int64** | Location ID where the session is operating. | 
**locationName** | **String** | Location name. | [optional] 
**openedByUserID** | **Int64** | User ID who opened the session. | 
**openedByUserName** | **String** | Name of the user who opened the session. | [optional] 
**closedByUserID** | **Int64** | User ID who closed the session (null if not closed). | [optional] 
**closedByUserName** | **String** | Name of the user who closed the session. | [optional] 
**createdAt** | **Date** | When the session was created. | [optional] [readonly] 
**openedAt** | **Date** | When the session was opened (transitioned to Opened state). | [optional] 
**closedAt** | **Date** | When the session was closed (transitioned to Closed state). | [optional] 
**cashOpeningBalance** | **Double** | Opening cash balance entered by user. | 
**cashClosingBalanceTheoretical** | **Double** | Calculated theoretical closing balance. | 
**cashClosingBalanceActual** | **Double** | Actual cash counted at closing. | 
**cashDifference** | **Double** | Difference between actual and theoretical (positive &#x3D; surplus, negative &#x3D; shortage). | 
**totalSales** | **Double** | Total sales amount from all orders. | 
**totalRefunds** | **Double** | Total refunds amount from all orders. | 
**totalCashPayments** | **Double** | Total cash payments received. | 
**totalCardPayments** | **Double** | Total card payments received. | 
**totalOtherPayments** | **Double** | Total other payment types received. | 
**orderCount** | **Int** | Number of orders processed in this session. | 
**openingNotes** | **String** | Notes entered when opening the session. | [optional] 
**closingNotes** | **String** | Notes entered when closing the session. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


