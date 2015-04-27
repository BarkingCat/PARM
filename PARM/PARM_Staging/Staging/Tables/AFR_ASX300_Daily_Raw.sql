CREATE TABLE [Staging].[AFR_ASX300_Daily_Raw] (
    [RunID]               INT           NOT NULL,
    [SystemID]            INT           NOT NULL,
    [FileID]              INT           NOT NULL,
    [RowID]               INT           IDENTITY (1, 1) NOT NULL,
    [52 Week High]        VARCHAR (50)  NULL,
    [52 Week Low]         VARCHAR (50)  NULL,
    [Day's High]          VARCHAR (50)  NULL,
    [Day's Low]           VARCHAR (50)  NULL,
    [ASX Code]            VARCHAR (50)  NULL,
    [Company Name]        VARCHAR (255) NULL,
    [Last Sale]           VARCHAR (50)  NULL,
    [+ or -]              VARCHAR (50)  NULL,
    [Vol 100's]           VARCHAR (50)  NULL,
    [Quote Buy]           VARCHAR (50)  NULL,
    [Quote Sell]          VARCHAR (50)  NULL,
    [Div c per share]     VARCHAR (50)  NULL,
    [Franked]             VARCHAR (50)  NULL,
    [Div Times cov'd]     VARCHAR (50)  NULL,
    [Net Tangible Assets] VARCHAR (50)  NULL,
    [Div yield %]         VARCHAR (50)  NULL,
    [Earn share c]        VARCHAR (50)  NULL,
    [P/E ratio]           VARCHAR (50)  NULL
);




GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_UNQ_AFR_ASX300_RunID_ASXCode]
    ON [Staging].[AFR_ASX300_Daily_Raw]([RunID] ASC, [SystemID] ASC, [FileID] ASC, [ASX Code] ASC);


GO
CREATE CLUSTERED INDEX [IX_AFR_ASX300_RunID_ASXCode]
    ON [Staging].[AFR_ASX300_Daily_Raw]([RunID] DESC, [ASX Code] ASC);

