CREATE TABLE [dbo].[CBA_TransactionSummary] (
    [Code]               VARCHAR (10)  NOT NULL,
    [Company]            VARCHAR (255) NOT NULL,
    [Date]               DATE          NOT NULL,
    [Type]               VARCHAR (4)   NOT NULL,
    [Quantity]           INT           NOT NULL,
    [UnitPrice]          MONEY         NOT NULL,
    [TradeValue]         MONEY         NOT NULL,
    [Brokerage_with_GST] MONEY         NOT NULL,
    [GST]                MONEY         NOT NULL,
    [ContractNote]       INT           NOT NULL,
    [TotalValue]         MONEY         NOT NULL
);

