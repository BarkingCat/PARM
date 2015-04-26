CREATE TABLE [Fact].[BalanceSheetMeasures] (
    [BalanceSheetItemSK] INT      NOT NULL,
    [AssetOrLiability]   CHAR (1) NOT NULL,
    [BalanceSheetValue]  MONEY    NOT NULL
);

