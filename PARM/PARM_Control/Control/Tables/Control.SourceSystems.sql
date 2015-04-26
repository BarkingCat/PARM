CREATE TABLE [Control].[SourceSystems] (
    [SystemID]   INT          IDENTITY (1, 1) NOT NULL,
    [SystemName] VARCHAR (50) NOT NULL,
    [SystemDesc] VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([SystemID] ASC)
);

