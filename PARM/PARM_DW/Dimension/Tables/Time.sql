CREATE TABLE [Dimension].[Time] (
    [TimeSK]     INT       NOT NULL,
    [Time]       CHAR (11) NOT NULL,
    [Time24]     CHAR (8)  NOT NULL,
    [Hour]       TINYINT   NOT NULL,
    [HourName]   CHAR (5)  NOT NULL,
    [Minute]     TINYINT   NOT NULL,
    [MinuteKey]  INT       NOT NULL,
    [MinuteName] CHAR (8)  NOT NULL,
    [Second]     TINYINT   NOT NULL,
    [Hour24]     TINYINT   NOT NULL,
    [AM]         CHAR (2)  NOT NULL,
    CONSTRAINT [PK_TimeSK] PRIMARY KEY CLUSTERED ([TimeSK] ASC)
);






GO


