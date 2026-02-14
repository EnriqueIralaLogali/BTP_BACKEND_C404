@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking - Interface Entity'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZBOOKING_I_C404
  as projection on zbooking_r_c404
{
  key BookingUUID,
      TravelUUID,
      BookingID,
      BookingDate,
      CustomerID,
      AirlineID,
      ConnectionID,
      FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      FlightPrice,
      CurrencyCode,
      BookingStatus,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,

      /* Associations */
      _BookingStatus,
      _BookingSupplement : redirected to composition child ZBKSPPL_I_C404,
      _Carrier,
      _Connection,
      _Customer,
      _Travel            : redirected to parent ZTRAVEL_I_C404
}
