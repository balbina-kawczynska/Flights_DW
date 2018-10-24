CREATE PROC [DimAirport_InsertUnknown]
AS
BEGIN

SET IDENTITY_INSERT [DimAirport] ON

INSERT INTO [dbo].[DimAirport] ([AirportID],[Iata],[AirportName],[City],[State],[Country],[Latitude],[Longtitude])   
VALUES (-1,'Unknown','Unknown','Unknown','Unknown','Unknown',-1,-1);

SET IDENTITY_INSERT [DimAirport] OFF

END;