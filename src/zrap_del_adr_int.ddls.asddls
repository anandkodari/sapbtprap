@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Delivery interface address'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #BASIC

define view entity ZRAP_DEL_ADR_INT
  as select from zrap_deli_adr
  
   association to parent ZRAP_DEL_I_INT as _Items on $projection.ItemUuid = _Items.itemuuid
      
      association [1] to ZRAP_DELIVERY_INT as _Header
  on $projection.DeliveryUuid = _Header.DeliveryUuid
            
{
    key address_uuid          as AddressUuid,
    parent_uuid               as ItemUuid,
    delivery_uuid             as DeliveryUuid,
    delivery_id               as DeliveryId,
    street                    as Street,
    city                      as City,
    postal_code               as PostalCode,
    country                   as Country,
    region                    as Region,
    local_last_changed_at as LocalLastChangedAt,
    _Items,
    _Header
    
}
