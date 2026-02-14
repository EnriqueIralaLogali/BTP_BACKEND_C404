@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking Supplement - Interface Entity'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZBKSPPL_I_C404
  as projection on zbksppl_r_c404
{
  key BooksupplUUID,
      TravelUUID,
      BookingUUID,
      BookingSupplementID,
      SupplementID,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      Price,
      CurrencyCode, 
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,
      
      /* Associations */
      _Booking : redirected to parent ZBOOKING_I_C404,
      _Product,
      _SupplementText,
      _Travel : redirected to ZTRAVEL_I_C404
}
