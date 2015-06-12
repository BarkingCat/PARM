CREATE TABLE [Dimension].[Date] (
    [DateSK]        INT          NOT NULL,
    [Date]          DATE         NOT NULL,
    [DateText]      VARCHAR (20) NOT NULL,
    [FinancialYear] CHAR (4)     NOT NULL,
    [WeekOfYear]    INT          NOT NULL,
    [Quarter]       CHAR (2)     NOT NULL,
    [Year]          INT          NOT NULL,
    [Month]         INT          NOT NULL,
    [Day]           INT          NOT NULL,
    [DayOfWeek]     VARCHAR (10) NOT NULL
);






GO
CREATE UNIQUE CLUSTERED INDEX [ClusteredIndex-20150612-104530]
    ON [Dimension].[Date]([DateSK] ASC);

