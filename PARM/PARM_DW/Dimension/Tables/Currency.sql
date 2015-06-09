CREATE TABLE [Dimension].[Currency] (
    [CurrencySK]      INT           IDENTITY (1, 1) NOT NULL,
    [CurrencyCode]    CHAR (3)      NOT NULL,
    [CurrencyName]    VARCHAR (255) NOT NULL,
    [CurrencyCountry] VARCHAR (255) NOT NULL,
    [CurrencyType]    VARCHAR (255) NOT NULL,
    [CentralBank]     VARCHAR (255) NOT NULL
);

