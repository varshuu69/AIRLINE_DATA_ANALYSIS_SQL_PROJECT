-- SQL QUERIES--




--AIRLINE ANALYSIS:--


  --1)Show airlines with no incidents:

    SELECT a.airline_name
    FROM airlines a
    WHERE a.airline_id NOT IN (
    SELECT DISTINCT f.airline_id
    FROM flights f
    JOIN incidents i ON f.flight_id = i.flight_id
 );

  --2)Airline with most incidents:

    SELECT a.airline_name, COUNT(i.incident_id) AS incident_count
    FROM airlines a
    JOIN flights f ON a.airline_id = f.airline_id
    JOIN incidents i ON f.flight_id = i.flight_id
    GROUP BY a.airline_name
    ORDER BY incident_count DESC
    LIMIT 1;

  --3)Airline with highest % of flights with incidents:

    SELECT a.airline_name,
    COUNT(DISTINCT i.incident_id)::decimal / COUNT(DISTINCT f.flight_id) * 100 AS incident_percentage
    FROM airlines a
    JOIN flights f ON a.airline_id = f.airline_id
    LEFT JOIN incidents i ON f.flight_id = i.flight_id
    GROUP BY a.airline_name
    ORDER BY incident_percentage DESC;



	
--AIRCRAFT QUERIES:--

  --1)Show all aircraft with capacity > 200:
    
	SELECT model, capacity FROM aircraft WHERE capacity > 200;

  --2)Find aircraft with most incidents:

    SELECT ac.model, COUNT(i.incident_id) AS incident_count
    FROM aircraft ac
    JOIN flights f ON ac.aircraft_id = f.aircraft_id
    JOIN incidents i ON f.flight_id = i.flight_id
    GROUP BY ac.model
    ORDER BY incident_count DESC
    LIMIT 1;

  --3)Top 3 aircraft with most incidents:

    SELECT ac.model, COUNT(i.incident_id) AS incident_count
    FROM aircraft ac
    JOIN flights f ON ac.aircraft_id = f.aircraft_id
    JOIN incidents i ON f.flight_id = i.flight_id
    GROUP BY ac.model
    ORDER BY incident_count DESC
    LIMIT 3;

  --4)Bottom 3 aircraft with most incidents:

    SELECT ac.model, COUNT(i.incident_id) AS incident_count
    FROM aircraft ac
    JOIN flights f ON ac.aircraft_id = f.aircraft_id
    JOIN incidents i ON f.flight_id = i.flight_id
    GROUP BY ac.model
    ORDER BY incident_count ASC
    LIMIT 3;


  --5)Aircraft with 0 incidents:

    SELECT ac.model, COUNT(i.incident_id) AS incident_count
    FROM aircraft ac
    LEFT JOIN flights f ON ac.aircraft_id = f.aircraft_id
    LEFT JOIN incidents i ON f.flight_id = i.flight_id
    GROUP BY ac.model
    HAVING COUNT(i.incident_id) = 0
    ORDER BY ac.model;

  --6)Most frequently used aircraft model:

    SELECT ac.model, COUNT(f.flight_id) AS flight_count
    FROM aircraft ac
    JOIN flights f ON ac.aircraft_id = f.aircraft_id
    GROUP BY ac.model
    ORDER BY flight_count DESC
    LIMIT 1;



	
--PASSENGER QUERIES:--

  --1)Show passengers with Indian nationality:

    SELECT passenger_name, passport_number FROM passengers WHERE nationality = 'India';

  --2)Passengers involved in incidents:

    SELECT DISTINCT p.passenger_name, i.description
    FROM passengers p
    JOIN reservations r ON p.passenger_id = r.passenger_id
    JOIN flights f ON r.flight_id = f.flight_id
    JOIN incidents i ON f.flight_id = i.flight_id;

  --3)List passengers who made reservations:

    SELECT p.passenger_name, r.reservation_date, f.flight_id
    FROM passengers p
    JOIN reservations r ON p.passenger_id = r.passenger_id
    JOIN flights f ON r.flight_id = f.flight_id
    ORDER BY r.reservation_date DESC;

  --4)Passengers with no reservation:

    SELECT p.passenger_name
    FROM passengers p
    LEFT JOIN reservations r ON p.passenger_id = r.passenger_id
    WHERE r.reservation_id IS NULL;

  --5)Find passengers who flew on all airlines:

    SELECT p.passenger_name
    FROM passengers p
    WHERE NOT EXISTS (
    SELECT a.airline_id FROM airlines a
    EXCEPT
    SELECT DISTINCT f.airline_id
    FROM reservations r
    JOIN flights f ON r.flight_id = f.flight_id
    WHERE r.passenger_id = p.passenger_id
);

  --6)Top 3 passengers who flew most flights:

    SELECT p.passenger_name, COUNT(r.flight_id) AS total_flights
    FROM passengers p
    JOIN reservations r ON p.passenger_id = r.passenger_id
    GROUP BY p.passenger_name
    ORDER BY total_flights DESC
    LIMIT 3;



	
