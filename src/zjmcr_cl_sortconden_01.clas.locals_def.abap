*"* use this source file for any type of declarations (class
*"* definitions, interfaces or type declarations) you need for
*"* components in the private section
    TYPES:
      BEGIN OF st_connections_buffer,
        carrier_id      TYPE /dmo/carrier_id,
        connection_id   TYPE /dmo/connection_id,
        airport_from_id TYPE /dmo/airport_from_id,
        airport_to_id   TYPE /dmo/airport_to_id,
        departure_time  TYPE /dmo/flight_departure_time,
        arrival_time    TYPE /dmo/flight_departure_time,
        timzone_from TYPE timezone,
        timzone_to TYPE timezone,
       duration        TYPE i,
      END OF st_connections_buffer.
