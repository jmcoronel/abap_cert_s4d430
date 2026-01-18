@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data Definition de Departamentos'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZJMCR_R_DEPARTMENT as select from zjmcr_depment
association to ZJMCR_R_EMPLOYEE as _Head on $projection.HeadId = _Head.EmployeeId
{
    key id as Id,
    description as Description,
    head_id as HeadId,
    assistant_id as AssistantId,
    created_by as CreatedBy,
    created_at as CreatedAt,
    local_last_changed_by as LocalLastChangedBy,
    local_last_changed_at as LocalLastChangedAt,
    last_changed_at as LastChangedAt,
    _Head
}
