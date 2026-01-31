@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clients'
@Metadata.ignorePropagatedAnnotations: true

@Metadata.allowExtensions: true

define view entity zc_clients_log_c404
  as select from ztclientes_c404  as Clients

    inner join   ztclnts_lib_c404 as RelCliLib on RelCliLib.id_cliente = Clients.id_cliente

{
  key RelCliLib.id_libro  as BookID,
  key Clients.id_cliente  as ClientID,
  key Clients.tipo_acceso as AccessType,
      Clients.nombre      as Name,
      Clients.apellidos   as LastName,
      Clients.email       as Email,
      Clients.url         as Images
}
