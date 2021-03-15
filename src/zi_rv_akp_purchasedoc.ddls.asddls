@EndUserText.label: 'Purchase document managed'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZI_RV_AKP_PurchaseDoc
  as select from zakp_pur_doc
  composition [0..*] of ZI_V_AKP_PurchaseItems as _Items
  association [1] to ZI_AKP_POStatus           as _Status on $projection.po_status = _Status.Status
{
  key purchase_doc,
      po_desc,
      po_status,
      po_priority,
      ccode,
      @Semantics.user.createdBy: true
      create_by,
      @Semantics.systemDateTime.createdAt: true
      created_date_time,
      @Semantics.systemDateTime.lastChangedAt: true
      changed_date_time,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      lcl_last_changedtime,
      _Items,
      _Status
}
