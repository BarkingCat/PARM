CREATE TABLE [Fact].[Bonds] (
    [PK_Date]    DATE  NOT NULL,
    [MarketSK]   INT   NOT NULL,
    [CurrencySK] INT   NOT NULL,
    [2YR_Bond]   MONEY NOT NULL,
    [3YR_Bond]   MONEY NOT NULL,
    [5YR_Bond]   MONEY NOT NULL,
    [10YR_Bond]  MONEY NOT NULL,
    [CPI_Bond]   MONEY NOT NULL
);

