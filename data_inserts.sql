

INSERT INTO airlines (airline_id, airline_name, country) VALUES
(1, 'Air India', 'India'),
(2, 'IndiGo', 'India'),
(3, 'SpiceJet', 'India'),
(4, 'Vistara', 'India'),
(5, 'Go First', 'India'),
(6, 'AirAsia India', 'India'),
(7, 'Alliance Air', 'India'),
(8, 'Emirates', 'UAE'),
(9, 'Qatar Airways', 'Qatar'),
(10, 'Singapore Airlines', 'Singapore'),
(11, 'Lufthansa', 'Germany'),
(12, 'British Airways', 'UK'),
(13, 'American Airlines', 'USA'),
(14, 'United Airlines', 'USA'),
(15, 'Delta Airlines', 'USA'),
(16, 'Turkish Airlines', 'Turkey'),
(17, 'Air France', 'France'),
(18, 'KLM Royal Dutch', 'Netherlands'),
(19, 'Etihad Airways', 'UAE'),
(20, 'Cathay Pacific', 'Hong Kong'),
(21, 'Thai Airways', 'Thailand'),
(22, 'Japan Airlines', 'Japan'),
(23, 'Malaysia Airlines', 'Malaysia'),
(24, 'SriLankan Airlines', 'Sri Lanka'),
(25, 'China Southern', 'China'),
(26, 'Ethiopian Airlines', 'Ethiopia'),
(27, 'Saudia', 'Saudi Arabia'),
(28, 'Air Canada', 'Canada'),
(29, 'Qantas', 'Australia'),
(30, 'Swiss International', 'Switzerland');




INSERT INTO airports (airport_id, airport_name, city, country) VALUES
(1, 'Indira Gandhi International Airport', 'Delhi', 'India'),
(2, 'Chhatrapati Shivaji Maharaj International Airport', 'Mumbai', 'India'),
(3, 'Kempegowda International Airport', 'Bangalore', 'India'),
(4, 'Rajiv Gandhi International Airport', 'Hyderabad', 'India'),
(5, 'Netaji Subhas Chandra Bose International Airport', 'Kolkata', 'India'),
(6, 'Sardar Vallabhbhai Patel International Airport', 'Ahmedabad', 'India'),
(7, 'Cochin International Airport', 'Kochi', 'India'),
(8, 'Chennai International Airport', 'Chennai', 'India'),
(9, 'Pune Airport', 'Pune', 'India'),
(10, 'Goa International Airport', 'Goa', 'India'),
(11, 'Dubai International Airport', 'Dubai', 'UAE'),
(12, 'Doha Hamad International Airport', 'Doha', 'Qatar'),
(13, 'Singapore Changi Airport', 'Singapore', 'Singapore'),
(14, 'Heathrow Airport', 'London', 'UK'),
(15, 'Frankfurt Airport', 'Frankfurt', 'Germany'),
(16, 'Charles de Gaulle Airport', 'Paris', 'France'),
(17, 'Schiphol Airport', 'Amsterdam', 'Netherlands'),
(18, 'John F. Kennedy International Airport', 'New York', 'USA'),
(19, 'Los Angeles International Airport', 'Los Angeles', 'USA'),
(20, 'Toronto Pearson International Airport', 'Toronto', 'Canada'),
(21, 'Sydney Kingsford Smith Airport', 'Sydney', 'Australia'),
(22, 'Zurich Airport', 'Zurich', 'Switzerland'),
(23, 'Beijing Capital International Airport', 'Beijing', 'China'),
(24, 'Tokyo Narita Airport', 'Tokyo', 'Japan'),
(25, 'Kuala Lumpur International Airport', 'Kuala Lumpur', 'Malaysia'),
(26, 'Colombo Bandaranaike International Airport', 'Colombo', 'Sri Lanka'),
(27, 'Bangkok Suvarnabhumi Airport', 'Bangkok', 'Thailand'),
(28, 'Riyadh King Khalid International Airport', 'Riyadh', 'Saudi Arabia'),
(29, 'Addis Ababa Bole International Airport', 'Addis Ababa', 'Ethiopia'),
(30, 'Doha Al Udeid Airbase', 'Doha', 'Qatar');


