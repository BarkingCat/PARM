CREATE TABLE [Fact].[FXRates] (
    [PK_Date]        DATE  NOT NULL,
    [MarketSK]       INT   NOT NULL,
    [FromCurrencySK] INT   NOT NULL,
    [ToCurrencySK]   INT   NOT NULL,
    [ExchangeRate]   MONEY NOT NULL
);

