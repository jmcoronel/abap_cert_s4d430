@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Uso de Parametros'
@Metadata.ignorePropagatedAnnotations: false
define view entity ZJMCR_USE_PARAMETERS
  as select from ZJMCR_C_PARAMETERS( targetCurr: 'EUR', ExRateDate: $session.system_date )
{
  key EmployeeId,
      FirstName,
      LastName,
      BirthDate,
      EntryDate,
      SalaryAnual,
      CurrSalary,
      Annualsalaryconverted,
      TargetCurrency,
      ExchangeRateDate
}
