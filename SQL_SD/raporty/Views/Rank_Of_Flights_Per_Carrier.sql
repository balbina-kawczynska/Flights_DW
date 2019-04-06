----------------------------------------------------------------------------
-- SHOW RANKING OF TOTAL FLIGHTS PER CARRIER
-- GROUP BY Airport AND Airport Code
----------------------------------------------------------------------------
CREATE VIEW raporty.Rank_Of_Flights_Per_Carrier
AS
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