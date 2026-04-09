# DiscountResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**discountID** | **Int64** |  | 
**accountID** | **Int64** |  | 
**name** | **String** |  | 
**description** | **String** |  | [optional] 
**discountType** | [**DiscountType**](DiscountType.md) |  | 
**discountMethod** | [**DiscountMethodType**](DiscountMethodType.md) |  | 
**discountValueType** | [**DiscountValueType**](DiscountValueType.md) |  | 
**requirementType** | [**DiscountRequirementType**](DiscountRequirementType.md) |  | 
**discountCode** | **String** |  | [optional] 
**percentageValue** | **Double** |  | [optional] 
**fixedAmountValue** | **Double** |  | [optional] 
**minimumPurchaseAmount** | **Double** |  | [optional] 
**minimumQuantity** | **Int** |  | [optional] 
**maximumRedemptionCount** | **Int** |  | [optional] 
**maximumUsesPerOrder** | **Int** |  | [optional] 
**isLimitedToOnePerCustomer** | **Bool** |  | 
**buyQuantity** | **Int** |  | [optional] 
**getQuantity** | **Int** |  | [optional] 
**rewardItemID** | **Int64** |  | [optional] 
**isExpired** | **Bool** |  | 
**startsAt** | **Date** |  | [optional] 
**endsAt** | **Date** |  | [optional] 
**createdAt** | **Date** |  | [optional] [readonly] 
**updatedAt** | **Date** |  | [optional] [readonly] 
**statusID** | [**StatusType**](StatusType.md) |  | 
**discountItems** | [DiscountItemResponse] |  | 
**redemptionCount** | **Int** |  | 
**locationIDs** | **[Int64]** |  | 
**locations** | [DiscountLocationResponse] |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


