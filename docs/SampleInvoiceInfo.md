# SampleInvoiceInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sampleInvoiceID** | **Int64** | Sample invoice ID. | 
**invoiceType** | **String** | Invoice type (Simplified, Standard). | 
**documentType** | **String** | Document type (Invoice, CreditNote, DebitNote). | 
**invoiceUUID** | **String** | Invoice UUID. | [optional] 
**clearanceStatus** | **String** | Clearance status (CLEARED, REPORTED, REJECTED). | [optional] 
**isSuccess** | **Bool** | Whether the sample passed validation. | 
**submittedAt** | **Date** | When the sample was submitted. | [optional] 
**warningMessages** | **String** | Warning messages from ZATCA. | [optional] 
**errorMessage** | **String** | Error message if validation failed. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


