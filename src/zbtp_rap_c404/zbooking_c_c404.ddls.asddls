@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking - Consumption Entity'
@Metadata.ignorePropagatedAnnotations: true

@Metadata.allowExtensions: true

define view entity ZBOOKING_C_C404
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
      LocalLastChangedAt,

      /* Associations */
      _BookingStatus,
      _BookingSupplement : redirected to composition child ZBKSPPL_C_C404,
      _Carrier,
      _Connection,
      _Customer,
      _Travel            : redirected to parent ZTRAVEL_C_C404
}
