@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee (Consumption)'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #D,
    sizeCategory:   #M,
    dataClass:      #MASTER
}
define view entity ZJMCR_C_EMPLOYEE_EXP
  as select from /LRN/R_Employee_Rel
{
  key EmployeeId,
      FirstName,
      LastName,
      DepartmentId,

      _Department.Description             as DepartmentDescription,
      //        _Department._Assistant.LastName          as AssistantName,

      concat_with_space( _Department._Assistant.FirstName,
                         _Department._Assistant.LastName,
                         1 )              as AssistantName,

      division( dats_days_between( EntryDate,
                 $session.system_date ),
                 365,
                 1 )                      as CompanyAffiliation,

      @EndUserText.label: 'Employee Role'
      case EmployeeId
        when _Department.HeadId      then 'H'
        when _Department.AssistantId then 'A'
        else ' '
      end                                 as EmployeeRole,

      //      @EndUserText.label: 'Monthly Salary'
      //      @Semantics.amount.currencyCode: 'CurrencyCode'
      //      cast( AnnualSalary as abap.fltp ) / 12.0 as MonthlySalary,

      @EndUserText.label: 'Monthly Salary'
      @Semantics.amount.currencyCode: 'CurrencyCodeUSD'
      cast( $projection.AnnualSalaryConverted as abap.fltp )
      / 12.0                              as MonthlySalaryConverted,

      //      CurrencyCode,
      cast( 'USD' as /dmo/currency_code ) as CurrencyCodeUSD,

      @EndUserText.label: 'Annual Salary'
      @Semantics.amount.currencyCode: 'CurrencyCodeUSD'
      currency_conversion( amount             => AnnualSalary,
                           source_currency    => CurrencyCode ,
                           target_currency    => $projection.CurrencyCodeUSD,
                           exchange_rate_date => $session.system_date
                         )                as AnnualSalaryConverted,

      /* Associations */
      _Department

}
