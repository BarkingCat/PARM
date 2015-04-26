CREATE TABLE [Control].[UploadQueue] (
    [UploadQueueID] INT           IDENTITY (1, 1) NOT NULL,
    [RunID]         INT           NOT NULL,
    [FileID]        INT           NOT NULL,
    [StatusCode]    INT           DEFAULT ((0)) NOT NULL,
    [QueueDate]     DATETIME2 (7) DEFAULT (getdate()) NOT NULL,
    [UploadDate]    DATETIME2 (7) NULL,
    PRIMARY KEY CLUSTERED ([UploadQueueID] ASC),
    FOREIGN KEY ([FileID]) REFERENCES [Control].[Files] ([FileID]),
    FOREIGN KEY ([RunID]) REFERENCES [Control].[Run] ([RunID]),
    FOREIGN KEY ([StatusCode]) REFERENCES [Control].[QueueStatusCodes] ([StatusCode])
);

