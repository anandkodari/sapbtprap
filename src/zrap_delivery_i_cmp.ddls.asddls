@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Delivery composition ITEM'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZRAP_DELIVERY_I_CMP as projection on ZRAP_DEL_I_INT
{
    key ItemUuid,
    DeliveryUuid,
    DeliveryId,
    ProductId,
    ProductDescription,
    @Semantics.quantity.unitOfMeasure : 'QuantityUnit'
    Quantity,
    QuantityUnit,
    
    @Semantics.amount.currencyCode : 'Currency'
    Price,
    
    Currency,
    LocalLastChangedAt,
    /* Associations */
    _adr: redirected to composition child ZRAP_DEL_ADR_CMP,
    _Header: redirected to parent ZRAP_DELIVERY_CMP
}