ALTER TABLE aircraft ADD COLUMN manufacturer VARCHAR(50);

INSERT INTO aircraft (aircraft_id, model, capacity, manufacturer) VALUES
(1, 'Airbus A320', 180, 'Airbus'),
(2, 'Airbus A321', 220, 'Airbus'),
(3, 'Airbus A330', 270, 'Airbus'),
(4, 'Airbus A350', 300, 'Airbus'),
(5, 'Airbus A380', 500, 'Airbus'),
(6, 'Boeing 737-800', 189, 'Boeing'),
(7, 'Boeing 737 MAX', 200, 'Boeing'),
(8, 'Boeing 747-8', 410, 'Boeing'),
(9, 'Boeing 767', 250, 'Boeing'),
(10, 'Boeing 777-300ER', 396, 'Boeing'),
(11, 'Boeing 787-9', 296, 'Boeing'),
(12, 'ATR 72', 70, 'ATR'),
(13, 'Bombardier Q400', 78, 'Bombardier'),
(14, 'Embraer E190', 100, 'Embraer'),
(15, 'Embraer E195', 120, 'Embraer'),
(16, 'Cessna 208 Caravan', 9, 'Cessna'),
(17, 'Gulfstream G650', 18, 'Gulfstream'),
(18, 'Dassault Falcon 7X', 14, 'Dassault'),
(19, 'Bombardier CRJ900', 90, 'Bombardier'),
(20, 'Airbus A310', 280, 'Airbus'),
(21, 'Boeing 727', 150, 'Boeing'),
(22, 'McDonnell Douglas MD-11', 293, 'McDonnell Douglas'),
(23, 'Boeing 757', 200, 'Boeing'),
(24, 'Lockheed L-1011', 250, 'Lockheed'),
(25, 'Antonov An-225', 250, 'Antonov'),
(26, 'Comac C919', 158, 'Comac'),
(27, 'Sukhoi Superjet 100', 108, 'Sukhoi'),
(28, 'Bombardier Global 6000', 19, 'Bombardier'),
(29, 'Beechcraft 1900D', 19, 'Beechcraft'),
(30, 'Pilatus PC-12', 9, 'Pilatus');




