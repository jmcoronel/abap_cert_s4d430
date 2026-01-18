@AbapCatalog.dataMaintenance: #RESTRICTED
@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data Definition Test 1'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZJMCR_R_EMPLOYEE
  as select from zjmcr_employee
  association [1..1] to ZJMCR_R_DEPARTMENT as _Department on $projection.DepartmentId = _Department.Id
{

  key employee_id           as EmployeeId,
      first_name            as FirstName,
      last_name             as LastName,
      birth_date            as BirthDate,
      entry_date            as EntryDate,
      email_address         as EmailAddress,
      department_id         as DepartmentId,
      @Semantics.amount.currencyCode: 'CurrSalary'
      salary_anual          as SalaryAnual,
      curr_salary           as CurrSalary,
      created_by            as CreatedBy,
      created_at            as CreatedAt,
      local_last_changed_by as LocalLastChangedBy,
      local_last_changed_at as LocalLastChangedAt,
      last_changed_at       as LastChangedAt,
      _Department

}