--INVESTIGATION QUERIES:--

  --1)Show ongoing investigations:

    SELECT * FROM investigations WHERE status = 'Ongoing';

  --2)Show closed investigations:

    SELECT * FROM investigations WHERE status = 'Closed';

  --3)Flights with incidents that required ongoing investigation:

    SELECT f.flight_id, inv.status
    FROM flights f
    JOIN incidents i ON f.flight_id = i.flight_id
    JOIN investigations inv ON i.incident_id = inv.incident_id
    WHERE inv.status = 'Ongoing';



	
--FLIGHT ANALYSIS:--

  --1)Flights without incidents

    SELECT flight_id FROM flights WHERE flight_id NOT IN (SELECT flight_id FROM incidents);

  --2)Flights with different origin and destination:

    SELECT flight_id FROM flights WHERE origin_airport_id != destination_airport_id;

  --3)Flights with same origin and destination:

    SELECT flight_id FROM flights WHERE origin_airport_id = destination_airport_id;

  --4)Flights with no reservations:

    SELECT f.flight_id
    FROM flights f
    LEFT JOIN reservations r ON f.flight_id = r.flight_id
    WHERE r.reservation_id IS NULL;

  --5)Flights with multiple incidents:

    SELECT f.flight_id, COUNT(i.incident_id) AS total_incidents
    FROM flights f
    JOIN incidents i ON f.flight_id = i.flight_id
    GROUP BY f.flight_id
    HAVING COUNT(i.incident_id) > 1
    ORDER BY total_incidents DESC;

  --6)Flights with no passengers but had incidents:

    SELECT f.flight_id
    FROM flights f
    LEFT JOIN reservations r ON f.flight_id = r.flight_id
    JOIN incidents i ON f.flight_id = i.flight_id
    WHERE r.reservation_id IS NULL;

  --7)Rank airports where most incident flights originated:

    SELECT ap.airport_name, COUNT(i.incident_id) AS incident_count
    FROM airports ap
    JOIN flights f ON ap.airport_id = f.origin_airport_id
    JOIN incidents i ON f.flight_id = i.flight_id
    GROUP BY ap.airport_name
    ORDER BY incident_count DESC;

  --8)Row number for each flight by airline:

	SELECT f.flight_id, f.airline_id, 
    ROW_NUMBER() OVER (PARTITION BY f.airline_id ORDER BY f.flight_id) AS flight_seq
    FROM flights f;

  --9)Flights with most recent incident per airline:

    SELECT f.airline_id, f.flight_id, i.date,
    ROW_NUMBER() OVER (PARTITION BY f.airline_id ORDER BY i.date DESC) AS rn
    FROM flights f
    JOIN incidents i ON f.flight_id = i.flight_id;

  --10) Flights with No Passengers But Had Incidents:

    SELECT f.flight_id
    FROM flights f
    LEFT JOIN reservations r ON f.flight_id = r.flight_id
    JOIN incidents i ON f.flight_id = i.flight_id
    WHERE r.reservation_id IS NULL;



	
--INCIDENT ANALYSIS:--

  --1)Most recent incident:

    SELECT * FROM incidents ORDER BY date DESC LIMIT 1;

  --2)Average compensation per incident:

    SELECT incident_id, AVG(amount) AS avg_compensation FROM compensations GROUP BY incident_id;

  --3)Incidents by year:

    SELECT EXTRACT(YEAR FROM date) AS year, COUNT(*) AS incident_count FROM incidents GROUP BY year;

  --4)Incidents grouped by month:

    SELECT DATE_TRUNC('month', i.date) AS incident_month, COUNT(*) AS incident_count
    FROM incidents i
    GROUP BY incident_month
    ORDER BY incident_month;

  --5)Incidents grouped by quarter:

    SELECT DATE_TRUNC('quarter', i.date) AS incident_quarter, COUNT(*) AS incident_count
    FROM incidents i
    GROUP BY incident_quarter
    ORDER BY incident_quarter;

  --6)Incidents grouped by year:

    SELECT DATE_TRUNC('year', i.date) AS incident_year, COUNT(*) AS incident_count
    FROM incidents i
    GROUP BY incident_year
    ORDER BY incident_year;

  --7)Month with most incidents:

    SELECT TO_CHAR(i.date, 'YYYY-MM') AS month, COUNT(*) AS incident_count
    FROM incidents i
    GROUP BY month
    ORDER BY incident_count DESC
    LIMIT 1;

  --8)Month with least incidents:

    SELECT TO_CHAR(i.date, 'YYYY-MM') AS month, COUNT(*) AS incident_count
    FROM incidents i
    GROUP BY month
    ORDER BY incident_count ASC
    LIMIT 1;

  --9)Year with most incidents:

    SELECT EXTRACT(YEAR FROM i.date) AS year, COUNT(*) AS incident_count
    FROM incidents i
    GROUP BY EXTRACT(YEAR FROM i.date)
    ORDER BY incident_count DESC;

  --10)Year with least incidents:

    SELECT EXTRACT(YEAR FROM i.date) AS year, COUNT(*) AS incident_count
    FROM incidents i
    GROUP BY EXTRACT(YEAR FROM i.date)
    ORDER BY incident_count ASC;

  --11)Running total of incidents over time:

    SELECT i.date,
    COUNT(*) OVER (ORDER BY i.date ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS cumulative_incidents
	FROM incidents i
    ORDER BY i.date;

  --12)Find gap between incidents (days):

	SELECT flight_id, date,
    LAG(date) OVER (PARTITION BY flight_id ORDER BY date) AS prev_date,
    date - LAG(date) OVER (PARTITION BY flight_id ORDER BY date) AS days_between
    FROM incidents;



	