INSERT INTO flights (flight_id, airline_id, aircraft_id, origin_airport_id, destination_airport_id, departure_time, arrival_time) VALUES
(1, 1, 1, 1, 2, '2025-07-01 08:00', '2025-07-01 10:00'),
(2, 2, 2, 3, 4, '2025-07-01 09:30', '2025-07-01 11:30'),
(3, 3, 3, 5, 6, '2025-07-01 12:00', '2025-07-01 14:30'),
(4, 4, 4, 7, 8, '2025-07-01 14:00', '2025-07-01 16:00'),
(5, 5, 5, 9, 10, '2025-07-01 18:00', '2025-07-01 20:00'),
(6, 6, 6, 11, 12, '2025-07-02 06:00', '2025-07-02 09:00'),
(7, 7, 7, 13, 14, '2025-07-02 08:00', '2025-07-02 12:00'),
(8, 8, 8, 15, 16, '2025-07-02 11:00', '2025-07-02 15:00'),
(9, 9, 9, 17, 18, '2025-07-02 13:00', '2025-07-02 17:00'),
(10, 10, 10, 19, 20, '2025-07-02 15:00', '2025-07-02 20:00'),
(11, 11, 11, 21, 22, '2025-07-03 07:00', '2025-07-03 12:00'),
(12, 12, 12, 23, 24, '2025-07-03 10:00', '2025-07-03 15:00'),
(13, 13, 13, 25, 26, '2025-07-03 13:00', '2025-07-03 17:00'),
(14, 14, 14, 27, 28, '2025-07-03 16:00', '2025-07-03 20:00'),
(15, 15, 15, 29, 30, '2025-07-03 19:00', '2025-07-04 00:00'),
(16, 16, 16, 2, 3, '2025-07-04 06:00', '2025-07-04 08:00'),
(17, 17, 17, 4, 5, '2025-07-04 09:00', '2025-07-04 11:00'),
(18, 18, 18, 6, 7, '2025-07-04 12:00', '2025-07-04 14:00'),
(19, 19, 19, 8, 9, '2025-07-04 15:00', '2025-07-04 17:00'),
(20, 20, 20, 10, 11, '2025-07-04 18:00', '2025-07-04 20:00'),
(21, 21, 21, 12, 13, '2025-07-05 07:00', '2025-07-05 10:00'),
(22, 22, 22, 14, 15, '2025-07-05 09:00', '2025-07-05 12:00'),
(23, 23, 23, 16, 17, '2025-07-05 11:00', '2025-07-05 14:00'),
(24, 24, 24, 18, 19, '2025-07-05 13:00', '2025-07-05 16:00'),
(25, 25, 25, 20, 21, '2025-07-05 15:00', '2025-07-05 18:00'),
(26, 26, 26, 22, 23, '2025-07-05 17:00', '2025-07-05 20:00'),
(27, 27, 27, 24, 25, '2025-07-05 19:00', '2025-07-05 22:00'),
(28, 28, 28, 26, 27, '2025-07-06 06:00', '2025-07-06 09:00'),
(29, 29, 29, 28, 29, '2025-07-06 08:00', '2025-07-06 11:00'),
(30, 30, 30, 30, 1, '2025-07-06 10:00', '2025-07-06 14:00');



INSERT INTO passengers (passenger_id, passenger_name, passport_number, nationality) VALUES
(1, 'Amit Kumar', 'P1234567', 'India'),
(2, 'Neha Sharma', 'P2345678', 'India'),
(3, 'Rahul Mehta', 'P3456789', 'India'),
(4, 'Priya Singh', 'P4567890', 'India'),
(5, 'Sunil Reddy', 'P5678901', 'India'),
(6, 'Meera Nair', 'P6789012', 'India'),
(7, 'Sanjay Gupta', 'P7890123', 'India'),
(8, 'Anita Das', 'P8901234', 'India'),
(9, 'Vikram Rao', 'P9012345', 'India'),
(10, 'Divya Iyer', 'P0123456', 'India'),
(11, 'John Doe', 'A1234567', 'USA'),
(12, 'Jane Smith', 'A2345678', 'USA'),
(13, 'Carlos Rivera', 'A3456789', 'Mexico'),
(14, 'Emily Brown', 'A4567890', 'UK'),
(15, 'Ali Khan', 'A5678901', 'Pakistan'),
(16, 'Fatima Zahra', 'A6789012', 'Morocco'),
(17, 'David Lee', 'A7890123', 'Canada'),
(18, 'Sara Kim', 'A8901234', 'South Korea'),
(19, 'Mohammed Al Farsi', 'A9012345', 'Oman'),
(20, 'Lina Chen', 'A0123456', 'China'),
(21, 'Raj Patel', 'B1234567', 'India'),
(22, 'Sneha Kulkarni', 'B2345678', 'India'),
(23, 'Arjun Desai', 'B3456789', 'India'),
(24, 'Kiran Joshi', 'B4567890', 'India'),
(25, 'Rohit Malhotra', 'B5678901', 'India'),
(26, 'Pooja Verma', 'B6789012', 'India'),
(27, 'Abhishek Sinha', 'B7890123', 'India'),
(28, 'Ritu Kapoor', 'B8901234', 'India'),
(29, 'Nikhil Jain', 'B9012345', 'India'),
(30, 'Swati Bansal', 'B0123456', 'India');






