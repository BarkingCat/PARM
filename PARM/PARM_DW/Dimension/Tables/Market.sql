CREATE TABLE [Dimension].[Market] (
    [MarketSK]       INT           IDENTITY (1, 1) NOT NULL,
    [MarketName]     VARCHAR (255) NOT NULL,
    [MarketCountry]  VARCHAR (255) NOT NULL,
    [MarketType]     VARCHAR (255) NOT NULL,
    [MarketCurrency] CHAR (3)      NOT NULL
);

