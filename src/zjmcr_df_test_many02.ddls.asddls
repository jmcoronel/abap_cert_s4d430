@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Test Many 02'
@Metadata.ignorePropagatedAnnotations: true
define view entity zjmcr_df_test_many02 as select from /DMO/I_Connection_R

{
    key AirlineID,
    key ConnectionID,

        // _Airline._Currency._Text.CurrencyName

        // _Airline._Currency._Text[ Language = 'E' ].CurrencyName

        _Airline._Currency._Text[ 1: Language = 'E' ].CurrencyName
  }
where
      AirlineID    = 'AA'
  and ConnectionID = '0017'


//{
//    key AirlineID,
//    key ConnectionID,
//    DepartureAirport,
//    DestinationAirport,
//    DepartureTime,
//    ArrivalTime,
//    Distance,
//    DistanceUnit,
//    /* Associations */
//    _Airline,
//    _Flight
//}
