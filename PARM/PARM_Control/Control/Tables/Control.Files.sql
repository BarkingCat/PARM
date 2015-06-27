CREATE TABLE [Control].[Files] (
    [FileID]     INT           IDENTITY (1, 1) NOT NULL,
    [SystemID]   INT           NOT NULL,
    [SourceURI]  VARCHAR (255) NOT NULL,
    [FileName]   VARCHAR (255) NOT NULL,
    [DateOffset] INT           NOT NULL,
    [FileDesc]   VARCHAR (255) NOT NULL,
    [TargetURI]  VARCHAR (255) NOT NULL,
    [Frequency]  CHAR (1)      NULL,
    PRIMARY KEY CLUSTERED ([FileID] ASC),
    FOREIGN KEY ([SystemID]) REFERENCES [Control].[SourceSystems] ([SystemID])
);



