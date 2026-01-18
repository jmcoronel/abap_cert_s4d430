@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Test Many 01'
@Metadata.ignorePropagatedAnnotations: true
define view entity zjmcr_df_test_many01 as select from /DMO/I_Connection_R

{
    key AirlineID,
    key ConnectionID,

//        _Flight.OccupiedSeats
                sum(_Flight.OccupiedSeats) as TotalOccupiedSeats

  }
where
      AirlineID    = 'LH'   // Only one connection
  and ConnectionID = '0400' // fulfills this condition

  group by
    AirlineID,
    ConnectionID


//{
//key AirlineID,
//key ConnectionID,
//
// _Airline.CurrencyCode,
// _Flight.PlaneType,
//
//DepartureAirport,
//DestinationAirport
//
//}
//// where
//// AirlineID = 'LH'          // Only one connection
//// and ConnectionID = '0400' // fulfills this filter
//
//
//// and _Airline.CurrencyCode = 'EUR'
//// and _Flight.PlaneType = '747-400'
//
//
////{
////    key AirlineID,
////    key ConnectionID,
////    DepartureAirport,
////    DestinationAirport,
////    DepartureTime,
////    ArrivalTime,
////    Distance,
////    DistanceUnit,
////    /* Associations */
////    _Airline,
////    _Flight
////}
