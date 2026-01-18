@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS de CDS'
@Metadata.ignorePropagatedAnnotations: true
define view entity zjmcr_df_2_test01 as select from zjmcr_df_test01
{
    key EmployeeId,
    FirstName,
    LastName,
    BirthDate,
    EntryDate,
    EmailAddress,
    @Semantics.amount.currencyCode: 'Currcode'
    SalaryAnual,
    CurrSalary as Currcode,
    CreatedBy,
    CreatedAt,
    LocalLastChangedBy,
    LocalLastChangedAt,
    LastChangedAt
}
