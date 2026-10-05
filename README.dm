# SAP RAP Flight Booking Demo

A beginner SAP ABAP Cloud project built to practise the core technologies used in modern SAP enterprise development.

## Project Goal

The aim of this project is to build a simple flight booking application using SAP ABAP Cloud and the RESTful Application Programming Model (RAP).

The application will demonstrate:

- ABAP Cloud fundamentals
- CDS Views
- RAP business objects
- OData service exposure
- Fiori Elements
- CRUD operations
- Clean enterprise application structure

## Planned Architecture

Database Table  
→ CDS View  
→ RAP Business Object  
→ OData Service  
→ Fiori Elements UI

## Main Features

The application will allow users to:

- Create a flight booking
- View existing bookings
- Update booking information
- Delete a booking
- Validate booking data

## Technologies

- SAP ABAP Cloud
- RAP
- CDS Views
- OData
- SAP BTP
- Fiori Elements

## Status

Work in progress.

## Project Structure

```text
src/
├── zfb_booking.ddls
├── zi_flight_booking.ddls
├── zi_flight_booking.bdef
├── zc_flight_booking.ddls
├── zc_flight_booking.bdef
├── zui_flight_booking.srvd
└── zc_flight_booking.metadata

Database Table
    ↓
Interface CDS View
    ↓
RAP Behaviour
    ↓
Projection View
    ↓
Service Definition
    ↓
OData
    ↓
Fiori Elements UI
