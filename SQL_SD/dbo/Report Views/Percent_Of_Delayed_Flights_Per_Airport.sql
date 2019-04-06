----------------------------------------------------------------------------
-- SHOW PERCENTAGE OF DEPARTURE DELAY
-- GROUP BY AirportName
----------------------------------------------------------------------------
CREATE VIEW raporty.Percent_Of_Delayed_Flights_Per_Airport
AS
SELECT a.AirportName
	, CAST(CAST(COUNT(CASE WHEN DepDelay > 0  THEN  DepDelay ELSE NULL END)AS DECIMAL(10,2))/COUNT(a.AirportName)*100.00 AS DECIMAL(5,2)) 
		AS Percent_Of_Delayed_Flights_Per_Airport
	, COUNT(CASE WHEN DepDelay > 0  THEN  DepDelay ELSE NULL END) AS Count_Of_DepDelays
	, COUNT(a.AirportName) AS Flights_Per_Airport
FROM FactFlights
INNER JOIN DimAirport AS a
    ON FactFlights.Origin = a.Iata
GROUP BY a.AirportName
GO