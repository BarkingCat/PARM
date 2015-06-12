CREATE TABLE [Dimension].[Market] (
    [MarketSK]       INT           IDENTITY (1, 1) NOT NULL,
    [MarketName]     VARCHAR (255) NOT NULL,
    [MarketCountry]  VARCHAR (255) NOT NULL,
    [MarketType]     VARCHAR (255) NOT NULL,
    [MarketCurrency] CHAR (3)      NOT NULL
);




GO
CREATE UNIQUE CLUSTERED INDEX [ClusteredIndex-20150612-112222]
    ON [Dimension].[Market]([MarketSK] ASC);

