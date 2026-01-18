@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data Definition de 2do Nivel'
@Metadata.ignorePropagatedAnnotations: false
define view entity ZJMCR_C_EMPLOYEE
  as select from ZJMCR_R_EMPLOYEE
{
  key EmployeeId,
      FirstName,
      LastName,
      BirthDate,
      EntryDate,
      EmailAddress,
      DepartmentId,
      _Department.Description,
      _Department._Head.LastName as HeadName,
      SalaryAnual,
      CurrSalary,
      CreatedBy,
      CreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      /* Associations */
      _Department
}
