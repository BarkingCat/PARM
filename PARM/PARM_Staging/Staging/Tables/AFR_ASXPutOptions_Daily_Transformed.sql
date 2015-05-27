CREATE TABLE [Staging].[AFR_ASXPutOptions_Daily_Transformed] (
    [RunID]             INT            NULL,
    [SystemID]          INT            NULL,
    [FileID]            INT            NULL,
    [RowID]             INT            NOT NULL,
    [ASXCode]           VARCHAR (50)   NULL,
    [Company]           VARCHAR (50)   NULL,
    [StockLastSale]     VARCHAR (50)   NULL,
    [ContractType]      VARCHAR (3)    NOT NULL,
    [OptionSeriesMonth] VARCHAR (50)   NULL,
    [OptionSeriesYear]  VARCHAR (50)   NULL,
    [ExercisePrice]     VARCHAR (50)   NULL,
    [FairValue]         VARCHAR (50)   NULL,
    [LastSale]          VARCHAR (50)   NULL,
    [OpenInterest]      VARCHAR (50)   NULL,
    [ImpliedVolatility] VARCHAR (50)   NULL,
    [Delta]             VARCHAR (50)   NULL,
    [AnnualReturn]      VARCHAR (8000) NULL
);

