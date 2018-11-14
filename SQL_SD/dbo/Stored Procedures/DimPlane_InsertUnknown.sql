CREATE PROC [DimPlane_InsertUnknown]
AS
BEGIN

SET IDENTITY_INSERT [DimPlane] ON

INSERT INTO [DimPlane] ([PlaneDataID],[TailNum],[Type],[Manufacturer],[Issue_date],[Model],[Status],[Aircraft_type],[Engine_type],[Year])   
VALUES (-1,'Unknown','Unknown','Unknown','1900-01-01','Unknown','Unknown','Unknown','Unknown',-1);

SET IDENTITY_INSERT [DimPlane] OFF

END;