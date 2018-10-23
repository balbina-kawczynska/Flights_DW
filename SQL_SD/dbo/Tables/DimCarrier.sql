CREATE TABLE [dbo].[DimCarrier] (
    [CarriersID]  INT            IDENTITY (1, 1) NOT NULL,
    [Code]        NVARCHAR (10)  NULL,
    [Description] NVARCHAR (100) NULL,
    CONSTRAINT [PK_DimCarrier] PRIMARY KEY CLUSTERED ([CarriersID] ASC),
    CONSTRAINT [AK_DimCarrier_Code] UNIQUE NONCLUSTERED ([Code] ASC)
);

