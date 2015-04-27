CREATE TABLE [Staging].[ASX_ListedCompanies_Daily_Raw] (
    [RunID]               INT           NOT NULL,
    [SystemID]            INT           NOT NULL,
    [FileID]              INT           NOT NULL,
    [RowID]               INT           IDENTITY (1, 1) NOT NULL,
    [Company name]        VARCHAR (255) NOT NULL,
    [ASX code]            VARCHAR (4)   NOT NULL,
    [CIGS industry group] VARCHAR (255) NOT NULL
);

