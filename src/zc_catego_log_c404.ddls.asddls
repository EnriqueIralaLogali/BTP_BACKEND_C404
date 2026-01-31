@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Categories'
@Metadata.ignorePropagatedAnnotations: true
define view entity zc_catego_log_c404
  as select from ztcatego_c404
{
  key bi_categ    as Category,
      descripcion as Description
}
