# OrderReportDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**orderID** | **Int64** | Order ID (internal use for enrichment) | 
**orderNo** | **Int64** | Order number | 
**phoneNumber** | **String** | Customer phone number | [optional] 
**carModel** | **String** | Vehicle model name | [optional] 
**plateNo** | **String** | Vehicle registration/plate number | [optional] 
**orderDate** | **Date** | Order date/time | 
**subtotal** | **Double** | Order subtotal (before discounts and tax) | 
**discount** | **Double** | Discount amount applied | 
**tax** | **Double** | Tax amount | 
**refund** | **Double** | Refund amount | 
**total** | **Double** | Total amount (final price) | 
**orderStatus** | **Int** | Order service status | 
**paymentStatus** | **Int** | Payment status | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


