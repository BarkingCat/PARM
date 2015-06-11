CREATE TABLE [Fact].[Portfolios] (
    [DateSK]      INT   NOT NULL,
    [TimeSK]      INT   NOT NULL,
    [PortfolioSK] INT   NOT NULL,
    [MarketSK]    INT   NOT NULL,
    [CurrencySK]  INT   NOT NULL,
    [StockSK]     INT   NOT NULL,
    [Lots]        INT   NOT NULL,
    [Price]       MONEY NOT NULL,
    [Revaluation] MONEY NOT NULL
);

