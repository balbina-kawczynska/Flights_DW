----------------------------------------------------------------------------
-- SHOW AVERAGE AND MAX OF DEPARTURE DELAY
-- GROUP BY AirportName
----------------------------------------------------------------------------
CREATE VIEW raporty.AVG_Departure_Delay_Per_Airport
AS
SELECT a.AirportName
	, AVG(CAST(DepDelay AS INT)) AS AVG_Departure_Delay
	, MAX(DepDelay) AS MAX_Departure_Delay
FROM FactFlights
INNER JOIN DimAirport AS a
    ON FactFlights.Origin = a.Iata
GROUP BY a.AirportName