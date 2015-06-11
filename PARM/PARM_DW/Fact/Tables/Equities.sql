CREATE TABLE [Fact].[Equities] (
    [DateSK]                   INT   NOT NULL,
    [TimeSK]                   INT   NOT NULL,
    [MarketSK]                 INT   NOT NULL,
    [CurrencySK]               INT   NOT NULL,
    [StockSK]                  INT   NOT NULL,
    [HighPrice]                MONEY NOT NULL,
    [LowPrice]                 MONEY NOT NULL,
    [BidPrice]                 MONEY NOT NULL,
    [AskPrice]                 MONEY NOT NULL,
    [BidAskSpread]             AS    ([AskPrice]-[BidPrice]) PERSISTED,
    [Volume]                   INT   NOT NULL,
    [Yield]                    MONEY NOT NULL,
    [DividendCentsPerShare]    MONEY NOT NULL,
    [EarningsCentsPerShare]    MONEY NOT NULL,
    [PE_Ratio]                 MONEY NOT NULL,
    [IssuedCapital]            MONEY NOT NULL,
    [GrossShortSales]          MONEY NOT NULL,
    [90Day_SMA]                MONEY NOT NULL,
    [90Day_AverageDailyReturn] MONEY NOT NULL,
    [90Day_Volatility]         MONEY NOT NULL,
    [Price_vs_90Day_SMA]       AS    (([90Day_SMA]-[AskPrice])/[90Day_SMA]) PERSISTED,
    [Daily_PriceChange]        MONEY NOT NULL,
    [MTD_PriceChange]          MONEY NOT NULL,
    [YTD_PriceChange]          MONEY NOT NULL
);





