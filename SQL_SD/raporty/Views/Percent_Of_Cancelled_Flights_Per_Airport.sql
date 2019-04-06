----------------------------------------------------------------------------
-- SHOW PERCENTAGE OF CANCELLED FLIGHTS
-- GROUP BY AirportName
----------------------------------------------------------------------------
CREATE VIEW raporty.Percent_Of_Cancelled_Flights_Per_Airport
AS
SELECT a.AirportName
	, CAST(CAST(COUNT(CASE WHEN Cancelled = 1  THEN f.Cancelled  ELSE NULL END) AS DECIMAL(10,2))/COUNT(f.Cancelled)*100.00 AS DECIMAL(5,2)) 
		AS Percent_Of_Cancelled_Flights_Per_Airport
	, COUNT(CASE WHEN Cancelled = 1  THEN f.Cancelled  ELSE NULL END) AS Cancelled_Flights_Per_Airport
	, COUNT(f.Cancelled) AS Total_Number_Of_Flights_Per_Airport
FROM FactFlights AS f
INNER JOIN DimAirport AS a
    ON f.Origin = a.Iata
GROUP BY a.AirportName