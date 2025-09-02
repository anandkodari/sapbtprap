@EndUserText.label: 'Invvoice Table'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define root view entity ZC_INVOICE_TABLE12
  provider contract transactional_query
  as projection on ZI_INVOICETABLE12
{
  key Invoice,
      Comments,

      //@Semantics.largeObject:
      //            { mimeType: 'Mimetype',
      //            fileName: 'Filename',
      //            contentDispositionPreference: #INLINE }

      @UI:{
      lineItem: [{ position: 10}],
      identification: [{ position: 10 }]
      }
      @Semantics.largeObject:
      { mimeType: 'Mimetype',
      fileName: 'Filename',
      acceptableMimeTypes: [ 'application/vnd.ms-excel','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' ],
      contentDispositionPreference: #INLINE }
      Attachment,
      MimeType,
      Filename,
      LocalLastChangedAt
}
