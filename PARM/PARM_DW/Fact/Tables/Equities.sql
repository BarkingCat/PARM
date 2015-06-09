CREATE TABLE [Fact].[Equities] (
    [DateSK]     INT   NOT NULL,
    [TimeSK]     INT   NOT NULL,
    [MarketSK]   INT   NOT NULL,
    [CurrencySK] INT   NOT NULL,
    [StockSK]    INT   NOT NULL,
    [HighPrice]  MONEY NOT NULL,
    [LowPrice]   MONEY NOT NULL,
    [Volume]     INT   NOT NULL,
    [Yield]      MONEY NOT NULL,
    [PE_Ratio]   MONEY NOT NULL
);



