CREATE TABLE [dbo].[DimAirport] (
    [AirportID]   INT              IDENTITY (1, 1) NOT NULL,
    [Iata]        NVARCHAR (4)     NULL,
    [AirportName] NVARCHAR (50)    NULL,
    [City]        NVARCHAR (40)    NULL,
    [State]       NVARCHAR (2)     NULL,
    [Country]     NVARCHAR (30)    NULL,
    [Latitude]    NUMERIC (14, 10) NULL,
    [Longtitude]  NUMERIC (14, 10) NULL,
    CONSTRAINT [PK_DimAirport] PRIMARY KEY CLUSTERED ([AirportID] ASC),
    CONSTRAINT [AK_DimAirport_Iata] UNIQUE NONCLUSTERED ([Iata] ASC)
);

