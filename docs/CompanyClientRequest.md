# CompanyClientRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**companyCode** | **String** | Unique company code (auto-generated if not provided) | [optional] 
**companyName** | **String** | Company name in English (required) | 
**companyNameAr** | **String** | Company name in Arabic | [optional] 
**businessType** | **String** | Business type: Fleet, Insurance, Corporate, Government, Other | 
**cRNumber** | **String** | Commercial Registration Number | [optional] 
**vATNumber** | **String** | VAT Registration Number (conditionally required) | 
**cityID** | **Int64** | City where the company is located | 
**isGovernmentClient** | **Bool** | Whether this is a government client | 
**carPolicy** | [**CarPolicyType**](CarPolicyType.md) |  | 
**shortAddress** | **String** |  | [optional] 
**buildingNumber** | **String** |  | [optional] 
**streetName** | **String** |  | [optional] 
**secondaryNumber** | **String** |  | [optional] 
**district** | **String** |  | [optional] 
**postalCode** | **String** |  | [optional] 
**address1** | **String** |  | [optional] 
**address1Ar** | **String** |  | [optional] 
**address2** | **String** |  | [optional] 
**address2Ar** | **String** |  | [optional] 
**contactName** | **String** | Contact person full name (required) | 
**contactPhone** | **String** | Contact phone number with country code (required) | 
**contactEmail** | **String** | Contact email address (optional) | [optional] 
**isCreditEnabled** | **Bool** | Whether credit profile is enabled | 
**creditStatus** | [**CreditStatus**](CreditStatus.md) |  | 
**openingBalance** | **Double** | Opening balance (default 0) | 
**creditLimit** | **Double** | Maximum credit limit allowed | [optional] 
**paymentTerms** | [**PaymentTermsType**](PaymentTermsType.md) |  | 
**paymentTermsDays** | **Int** | Standard payment terms in days | 
**creditDueDate** | **Date** | Custom due date (only for PaymentTerms &#x3D; Custom) | 
**gracePeriodDays** | **Int** | Grace period in days before blocking new credit | [optional] 
**paymentStopPolicy** | [**PaymentStopPolicy**](PaymentStopPolicy.md) |  | [optional] 
**notes** | **String** | Optional notes about this company | [optional] 
**internalFinanceNotes** | **String** | Internal finance notes | [optional] 
**externalID** | **String** | External system ID for integration | [optional] 
**statusID** | [**StatusType**](StatusType.md) |  | [optional] 
**carIDs** | **[Int64]** | List of Car IDs to attach to this company client | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


