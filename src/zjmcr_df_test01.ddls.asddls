@AbapCatalog.dataMaintenance: #RESTRICTED
@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data Definition Test 1'
@Metadata.ignorePropagatedAnnotations: true
define view entity zjmcr_df_test01
  as select from zjmcr_employee
{

  key employee_id           as EmployeeId,
      first_name            as FirstName,
      last_name             as LastName,
      birth_date            as BirthDate,
      entry_date            as EntryDate,
      email_address         as EmailAddress,
      @Semantics.amount.currencyCode: 'CurrSalary'
      salary_anual          as SalaryAnual,
      curr_salary           as CurrSalary,
      created_by            as CreatedBy,
      created_at            as CreatedAt,
      local_last_changed_by as LocalLastChangedBy,
      local_last_changed_at as LocalLastChangedAt,
      last_changed_at       as LastChangedAt

}
