CREATE TABLE [dbo].[DimPlane] (
    [PlaneDataID]   INT           IDENTITY (1, 1) NOT NULL,
    [TailNum]       NVARCHAR (10) NULL,
    [Type]          NVARCHAR (20) NULL,
    [Manufacturer]  NVARCHAR (30) NULL,
    [Issue_date]    DATE          NULL,
    [Model]         NVARCHAR (20) NULL,
    [Status]        NVARCHAR (20) NULL,
    [Aircraft_type] NVARCHAR (30) NULL,
    [Engine_type]   NVARCHAR (20) NULL,
    [Year]          SMALLINT      NULL,
    CONSTRAINT [PK_DimPlane] PRIMARY KEY CLUSTERED ([PlaneDataID] ASC),
    CONSTRAINT [AK_DimPlane_Tailnum] UNIQUE NONCLUSTERED ([TailNum] ASC)
);

