﻿CREATE TABLE [dbo].[FactFlights] (
    [COLUMNSTORE]       INT           IDENTITY (1, 1) NOT NULL,
    [Year]              SMALLINT      NULL,
    [Month]             TINYINT       NULL,
    [DayofMonth]        TINYINT       NULL,
    [DayOfWeek]         TINYINT       NULL,
    [DepTime]           SMALLINT      NULL,
    [CRSDepTime]        SMALLINT      NULL,
    [ArrTime]           SMALLINT      NULL,
    [CRSArrTime]        SMALLINT      NULL,
    [UniqueCarrier]     NVARCHAR (5)  NULL,
    [FlightNum]         INT           NULL,
    [TailNum]           NVARCHAR (10) NULL,
    [ActualElapsedTime] SMALLINT      NULL,
    [CRSElapsedTime]    SMALLINT      NULL,
    [AirTime]           SMALLINT      NULL,
    [ArrDelay]          SMALLINT      NULL,
    [DepDelay]          SMALLINT      NULL,
    [Origin]            NVARCHAR (5)  NULL,
    [Dest]              NVARCHAR (7)  NULL,
    [Distance]          SMALLINT      NULL,
    [TaxiIn]            TINYINT       NULL,
    [TaxiOut]           TINYINT       NULL,
    [Cancelled]         BIT           NULL,
    [CancellationCode]  NVARCHAR (10) NULL,
    [Diverted]          BIT           NULL,
    [CarrierDelay]      SMALLINT      NULL,
    [WeatherDelay]      SMALLINT      NULL,
    [NASDelay]          SMALLINT      NULL,
    [SecurityDelay]     SMALLINT      NULL,
    [LateAircraftDelay] SMALLINT      NULL
);





