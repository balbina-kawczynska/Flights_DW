----------------------------------------------------------------------------
-- SHOW AVERAGE AND MAX OF DEPARTURE DELAY
-- GROUP BY Manufacturer
----------------------------------------------------------------------------
CREATE VIEW raporty.AVG_Departure_Delay_Per_Manufacturer
AS
SELECT p.Manufacturer
	, AVG(CAST(DepDelay AS INT)) AS AVG_Departure_Delay
	, MAX(DepDelay) AS MAX_Departure_Delay
FROM FactFlights
INNER JOIN DimPlane AS p
    ON FactFlights.TailNum = p.TailNum
GROUP BY p.Manufacturer
GO