INSERT INTO crew (crew_id, crew_name, role, nationality) VALUES
(1, 'Captain Rajeev Menon', 'Pilot', 'India'),
(2, 'Captain Anita Nair', 'Pilot', 'India'),
(3, 'First Officer Sunil Kumar', 'Co-Pilot', 'India'),
(4, 'First Officer Priya Dey', 'Co-Pilot', 'India'),
(5, 'Flight Attendant Neha Kapoor', 'Flight Attendant', 'India'),
(6, 'Flight Attendant Rahul Das', 'Flight Attendant', 'India'),
(7, 'Flight Attendant Smita Rao', 'Flight Attendant', 'India'),
(8, 'Flight Attendant Ajay Verma', 'Flight Attendant', 'India'),
(9, 'Engineer John Mathew', 'Engineer', 'India'),
(10, 'Engineer Sneha Roy', 'Engineer', 'India'),
(11, 'Captain Mark Thompson', 'Pilot', 'UK'),
(12, 'Captain Lisa Green', 'Pilot', 'USA'),
(13, 'First Officer Tom White', 'Co-Pilot', 'USA'),
(14, 'First Officer Sarah Lee', 'Co-Pilot', 'Canada'),
(15, 'Flight Attendant Emily Davis', 'Flight Attendant', 'USA'),
(16, 'Flight Attendant Carlos Mendez', 'Flight Attendant', 'Mexico'),
(17, 'Flight Attendant Anna Smith', 'Flight Attendant', 'UK'),
(18, 'Flight Attendant Lina Park', 'Flight Attendant', 'South Korea'),
(19, 'Engineer Ali Hassan', 'Engineer', 'UAE'),
(20, 'Engineer David Wong', 'Engineer', 'Singapore'),
(21, 'Captain Mohan Iyer', 'Pilot', 'India'),
(22, 'First Officer Karthik Sharma', 'Co-Pilot', 'India'),
(23, 'Flight Attendant Ramesh Gupta', 'Flight Attendant', 'India'),
(24, 'Flight Attendant Kavita Joshi', 'Flight Attendant', 'India'),
(25, 'Engineer Varun Nair', 'Engineer', 'India'),
(26, 'Engineer Deepa Reddy', 'Engineer', 'India'),
(27, 'Captain Ravi Shankar', 'Pilot', 'India'),
(28, 'First Officer Arvind Desai', 'Co-Pilot', 'India'),
(29, 'Flight Attendant Meena Pillai', 'Flight Attendant', 'India'),
(30, 'Flight Attendant Suresh Babu', 'Flight Attendant', 'India');



INSERT INTO incidents (incident_id, flight_id, date, description) VALUES
(1, 1, '2025-06-15', 'Ahmedabad crash: emergency landing failed due to engine failure'),
(2, 2, '2025-06-16', 'Minor runway excursion during landing'),
(3, 3, '2025-06-17', 'Bird strike during takeoff'),
(4, 4, '2025-06-18', 'Cabin pressure loss at 30,000 ft'),
(5, 5, '2025-06-19', 'Landing gear malfunction, safe landing'),
(6, 6, '2025-06-20', 'Hydraulic system failure mid-flight'),
(7, 7, '2025-06-21', 'Engine flameout, single engine landing'),
(8, 8, '2025-06-22', 'Runway overrun, no injuries'),
(9, 9, '2025-06-23', 'Navigation system failure, manual control'),
(10, 10, '2025-06-24', 'Cargo hold fire, contained'),
(11, 11, '2025-06-25', 'Fuel leak detected mid-air, emergency diversion'),
(12, 12, '2025-06-26', 'Severe turbulence caused passenger injuries'),
(13, 13, '2025-06-27', 'Tailstrike during takeoff, return to airport'),
(14, 14, '2025-06-28', 'Lightning strike on fuselage, safe landing'),
(15, 15, '2025-06-29', 'Smoke detected in cabin, emergency descent'),
(16, 16, '2025-06-30', 'Autopilot failure during cruise'),
(17, 17, '2025-07-01', 'Hard landing caused structural damage'),
(18, 18, '2025-07-02', 'Bird ingestion in engine, returned safely'),
(19, 19, '2025-07-03', 'Mid-air collision avoided via TCAS'),
(20, 20, '2025-07-04', 'Door seal failure, depressurization'),
(21, 21, '2025-07-05', 'Fuel pump failure, diverted to alternate'),
(22, 22, '2025-07-06', 'Brake failure on landing roll'),
(23, 23, '2025-07-07', 'Fire in galley equipment'),
(24, 24, '2025-07-08', 'Uncommanded rudder input, stabilized'),
(25, 25, '2025-07-09', 'Wingtip strike on taxi'),
(26, 26, '2025-07-10', 'Bird strike, minor engine damage'),
(27, 27, '2025-07-11', 'Instrument failure, visual flight rules applied'),
(28, 28, '2025-07-12', 'Cracked windshield mid-flight'),
(29, 29, '2025-07-13', 'Seized landing gear, foam landing'),
(30, 30, '2025-07-14', 'Unresponsive flight controls, emergency procedures used');



