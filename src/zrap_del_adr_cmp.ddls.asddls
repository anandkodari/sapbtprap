@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Delivery composition address'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZRAP_DEL_ADR_CMP as projection on ZRAP_DEL_ADR_INT
{
    key AddressUuid,
    ItemUuid,
    DeliveryUuid,
    DeliveryId,
    Street,
    City,
    PostalCode,
    Country,
    Region,
    LocalLastChangedAt,
    /* Associations */
    _Header: redirected to ZRAP_DELIVERY_CMP,
    _Items: redirected to parent ZRAP_DELIVERY_I_CMP
}
