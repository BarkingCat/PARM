CREATE TABLE [Dimension].[Time] (
    [TimeSK] INT NOT NULL,
    [Hour]   INT NOT NULL,
    [Minute] INT NOT NULL,
    [Second] INT NOT NULL
);




GO
CREATE UNIQUE CLUSTERED INDEX [ClusteredIndex-20150612-112159]
    ON [Dimension].[Time]([TimeSK] ASC);

