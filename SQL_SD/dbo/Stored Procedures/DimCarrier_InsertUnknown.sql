CREATE PROC [DimCarrier_InsertUnknown]
AS
BEGIN

SET IDENTITY_INSERT [DimCarrier] ON

INSERT INTO [DimCarrier] ([CarriersID],[Code],[Description])   
VALUES (-1,'Unknown','Unknown');

SET IDENTITY_INSERT [DimCarrier] OFF

END;