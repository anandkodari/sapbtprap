@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Delivery interface ITEM'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType: {
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZRAP_DEL_I_INT
  as select from zrap_del_i
  
  composition [0..*] of ZRAP_DEL_ADR_INT as _adr
  
  association to parent ZRAP_DELIVERY_INT as _Header
  on $projection.DeliveryUuid = _Header.DeliveryUuid

{
    key item_uuid            as ItemUuid,
    parent_uuid              as DeliveryUuid,
    delivery_id              as DeliveryId,
    product_id               as ProductId,
    product_description      as ProductDescription,

    @Semantics.quantity.unitOfMeasure : 'QuantityUnit'
    quantity                 as Quantity,

    quantity_unit            as QuantityUnit,

    @Semantics.amount.currencyCode : 'Currency'
    price                    as Price,

    currency                 as Currency,
    
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    local_last_changed_at    as LocalLastChangedAt,

    _Header,
    _adr
}
