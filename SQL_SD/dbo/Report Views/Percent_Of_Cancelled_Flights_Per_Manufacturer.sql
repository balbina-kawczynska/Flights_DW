----------------------------------------------------------------------------
-- SHOW PERCENTAGE OF CANCELLED FLIGHTS
-- GROUP BY Manufacturer
----------------------------------------------------------------------------
CREATE VIEW raporty.Percent_Of_Cancelled_Flights_Per_Manufacturer
AS
SELECT p.Manufacturer
	, CAST(CAST(COUNT(CASE WHEN Cancelled = 1  THEN f.Cancelled  ELSE NULL END) AS DECIMAL(10,2))/COUNT(f.Cancelled)*100.00 AS DECIMAL(5,2)) 
		AS Percent_Of_Cancelled_Flights_Per_Manufacturer
	, COUNT(CASE WHEN Cancelled = 1  THEN f.Cancelled  ELSE NULL END) AS Cancelled_Flights_Per_Manufacturer
	, COUNT(f.Cancelled) AS Total_Number_Of_Flights_Per_Manufacturer
FROM FactFlights AS f
INNER JOIN DimPlane AS p
    ON f.TailNum = p.TailNum
GROUP BY p.Manufacturer
GO