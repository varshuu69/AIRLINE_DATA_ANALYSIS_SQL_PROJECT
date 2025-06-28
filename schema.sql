
DROP TABLE IF EXISTS payments CASCADE;
DROP TABLE IF EXISTS reservations CASCADE;
DROP TABLE IF EXISTS passengers CASCADE;
DROP TABLE IF EXISTS crew CASCADE;
DROP TABLE IF EXISTS flights CASCADE;
DROP TABLE IF EXISTS aircraft CASCADE;
DROP TABLE IF EXISTS airlines CASCADE;
DROP TABLE IF EXISTS airports CASCADE;
DROP TABLE IF EXISTS incidents CASCADE;
DROP TABLE IF EXISTS investigations CASCADE;
DROP TABLE IF EXISTS compensations CASCADE;





CREATE TABLE airlines (
    airline_id INT PRIMARY KEY,
    airline_name VARCHAR(100),
    country VARCHAR(50)
);

CREATE TABLE airports (
    airport_id INT PRIMARY KEY,
    airport_name VARCHAR(100),
    city VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE aircraft (
    aircraft_id   INT PRIMARY KEY,
    model VARCHAR(50),
    capacity INT
);



CREATE TABLE flights (
    flight_id INT PRIMARY KEY,
    airline_id INT REFERENCES airlines(airline_id),
    aircraft_id INT REFERENCES aircraft(aircraft_id),
    origin_airport_id INT REFERENCES airports(airport_id),
    destination_airport_id INT REFERENCES airports(airport_id),
    departure_time TIMESTAMP,
    arrival_time TIMESTAMP
);

CREATE TABLE passengers (
    passenger_id INT PRIMARY KEY,
    passenger_name VARCHAR(100),
    passport_number VARCHAR(20),
    nationality VARCHAR(50)
);

CREATE TABLE crew (
    crew_id INT PRIMARY KEY,
    crew_name VARCHAR(100),
    role VARCHAR(50),
    nationality VARCHAR(50)
);

CREATE TABLE reservations (
    reservation_id INT PRIMARY KEY,
    flight_id INT REFERENCES flights(flight_id),
    passenger_id INT REFERENCES passengers(passenger_id),
    reservation_date DATE
);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    reservation_id INT REFERENCES reservations(reservation_id),
    amount DECIMAL(10,2),
    payment_date DATE
);

CREATE TABLE incidents (
    incident_id INT  PRIMARY KEY,
    flight_id INT REFERENCES flights(flight_id),
    date DATE,
    description TEXT
);




CREATE TABLE investigations (
    investigation_id   INT PRIMARY KEY,
    incident_id INT REFERENCES incidents(incident_id),
    status VARCHAR(50)    
);

ALTER TABLE investigations ADD COLUMN authority VARCHAR(100);



CREATE TABLE compensations (
    compensation_id   INT PRIMARY KEY,
    incident_id INT REFERENCES incidents(incident_id),
    passenger_id INT REFERENCES passengers(passenger_id),
    amount DECIMAL(10,2)
);

ALTER TABLE compensations ADD COLUMN status VARCHAR(100);
