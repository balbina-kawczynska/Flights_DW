CREATE TABLE [dbo].[FactFlights] (
    [COLUMNSTORE]       INT           IDENTITY (1, 1) NOT NULL,
    [Year]              SMALLINT      NULL,
    [Month]             TINYINT       NULL,
    [DayofMonth]        TINYINT       NULL,
    [DayOfWeek]         TINYINT       NULL,
    [DepTime]           NVARCHAR (4)  NULL,
    [CRSDepTime]        SMALLINT      NULL,
    [ArrTime]           NVARCHAR (4)  NULL,
    [CRSArrTime]        SMALLINT      NULL,
    [UniqueCarrier]     NVARCHAR (5)  NULL,
    [FlightNum]         INT           NULL,
    [TailNum]           NVARCHAR (10) NULL,
    [ActualElapsedTime] NVARCHAR (4)  NULL,
    [CRSElapsedTime]    SMALLINT      NULL,
    [AirTime]           NVARCHAR (4)  NULL,
    [ArrDelay]          NVARCHAR (4)  NULL,
    [DepDelay]          NVARCHAR (4)  NULL,
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









