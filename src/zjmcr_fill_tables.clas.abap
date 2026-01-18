CLASS zjmcr_fill_tables DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zjmcr_fill_tables IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DELETE FROM zjmcr_employee.
    DELETE FROM zjmcr_depment.
    COMMIT WORK.

    DATA: lt_employee   TYPE TABLE OF zjmcr_employee,
          lt_department TYPE TABLE OF zjmcr_depment.
    DATA(sys_date) = cl_abap_context_info=>get_system_date( ).
    DATA(sys_time) = cl_abap_context_info=>get_system_time( ).
    CONCATENATE sys_date sys_time INTO DATA(sys_tstmp).

    lt_department = VALUE #(
        (
            id = 'SISTEMAS01'
            description = 'Sistemas'
            head_id     = '00000017'
            assistant_id = 0
            created_by = 'JMCORONEL'
            created_at = sys_tstmp
            local_last_changed_by = 'JMCORONEL'
            local_last_changed_at = sys_tstmp
            last_changed_at = sys_tstmp
        )
        (
            id = 'ADMON01'
            description = 'Administración'
            head_id     = 0
            assistant_id = 0
            created_by = 'JMCORONEL'
            created_at = sys_tstmp
            local_last_changed_by = 'JMCORONEL'
            local_last_changed_at = sys_tstmp
            last_changed_at = sys_tstmp
        )
        (
            id = 'COORDINA01'
            description = 'Coordinación'
            head_id     = '00000073'
            assistant_id = 0
            created_by = 'JMCORONEL'
            created_at = sys_tstmp
            local_last_changed_by = 'JMCORONEL'
            local_last_changed_at = sys_tstmp
            last_changed_at = sys_tstmp
        )
      ).
    lt_employee = VALUE #(
        (
            employee_id           = '00000017'
            first_name            = 'José Miguel'
            last_name             = 'Coronel Rosal'
            birth_date            = '19740301'
            entry_date            = '20250301'
            email_address         = 'josemiguelcoronel@gmail.com'
            department_id         = 'SISTEMAS01'
            salary_anual          = '2500'
            curr_salary           = 'USD'
            created_by            = 'JMCORONEL'
            created_at            = sys_tstmp
            local_last_changed_by = 'JMCORONEL'
            local_last_changed_at = sys_tstmp
            last_changed_at       = sys_tstmp
        )
        (
            employee_id           = '00000003'
            first_name            = 'José Gregorio'
            last_name             = 'Coronel Colombo'
            birth_date            = '20030505'
            entry_date            = '20260101'
            email_address         = 'josegregoriocoronelcolombo@gmail.com'
            department_id         = 'SISTEMAS01'
            salary_anual          = '2200'
            curr_salary           = 'USD'
            created_by            = 'JMCORONEL'
            created_at            = sys_tstmp
            local_last_changed_by = 'JMCORONEL'
            local_last_changed_at = sys_tstmp
            last_changed_at       = sys_tstmp
        )
        (
            employee_id           = '00000007'
            first_name            = 'José Ignacio'
            last_name             = 'Coronel Colombo'
            birth_date            = '20070713'
            entry_date            = '20260115'
            email_address         = 'joseignaciocoronelcolombo@gmail.com'
            department_id         = 'ADMON01'
            salary_anual          = '1500'
            curr_salary           = 'USD'
            created_by            = 'JMCORONEL'
            created_at            = sys_tstmp
            local_last_changed_by = 'JMCORONEL'
            local_last_changed_at = sys_tstmp
            last_changed_at       = sys_tstmp
        )
        (
            employee_id           = '00000073'
            first_name            = 'Marylin'
            last_name             = 'Colombo Ruiz'
            birth_date            = '19730321'
            entry_date            = '20250201'
            email_address         = 'marylincolombo@gmail.com'
            department_id         = 'COORDINA01'
            salary_anual          = '1200'
            curr_salary           = 'USD'
            created_by            = 'JMCORONEL'
            created_at            = sys_tstmp
            local_last_changed_by = 'JMCORONEL'
            local_last_changed_at = sys_tstmp
            last_changed_at       = sys_tstmp
        )
     ).


    TRY.
        INSERT zjmcr_employee FROM TABLE @lt_employee.
        INSERT zjmcr_depment FROM TABLE @lt_department.
        COMMIT WORK.
      CATCH cx_root INTO DATA(exc_sthm).
        out->write( `Something went wrong` ).
        out->write( exc_sthm->get_text( ) ).
    ENDTRY.

  ENDMETHOD.

ENDCLASS.