INSERT INTO investigations (investigation_id, incident_id, authority, status) VALUES
(1, 1, 'DGCA India', 'Ongoing'),
(2, 2, 'DGCA India', 'Closed'),
(3, 3, 'DGCA India', 'Closed'),
(4, 4, 'DGCA India', 'Ongoing'),
(5, 5, 'DGCA India', 'Closed'),
(6, 6, 'DGCA India', 'Closed'),
(7, 7, 'DGCA India', 'Closed'),
(8, 8, 'DGCA India', 'Closed'),
(9, 9, 'DGCA India', 'Closed'),
(10, 10, 'DGCA India', 'Closed'),
(11, 11, 'DGCA India', 'Closed'),
(12, 12, 'DGCA India', 'Closed'),
(13, 13, 'DGCA India', 'Closed'),
(14, 14, 'DGCA India', 'Closed'),
(15, 15, 'DGCA India', 'Closed'),
(16, 16, 'DGCA India', 'Closed'),
(17, 17, 'DGCA India', 'Closed'),
(18, 18, 'DGCA India', 'Closed'),
(19, 19, 'DGCA India', 'Closed'),
(20, 20, 'DGCA India', 'Closed'),
(21, 21, 'DGCA India', 'Ongoing'),
(22, 22, 'DGCA India', 'Closed'),
(23, 23, 'DGCA India', 'Closed'),
(24, 24, 'DGCA India', 'Closed'),
(25, 25, 'DGCA India', 'Closed'),
(26, 26, 'DGCA India', 'Closed'),
(27, 27, 'DGCA India', 'Closed'),
(28, 28, 'DGCA India', 'Closed'),
(29, 29, 'DGCA India', 'Ongoing'),
(30, 30, 'DGCA India', 'Ongoing');



INSERT INTO compensations (compensation_id, incident_id, passenger_id, amount, status) VALUES
(1, 1, 1, 500000, 'Paid'),
(2, 1, 2, 500000, 'Paid'),
(3, 1, 3, 500000, 'Pending'),
(4, 1, 4, 500000, 'Pending'),
(5, 2, 5, 10000, 'Paid'),
(6, 3, 6, 15000, 'Paid'),
(7, 4, 7, 20000, 'Paid'),
(8, 5, 8, 10000, 'Paid'),
(9, 6, 9, 50000, 'Paid'),
(10, 7, 10, 75000, 'Paid'),
(11, 8, 11, 5000, 'Paid'),
(12, 9, 12, 12000, 'Paid'),
(13, 10, 13, 30000, 'Paid'),
(14, 11, 14, 25000, 'Paid'),
(15, 12, 15, 8000, 'Paid'),
(16, 13, 16, 20000, 'Paid'),
(17, 14, 17, 18000, 'Paid'),
(18, 15, 18, 22000, 'Paid'),
(19, 16, 19, 27000, 'Paid'),
(20, 17, 20, 24000, 'Paid'),
(21, 18, 21, 16000, 'Paid'),
(22, 19, 22, 35000, 'Paid'),
(23, 20, 23, 30000, 'Paid'),
(24, 21, 24, 40000, 'Pending'),
(25, 22, 25, 12000, 'Paid'),
(26, 23, 26, 10000, 'Paid'),
(27, 24, 27, 15000, 'Paid'),
(28, 25, 28, 20000, 'Paid'),
(29, 26, 29, 8000, 'Paid'),
(30, 27, 30, 9000, 'Paid');








