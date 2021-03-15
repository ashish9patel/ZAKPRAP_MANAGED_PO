@EndUserText.label: 'Projection on child view'
@AccessControl.authorizationCheck: #CHECK

@Metadata.allowExtensions: true
define view entity ZC_V_AKP_PURCHASEITEMS
  as projection on ZI_V_AKP_PurchaseItems
{
  key purchase_doc,
  key purchase_item,
      short_text,
      price,
      currency,
      quantity,
      unit,
      change_date_time,
      local_change_date_time,
      /* Associations */
      _Header : redirected to parent ZC_RV_AKP_PURCHASEDOC
}
