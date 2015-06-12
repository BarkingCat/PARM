CREATE TABLE [Dimension].[Currency] (
    [CurrencySK]      INT           IDENTITY (1, 1) NOT NULL,
    [CurrencyCode]    CHAR (3)      NOT NULL,
    [CurrencyName]    VARCHAR (255) NOT NULL,
    [CurrencyCountry] VARCHAR (255) NOT NULL,
    [CurrencyType]    VARCHAR (255) NOT NULL,
    [CentralBank]     VARCHAR (255) NOT NULL
);




GO
CREATE UNIQUE CLUSTERED INDEX [ClusteredIndex-20150612-112239]
    ON [Dimension].[Currency]([CurrencySK] ASC);

