@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Delivery interface header'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZRAP_DELIVERY_INT
  as select from zrap_del_h
    composition [0..*] of ZRAP_DEL_I_INT as _Items
{
    key delivery_uuid as DeliveryUuid,
    delivery_id       as DeliveryId,
    delivery_date     as DeliveryDate,
    sales_order_id    as SalesOrderId,
    customer_id       as CustomerId,
    delivery_status   as DeliveryStatus,
    shipping_point    as ShippingPoint,

    @Semantics.quantity.unitOfMeasure : 'WeightUnit'
    total_weight     as TotalWeight,

    weight_unit      as WeightUnit,

    @Semantics.user.createdBy: true
    created_by       as CreatedBy,
    @Semantics.systemDateTime.createdAt: true
    created_at       as CreatedAt,
    @Semantics.user.lastChangedBy: true
    last_changed_by  as LastChangedBy,
    @Semantics.systemDateTime.lastChangedAt: true
    last_changed_at  as LastChangedAt,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    local_last_changed_at as LocalLastChangedAt,

    _Items
}


//@AccessControl.authorizationCheck: #NOT_REQUIRED
//@EndUserText.label: 'Delivery interface header'
//@Metadata.ignorePropagatedAnnotations: true
//define root view entity ZRAP_DELIVERY_INT 
  //as select from zrap_del_h
  //composition [0..*] of ZRAP_DEL_I_INT as _DELIVERYI
//{
  //  key delivery_uuid as DeliveryUuid,
    //delivery_id as DeliveryId,
//    delivery_date as DeliveryDate,
//    sales_order_id as SalesOrderId,
//    customer_id as CustomerId,
//    delivery_status as DeliveryStatus,
//    shipping_point as ShippingPoint,
//    @Semantics.quantity.unitOfMeasure : 'WeightUnit'
//    total_weight as TotalWeight,
//    weight_unit as WeightUnit,
    
//    @Semantics.user.createdBy: true
  //  created_by as CreatedBy,
//    @Semantics.systemDateTime.createdAt: true
 //   created_at as CreatedAt,
 //    @Semantics.user.lastChangedBy: true
 //   last_changed_by as LastChangedBy,
    
 //    @Semantics.systemDateTime.localInstanceLastChangedAt: true
 //   last_changed_at as LastChangedAt,
    
 //   @Semantics.systemDateTime.lastChangedAt: true   
 //   local_last_changed_at as LocalLastChangedAt,
    
 //   _DELIVERYI
//}
//
