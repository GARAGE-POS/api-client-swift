# SampleInvoiceDetailResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sampleInvoiceID** | **Int64** | Sample invoice ID. | 
**systemComplianceID** | **Int64** | System compliance ID. | 
**invoiceType** | **String** | Invoice type (Simplified, Standard). | 
**documentType** | **String** | Document type (Invoice, CreditNote, DebitNote). | 
**invoiceUUID** | **String** | Invoice UUID. | [optional] 
**invoiceHash** | **String** | Hash of the signed XML invoice. | [optional] 
**submittedAt** | **Date** | When the sample was submitted to ZATCA. | [optional] 
**clearanceStatus** | **String** | Clearance status (CLEARED, REPORTED, REJECTED). | [optional] 
**isSuccess** | **Bool** | Whether the sample passed validation. | 
**zatcaResponse** | **String** | ZATCA API response status. | [optional] 
**warningMessages** | **String** | Warning messages from ZATCA validation. | [optional] 
**errorMessage** | **String** | Error message if validation failed. | [optional] 
**qRCode** | **String** | QR code generated during invoice signing (base64-encoded TLV). | [optional] 
**createdAt** | **Date** | When the record was created. | [optional] [readonly] 
**invoiceData** | [**JsonDocument**](JsonDocument.md) |  | [optional] 
**signedXml** | **String** | The signed UBL XML invoice that was submitted to ZATCA. | [optional] 
**complianceInfo** | [**SampleInvoiceComplianceInfo**](SampleInvoiceComplianceInfo.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


