CREATE TABLE [Control].[Run] (
    [RunID]        INT  IDENTITY (1, 1) NOT NULL,
    [BusinessDate] DATE NOT NULL,
    PRIMARY KEY CLUSTERED ([RunID] ASC),
    CONSTRAINT [UNQ_BusinessDate] UNIQUE NONCLUSTERED ([BusinessDate] ASC)
);

