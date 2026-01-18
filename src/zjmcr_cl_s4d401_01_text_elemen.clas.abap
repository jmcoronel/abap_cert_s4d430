CLASS zjmcr_cl_s4d401_01_text_elemen DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zjmcr_cl_s4d401_01_text_elemen IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    out->write( text-001 ).
    out->write( 'How are you?'(hau) ).

  ENDMETHOD.
ENDCLASS.