--RESERVATION AND PAYMENT ANALYSIS:--

  --1)Total payments by each passenger:

    SELECT p.passenger_name, SUM(pay.amount) AS total_paid
    FROM passengers p
    JOIN reservations r ON p.passenger_id = r.passenger_id
    JOIN payments pay ON r.reservation_id = pay.reservation_id
    GROUP BY p.passenger_name
    ORDER BY total_paid DESC;

  --2)Passengers with highest total payments:

    SELECT p.passenger_name, SUM(pay.amount) AS total_payment
    FROM passengers p
    JOIN reservations r ON p.passenger_id = r.passenger_id
    JOIN payments pay ON r.reservation_id = pay.reservation_id
    GROUP BY p.passenger_name
    ORDER BY total_payment DESC
    LIMIT 5;

  --3)Passenger with 2nd highest payment:

    SELECT p.passenger_name, SUM(pay.amount) AS total_payment
    FROM passengers p
    JOIN reservations r ON p.passenger_id = r.passenger_id
    JOIN payments pay ON r.reservation_id = pay.reservation_id
    GROUP BY p.passenger_name
    ORDER BY total_payment DESC
    OFFSET 1 LIMIT 1;

  --4)Passengers with lowest total payments:

    SELECT p.passenger_name, SUM(pay.amount) AS total_payment
    FROM passengers p
    JOIN reservations r ON p.passenger_id = r.passenger_id
    JOIN payments pay ON r.reservation_id = pay.reservation_id
    GROUP BY p.passenger_name
    ORDER BY total_payment ASC
    LIMIT 5;

  --5)Passenger with 2nd lowest payment:

    SELECT p.passenger_name, SUM(pay.amount) AS total_payment
    FROM passengers p
    JOIN reservations r ON p.passenger_id = r.passenger_id
    JOIN payments pay ON r.reservation_id = pay.reservation_id
    GROUP BY p.passenger_name
    ORDER BY total_payment ASC
    OFFSET 1
	LIMIT 1;

  --6)Passengers who made reservations but no payment:

    SELECT p.passenger_name, r.reservation_id
    FROM passengers p
    JOIN reservations r ON p.passenger_id = r.passenger_id
    LEFT JOIN payments pay ON r.reservation_id = pay.reservation_id
    WHERE pay.payment_id IS NULL;



	
--COMPENSATION ANALYSIS:--

  --1)Total compensation per incident:

    SELECT i.incident_id, SUM(c.amount) AS total_compensation
    FROM incidents i
    JOIN compensations c ON i.incident_id = c.incident_id
    GROUP BY i.incident_id;

  --2)Average compensation paid per year:

    SELECT DATE_TRUNC('year', i.date) AS year, AVG(c.amount) AS avg_compensation
    FROM incidents i
    JOIN compensations c ON i.incident_id = c.incident_id
    GROUP BY year
    ORDER BY year;

  --3)Total compensation paid by each airline:

    SELECT a.airline_name, SUM(c.amount) AS total_compensation
    FROM airlines a
    JOIN flights f ON a.airline_id = f.airline_id
    JOIN aircraft ac ON f.aircraft_id = ac.aircraft_id
    JOIN incidents i ON f.flight_id = i.flight_id
    JOIN compensations c ON i.incident_id = c.incident_id
    GROUP BY a.airline_name
    ORDER BY total_compensation DESC;

  --4)Rank flights by total compensation:

    SELECT f.flight_id, SUM(c.amount) AS total_compensation,
    RANK() OVER (ORDER BY SUM(c.amount) DESC) AS compensation_rank
    FROM flights f
    JOIN incidents i ON f.flight_id = i.flight_id
    JOIN compensations c ON i.incident_id = c.incident_id
    GROUP BY f.flight_id;

  



















	


  


















	






