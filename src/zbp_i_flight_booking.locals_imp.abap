CLASS lhc_Booking DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS validateFlightDate
      FOR VALIDATE ON SAVE
      IMPORTING keys FOR Booking~validateFlightDate.

ENDCLASS.

CLASS lhc_Booking IMPLEMENTATION.

  METHOD validateFlightDate.

    READ ENTITIES OF ZI_FlightBooking IN LOCAL MODE
      ENTITY Booking
      FIELDS ( FlightDate )
      WITH CORRESPONDING #( keys )
      RESULT DATA(bookings).

    LOOP AT bookings INTO DATA(booking).

      IF booking-FlightDate < cl_abap_context_info=>get_system_date( ).

        APPEND VALUE #( %tky = booking-%tky ) TO failed-booking.

        APPEND VALUE #(
          %tky = booking-%tky
          %msg = new_message_with_text(
            severity = if_abap_behv_message=>severity-error
            text     = 'Flight date cannot be in the past'
          )
          %element-FlightDate = if_abap_behv=>mk-on
        ) TO reported-booking.

      ENDIF.

    ENDLOOP.

  ENDMETHOD.

ENDCLASS.
