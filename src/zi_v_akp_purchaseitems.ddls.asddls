@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'purchase item managed'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_V_AKP_PurchaseItems
  as select from zakp_pur_item
  association to parent ZI_RV_AKP_PurchaseDoc as _Header on $projection.purchase_doc = _Header.purchase_doc
{
  key purchase_doc,
  key purchase_item,
      short_text,
      @Semantics.amount.currencyCode: 'currency'
      price,
      currency,
      @Semantics.quantity.unitOfMeasure: 'unit'
      quantity,
      unit,
      @Semantics.systemDateTime.lastChangedAt: true
      change_date_time,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_change_date_time,
      _Header
}
