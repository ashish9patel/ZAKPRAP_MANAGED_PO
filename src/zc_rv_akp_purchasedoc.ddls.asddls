@EndUserText.label: 'Projection on Root view '
@AccessControl.authorizationCheck: #CHECK

@Metadata.allowExtensions: true
define root view entity ZC_RV_AKP_PURCHASEDOC
  as projection on ZI_RV_AKP_PurchaseDoc
{
  key purchase_doc,
      po_desc,
      @Consumption.valueHelpDefinition: [{
          entity: {
              name: 'ZC_AKP_PurchaseStatusVH',
              element: 'Status'
          }
      }]
      po_status,
      po_priority,
      ccode,
      create_by,
      created_date_time,
      changed_date_time,
      lcl_last_changedtime,
      /* Associations */
      _Items : redirected to composition child ZC_V_AKP_PURCHASEITEMS,
      _Status
}
