CLASS zjmcr_use_struc_nested DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zjmcr_use_struc_nested IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA: person TYPE zjmcr_person.

    person-address-country_code = 'GT'.
    person-address-city         = 'Guatemala City'.
    person-address-street       = 'Boulevard Central'.

    out->write( person ).

  ENDMETHOD.
ENDCLASS.
