CREATE TABLE [dbo].[FactFlights] (
    [COLUMNSTORE]       INT           IDENTITY (1, 1) NOT NULL,
    [Year]              NVARCHAR (4)  NULL,
    [Month]             NVARCHAR (2)  NULL,
    [DayofMonth]        NVARCHAR (2)  NULL,
    [DayOfWeek]         NVARCHAR (1)  NULL,
    [DepTime]           NVARCHAR (8)  NULL,
    [CRSDepTime]        NVARCHAR (8)  NULL,
    [ArrTime]           NVARCHAR (8)  NULL,
    [CRSArrTime]        NVARCHAR (8)  NULL,
    [UniqueCarrier]     NVARCHAR (7)  NULL DEFAULT -1,
    [FlightNum]         NVARCHAR (6)  NULL,
    [TailNum]           NVARCHAR (10) NULL DEFAULT -1,
    [ActualElapsedTime] NVARCHAR (4)  NULL,
    [CRSElapsedTime]    NVARCHAR (4)  NULL,
    [AirTime]           NVARCHAR (4)  NULL,
    [ArrDelay]          NVARCHAR (7)  NULL,
    [DepDelay]          NVARCHAR (7)  NULL,
    [Origin]            NVARCHAR (5)  NULL DEFAULT -1,
    [Dest]              NVARCHAR (7)  NULL DEFAULT -1,
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
    [LateAircraftDelay] NVARCHAR (4)  NULL,
    CONSTRAINT [PK_FactFlights] PRIMARY KEY CLUSTERED ([COLUMNSTORE] ASC)
);













