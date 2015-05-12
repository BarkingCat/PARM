CREATE TABLE [Dimension].[Stock] (
    [StockSK]       INT           IDENTITY (1, 1) NOT NULL,
    [StockCode]     CHAR (3)      NOT NULL,
    [CompanyName]   VARCHAR (255) NOT NULL,
    [IndustryGroup] VARCHAR (255) NOT NULL
);



