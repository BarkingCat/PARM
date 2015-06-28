CREATE TABLE [Dimension].[BalanceSheetItems] (
    [BalanceSheetItemSK]   INT           IDENTITY (1, 1) NOT NULL,
    [BalanceSheetName]     VARCHAR (255) NOT NULL,
    [BalanceSheetCategory] VARCHAR (255) NOT NULL,
    [BalanceSheetType]     VARCHAR (255) NOT NULL
);



