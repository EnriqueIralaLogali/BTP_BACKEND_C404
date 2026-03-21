@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'HCM Interface entity'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZHCM_I_C404
provider contract transactional_interface
  as projection on zhcm_r_c404
{
  key ENumber,
      EName,
      EDepartment,
      Status,
      JobTitle,
      StartDate,
      EndDate,
      Email,
      MNumber,
      MName,
      MDepartment,
      CreaDateTime,
      CreaUname,
      LchgDateTime,
      LchgUname
}