INSERT INTO reservations (reservation_id, flight_id, passenger_id, reservation_date) VALUES
(1, 1, 1, '2025-06-01'),
(2, 2, 2, '2025-06-02'),
(3, 3, 3, '2025-06-03'),
(4, 4, 4, '2025-06-04'),
(5, 5, 5, '2025-06-05'),
(6, 1, 6, '2025-06-06'),
(7, 2, 7, '2025-06-07'),
(8, 3, 8, '2025-06-08'),
(9, 4, 9, '2025-06-09'),
(10, 5, 10, '2025-06-10'),
(11, 1, 11, '2025-06-11'),
(12, 2, 12, '2025-06-12'),
(13, 3, 13, '2025-06-13'),
(14, 4, 14, '2025-06-14'),
(15, 5, 15, '2025-06-15'),
(16, 1, 16, '2025-06-16'),
(17, 2, 17, '2025-06-17'),
(18, 3, 18, '2025-06-18'),
(19, 4, 19, '2025-06-19'),
(20, 5, 20, '2025-06-20'),
(21, 1, 21, '2025-06-21'),
(22, 2, 22, '2025-06-22'),
(23, 3, 23, '2025-06-23'),
(24, 4, 24, '2025-06-24'),
(25, 5, 25, '2025-06-25'),
(26, 1, 26, '2025-06-26'),
(27, 2, 27, '2025-06-27'),
(28, 3, 28, '2025-06-28'),
(29, 4, 29, '2025-06-29'),
(30, 5, 30, '2025-06-30');



INSERT INTO payments (payment_id, reservation_id, amount, payment_date) VALUES
(1, 1, 5000.00, '2025-06-01'),
(2, 2, 5500.00, '2025-06-02'),
(3, 3, 6000.00, '2025-06-03'),
(4, 4, 6500.00, '2025-06-04'),
(5, 5, 7000.00, '2025-06-05'),
(6, 6, 5200.00, '2025-06-06'),
(7, 7, 5300.00, '2025-06-07'),
(8, 8, 5400.00, '2025-06-08'),
(9, 9, 5600.00, '2025-06-09'),
(10, 10, 5700.00, '2025-06-10'),
(11, 11, 5800.00, '2025-06-11'),
(12, 12, 5900.00, '2025-06-12'),
(13, 13, 6100.00, '2025-06-13'),
(14, 14, 6200.00, '2025-06-14'),
(15, 15, 6300.00, '2025-06-15'),
(16, 16, 6400.00, '2025-06-16'),
(17, 17, 5500.00, '2025-06-17'),
(18, 18, 5600.00, '2025-06-18'),
(19, 19, 5700.00, '2025-06-19'),
(20, 20, 5800.00, '2025-06-20'),
(21, 21, 5900.00, '2025-06-21'),
(22, 22, 6000.00, '2025-06-22'),
(23, 23, 6100.00, '2025-06-23'),
(24, 24, 6200.00, '2025-06-24'),
(25, 25, 6300.00, '2025-06-25'),
(26, 26, 6400.00, '2025-06-26'),
(27, 27, 6500.00, '2025-06-27'),
(28, 28, 6600.00, '2025-06-28'),
(29, 29, 6700.00, '2025-06-29'),
(30, 30, 6800.00, '2025-06-30');
