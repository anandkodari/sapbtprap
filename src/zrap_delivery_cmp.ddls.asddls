@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Delivery composition header'
@Metadata.allowExtensions: true
define root view entity ZRAP_DELIVERY_CMP 
provider contract transactional_query as projection on ZRAP_DELIVERY_INT
{
    key DeliveryUuid,
    DeliveryId,
    DeliveryDate,
    SalesOrderId,
    CustomerId,
    DeliveryStatus,
    ShippingPoint,
     @Semantics.quantity.unitOfMeasure : 'WeightUnit'
    TotalWeight,
    WeightUnit,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    LocalLastChangedAt,
    /* Associations */
    _Items: redirected to composition child ZRAP_DELIVERY_I_CMP
}
