@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking Supplement - Consumption Entity'
@Metadata.ignorePropagatedAnnotations: true

@Metadata.allowExtensions: true

define view entity ZBKSPPL_C_C404
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
      LocalLastChangedAt,

      /* Associations */
      _Booking : redirected to parent ZBOOKING_C_C404,
      _Product,
      _SupplementText,
      _Travel  : redirected to ZTRAVEL_C_C404
}
