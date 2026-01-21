@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'SYSTEM FIELD'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZJMCR_C_PARAMETERS

  with parameters
    targetCurr : abap.cuky,
    @Environment.systemField: #SYSTEM_DATE
    ExRateDate : abap.dats

  as select from ZJMCR_R_EMPLOYEE
{
  key EmployeeId,
      FirstName,
      LastName,
      BirthDate,
      EntryDate,
      @Semantics.amount.currencyCode: 'CurrSalary'
      SalaryAnual,
      CurrSalary,
      
      @Semantics.amount.currencyCode: 'Targetcurrency'
      currency_conversion( amount => SalaryAnual,
      source_currency => CurrSalary,
      target_currency => $parameters.targetCurr,
      exchange_rate_date => $parameters.ExRateDate ) as Annualsalaryconverted,
      
      $parameters.targetCurr                      as TargetCurrency,
      $session.system_date as ExchangeRateDate

}
