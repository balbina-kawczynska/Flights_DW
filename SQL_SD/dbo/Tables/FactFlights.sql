CREATE TABLE [dbo].[FactFlights] (
    [COLUMNSTORE]       INT           IDENTITY (1, 1) NOT NULL,
    [Year]              NVARCHAR (4)  NULL,
    [Month]             NVARCHAR (2)  NULL,
    [DayofMonth]        NVARCHAR (2)  NULL,
    [DayOfWeek]         NVARCHAR (1)  NULL,
    [DepTime]           NVARCHAR (4)  NULL,
    [CRSDepTime]        NVARCHAR (4)  NULL,
    [ArrTime]           NVARCHAR (4)  NULL,
    [CRSArrTime]        NVARCHAR (4)  NULL,
    [UniqueCarrier]     NVARCHAR (7)  NULL,
    [FlightNum]         NVARCHAR (50) NULL,
    [TailNum]           NVARCHAR (10) NULL,
    [ActualElapsedTime] NVARCHAR (4)  NULL,
    [CRSElapsedTime]    NVARCHAR (4)  NULL,
    [AirTime]           NVARCHAR (4)  NULL,
    [ArrDelay]          NVARCHAR (7)  NULL,
    [DepDelay]          NVARCHAR (7)  NULL,
    [Origin]            NVARCHAR (5)  NULL,
    [Dest]              NVARCHAR (7)  NULL,
    [Distance]          NVARCHAR (4)  NULL,
    [TaxiIn]            NVARCHAR (4)  NULL,
    [TaxiOut]           NVARCHAR (4)  NULL,
    [Cancelled]         BIT           NULL,
    [CancellationCode]  NVARCHAR (10) NULL,
    [Diverted]          BIT           NULL,
    [CarrierDelay]      NVARCHAR (4)  NULL,
    [WeatherDelay]      NVARCHAR (4)  NULL,
    [NASDelay]          NVARCHAR (4)  NULL,
    [SecurityDelay]     NVARCHAR (4)  NULL,
    [LateAircraftDelay] NVARCHAR (4)  NULL
);











