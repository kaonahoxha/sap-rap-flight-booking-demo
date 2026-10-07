# Application Architecture

The Flight Booking Demo follows a layered SAP RAP architecture.

## Data Layer

zfb_booking.ddls

Defines the persistent database table containing flight booking information.

## Business Data Model

zi_flight_booking.ddls

Defines the root CDS view entity used by the RAP business object.

## Behaviour Layer

zi_flight_booking.bdef

Provides create, update and delete operations and defines validation behaviour.

The behaviour implementation rejects bookings where the selected flight date is in the past.

## Projection Layer

zc_flight_booking.ddls

Provides the projection exposed to consumers of the application.

## Service Layer

zui_flight_booking.srvd

Exposes the Flight Booking projection as a service suitable for OData consumption.

## Presentation Layer

Fiori Elements metadata annotations define the List Report and Object Page presentation.

## Application Flow

Database Table
→ CDS View
→ RAP Business Object
→ Projection
→ OData Service
→ Fiori Elements
