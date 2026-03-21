@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'HCM Consumption entity'
@Metadata.ignorePropagatedAnnotations: true

@Metadata.allowExtensions: true

define root view entity ZHCM_C_C404
  provider contract transactional_query
  as projection on zhcm_r_c404
{
      @ObjectModel.text.element: [ 'EName' ]
  key ENumber,
      EName,
      EDepartment,
      Status,
      JobTitle,
      StartDate,
      EndDate,
      Email,
      @ObjectModel.text.element: [ 'MName' ]
      MNumber,
      MName,
      MDepartment,
      @Semantics.systemDateTime.createdAt: true
      CreaDateTime,
      @Semantics.user.createdBy: true
      CreaUname,
      @Semantics.systemDateTime.lastChangedAt: true
      LchgDateTime,
      @Semantics.user.lastChangedBy: true
      LchgUname
}
