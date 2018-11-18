USE [SQL_SD];
GO
/****** Object:  Schema [raporty] ******/
CREATE SCHEMA [raporty] AUTHORIZATION dbo;
GO

----------------------------------------------------------------------------
-- SHOW PERCENTAGE OF DEPARTURE DELAY
-- GROUP BY Manufacturer
-- SORT BY Percent_Of_Delayed_Flights_Per_Manufacturer DESC
----------------------------------------------------------------------------
SELECT p.Manufacturer
	, CAST(CAST(COUNT(CASE WHEN DepDelay > 0  THEN  DepDelay ELSE NULL END) AS DECIMAL(10,2))/COUNT(p.Manufacturer)*100.00 AS DECIMAL(5,2)) AS Percent_Of_Delayed_Flights_Per_Manufacturer
	, COUNT(CASE WHEN DepDelay > 0  THEN  DepDelay ELSE NULL END) AS Count_Of_DepDelays
	, COUNT(p.Manufacturer) AS Flights_Per_Manufacturer
FROM FactFlights
INNER JOIN DimPlane AS p
    ON FactFlights.TailNum = p.TailNum 
GROUP BY p.Manufacturer
ORDER BY Percent_Of_Delayed_Flights_Per_Manufacturer DESC
GO
----------------------------------------------------------------------------
-- SHOW PERCENTAGE OF DEPARTURE DELAY
-- GROUP BY AirportName
-- SORT BY Percent_Of_Delayed_Flights_Per_Airport DESC
----------------------------------------------------------------------------
SELECT a.AirportName
	, CAST(CAST(COUNT(CASE WHEN DepDelay > 0  THEN  DepDelay ELSE NULL END)AS DECIMAL(10,2))/COUNT(a.AirportName)*100.00 AS DECIMAL(5,2)) AS Percent_Of_Delayed_Flights_Per_Airport
	, COUNT(CASE WHEN DepDelay > 0  THEN  DepDelay ELSE NULL END) AS Count_Of_DepDelays
	, COUNT(a.AirportName) AS Flights_Per_Airport
FROM FactFlights
INNER JOIN DimAirport AS a
    ON FactFlights.Origin = a.Iata
GROUP BY a.AirportName
ORDER BY Percent_Of_Delayed_Flights_Per_Airport DESC
GO
----------------------------------------------------------------------------
-- SHOW PERCENTAGE OF CANCELLED FLIGHTS
-- GROUP BY Manufacturer
-- SORT BY Percent_Of_Cancelled_Flights_Per_Manufacturer DESC
----------------------------------------------------------------------------
SELECT p.Manufacturer
	, CAST(CAST(COUNT(CASE WHEN Cancelled = 1  THEN f.Cancelled  ELSE NULL END) AS DECIMAL(10,2))/COUNT(f.Cancelled)*100.00 AS DECIMAL(5,2)) AS Percent_Of_Cancelled_Flights_Per_Manufacturer
	, COUNT(CASE WHEN Cancelled = 1  THEN f.Cancelled  ELSE NULL END) AS Cancelled_Flights_Per_Manufacturer
	, COUNT(f.Cancelled) AS Total_Number_Of_Flights_Per_Manufacturer
FROM FactFlights AS f
INNER JOIN DimPlane AS p
    ON f.TailNum = p.TailNum
GROUP BY p.Manufacturer
ORDER BY Percent_Of_Cancelled_Flights_Per_Manufacturer DESC
GO
----------------------------------------------------------------------------
-- SHOW PERCENTAGE OF CANCELLED FLIGHTS
-- GROUP BY AirportName
-- SORT BY Percent_Of_Cancelled_Flights_Per_Airport DESC
----------------------------------------------------------------------------
SELECT a.AirportName
	, CAST(CAST(COUNT(CASE WHEN Cancelled = 1  THEN f.Cancelled  ELSE NULL END) AS DECIMAL(10,2))/COUNT(f.Cancelled)*100.00 AS DECIMAL(5,2)) AS Percent_Of_Cancelled_Flights_Per_Airport
	, COUNT(CASE WHEN Cancelled = 1  THEN f.Cancelled  ELSE NULL END) AS Cancelled_Flights_Per_Airport
	, COUNT(f.Cancelled) AS Total_Number_Of_Flights_Per_Airport
FROM FactFlights AS f
INNER JOIN DimAirport AS a
    ON f.Origin = a.Iata
GROUP BY a.AirportName
ORDER BY Percent_Of_Cancelled_Flights_Per_Airport DESC
GO
----------------------------------------------------------------------------
-- SHOW AVERAGE AND MAX OF DEPARTURE DELAY
-- GROUP BY Manufacturer
-- SORT BY AVG_Departure_Delay DESC
----------------------------------------------------------------------------
SELECT p.Manufacturer
	, AVG(CAST(DepDelay AS INT)) AS AVG_Departure_Delay
	, MAX(DepDelay) AS MAX_Departure_Delay
FROM FactFlights
INNER JOIN DimPlane AS p
    ON FactFlights.TailNum = p.TailNum
GROUP BY p.Manufacturer
ORDER BY AVG_Departure_Delay DESC
GO
----------------------------------------------------------------------------
-- SHOW AVERAGE AND MAX OF DEPARTURE DELAY
-- GROUP BY AirportName
-- SORT BY AVG_Departure_Delay DESC
----------------------------------------------------------------------------
SELECT a.AirportName
	, AVG(CAST(DepDelay AS INT)) AS AVG_Departure_Delay
	, MAX(DepDelay) AS MAX_Departure_Delay
FROM FactFlights
INNER JOIN DimAirport AS a
    ON FactFlights.Origin = a.Iata
GROUP BY a.AirportName
ORDER BY AVG_Departure_Delay DESC
GO
----------------------------------------------------------------------------
-- SHOW RANKING OF TOTAL FLIGHTS PER CARRIER
-- GROUP BY Airport AND Airport Code
-- SORT BY Rank ASC
----------------------------------------------------------------------------
SELECT Airport
	, RANK() OVER (ORDER BY FlightsPerCarrier DESC) AS Rank
	, FlightsPerCarrier
FROM
	(SELECT c.Description AS Airport
		, COUNT(f.UniqueCarrier) AS FlightsPerCarrier
	FROM FactFlights AS f
	INNER JOIN DimCarrier AS c
		ON f.UniqueCarrier = c.Code
	GROUP BY c.Description, c.Code)
AS Rank
ORDER BY Rank ASC	
GO