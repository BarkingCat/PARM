CREATE TABLE [Staging].[AFR_ASXCallOptions_Daily_Raw] (
    [RunID]             INT           NULL,
    [SystemID]          INT           NULL,
    [FileID]            INT           NULL,
    [RowID]             INT           IDENTITY (1, 1) NOT NULL,
    [OptionSeriesMonth] VARCHAR (50)  NULL,
    [OptionSeriesYear]  VARCHAR (50)  NULL,
    [ExercisePrice]     VARCHAR (50)  NULL,
    [FairValue]         VARCHAR (50)  NULL,
    [LastSale]          VARCHAR (50)  NULL,
    [Volume]            VARCHAR (255) NULL,
    [OpenInterest]      VARCHAR (50)  NULL,
    [ImpliedVolatility] VARCHAR (50)  NULL,
    [Delta]             VARCHAR (50)  NULL,
    [AnnualReturn]      VARCHAR (50)  NULL
);



