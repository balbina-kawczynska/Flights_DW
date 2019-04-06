----------------------------------------------------------------------------
-- SHOW PERCENTAGE OF DEPARTURE DELAY
-- GROUP BY Manufacturer
----------------------------------------------------------------------------
CREATE VIEW raporty.Percent_Of_Delayed_Flights_Per_Manufacturer 
AS
SELECT p.Manufacturer
	, CAST(CAST(COUNT(CASE WHEN DepDelay > 0  THEN  DepDelay ELSE NULL END) AS DECIMAL(10,2))/COUNT(p.Manufacturer)*100.00 AS DECIMAL(5,2)) 
		AS Percent_Of_Delayed_Flights_Per_Manufacturer
	, COUNT(CASE WHEN DepDelay > 0  THEN  DepDelay ELSE NULL END) AS Count_Of_DepDelays
	, COUNT(p.Manufacturer) AS Flights_Per_Manufacturer
FROM FactFlights
INNER JOIN DimPlane AS p
    ON FactFlights.TailNum = p.TailNum 
GROUP BY p.Manufacturer
GO