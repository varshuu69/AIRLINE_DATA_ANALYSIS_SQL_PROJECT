 # **SQL Project: Data Analysis for Airline Incidents & Reservation System**

Welcome to the GitHub repository for the Airline Incidents & Reservation System SQL
Project. This project showcases my expertise in SQL through a detailed analysis of
airline operational data, reservation records, and incident reports. It includes a wellstructured database schema, optimised SQL queries, and comprehensive insights into
airline performance and safety metrics. Explore this repository to view my approach to
solving complex business problems using data-driven strategies and structured query
language.


![AI&RS](https://github.com/varshuu69/AIRLINE_DATA_ANALYSIS_SQL_PROJECT/blob/main/ai%26rs%20review%20diagram.png?raw=true)



## **Entity-Relationship Diagram (ERD)**

The dataset comprises eleven tables:
Airlines, Airports, Aircrafts, Flights,Crew,Passengers,Payments,Reservations,
Incidents, Investigations and Compensation . Below is the structure of the ERD that
represents the relationships among these tables.



![ERD](https://github.com/varshuu69/AIRLINE_DATA_ANALYSIS_SQL_PROJECT/blob/main/ERD.png?raw=true)

## **Project Overview**

This project showcases my proficiency in solving complex SQL challenges within a
real-world airline business context. The primary objective was to analyze airline
reservations, flights, incidents, and passenger data to derive meaningful insights,
resolve operational issues, and support data-driven decisions. The database
includes detailed information about airlines, flights, passengers, crew, incidents,
investigations, compensations, and reservations.

## **Objectives**

This project solves real business problems for airline reservations and incident
management using PostgreSQL. I wrote advanced SQL queries to analyse data and
get useful insights for better decisions. While working on it, I improved my skills in
handling tables like airlines, flights, passengers, crew, incidents, and compensations.
I practised writing joins, aggregations, subqueries, and analytical SQL scripts.
Overall, this project helped me understand airline data better and support their
operations effectively

## **Requirements**

1. SQL Database: PostgreSQL (or any SQL database management system).
2. Airline Dataset Tables: Includes tables for airlines, flights, passengers, crew,
incidents, investigations, compensations, reservations, payments, and airports.

## **Database Schema**

## **Tables and Columns**

  #### airlines
- **airline_id**: Unique identifier for each airline
- **airline_name**: Name of the airline
- **country**: Country where the airline is based

#### aircraft
- **aircraft_id**: Unique identifier for each aircraft
- **airline_id**: References the airlines table
- **model**: Aircraft model name
- **capacity**: Passenger capacity of the aircraft

#### airports
- **airport_id**: Unique identifier for each airport
- **name**: Name of the airport
- **city**: City where the airport is located
- **country**: Country where the airport is located

#### flights
- **flight_id**: Unique identifier for each flight
- **airline_id**: References the airlines table
- **aircraft_id**: References the aircraft table
- **departure_airport_id**: References the airports table (departure)
- **arrival_airport_id**: References the airports table (arrival)
- **departure_time**: Scheduled departure time
- **arrival_time**: Scheduled arrival time
- **status**: Current status of the flight

#### passengers
- **passenger_id**: Unique identifier for each passenger
- **name**: Name of the passenger
- **email**: Email address of the passenger
- **phone**: Contact number of the passenger

#### reservations
- **reservation_id**: Unique identifier for each reservation
- **passenger_id**: References the passengers table
- **flight_id**: References the flights table
- **seat_number**: Allocated seat number
- **booking_date**: Date when reservation was made
- **payment_id**: References the payments table

#### payments
- **payment_id**: Unique identifier for each payment
- **amount**: Payment amount
- **payment_date**: Date of payment
- **method**: Payment method used (card, UPI, net banking, etc.)

#### crew
- **crew_id**: Unique identifier for each crew member
- **name**: Name of the crew member
- **role**: Role/designation (pilot, co-pilot, cabin crew, etc.)
- **flight_id**: References the flights table they are assigned to

#### incidents
- **incident_id**: Unique identifier for each incident
- **flight_id**: References the flights table
- **description**: Brief description of the incident
- **date**: Date when the incident occurred

#### investigations
- **investigation_id**: Unique identifier for each investigation
- **incident_id**: References the incidents table
- **investigation_date**: Date when the investigation was conducted
- **outcome**: Result or conclusion of the investigation

#### compensations
- **compensation_id**: Unique identifier for each compensation
- **passenger_id**: References the passengers table
- **amount**: Compensation amount paid
- **reason**: Reason for compensation (delay, cancellation, incident)
- **date**: Date when compensation was provided


## **Project Focus**

-  Complex Joins and Aggregations: Advanced SQL joins and aggregations
   across airline, flight, passenger, and incident data.
-  Window Functions: Using functions for rankings, running totals, and timebased incident analysis.
-  Data Segmentation: Analysing flights, incidents, and compensations by time,
   aircraft model, or airline.
-  Operational Insights: Finding patterns such as top aircraft with incidents,
   busiest routes, or compensation trends.
-  Real-World Problem Solving: Solving business problems in airline
   reservations and incident management using SQL

## **Acknowledgments**

This project was created to analyse airline reservation and incident management
data for deriving operational and business insights. Feel free to contribute, provide
suggestions, or customize the queries to fit your specific learning goals or
organizational needs. Happy learning and coding!

## **Conclusion**

This project demonstrates my ability to write advanced SQL queries to solve real-world
problems in the airline industry. By working with complex data involving flights,
passengers, incidents, and compensations, I improved my skills in data analysis and
database management. The queries developed here provide valuable insights that
can support airline operations and decision-making. Overall, this project has
strengthened my confidence in using SQL effectively for business analysis tasks.
