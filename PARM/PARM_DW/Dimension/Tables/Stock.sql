CREATE TABLE [Dimension].[Stock] (
    [StockSK]       INT           IDENTITY (1, 1) NOT NULL,
    [StockCode]     CHAR (3)      NOT NULL,
    [CompanyName]   VARCHAR (255) NOT NULL,
    [IndustryGroup] VARCHAR (255) NOT NULL
);






GO
CREATE UNIQUE CLUSTERED INDEX [ClusteredIndex-20150612-112048]
    ON [Dimension].[Stock]([StockSK] ASC);

