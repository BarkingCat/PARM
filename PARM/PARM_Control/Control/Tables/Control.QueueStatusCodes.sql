CREATE TABLE [Control].[QueueStatusCodes] (
    [StatusCode]     INT           IDENTITY (1, 1) NOT NULL,
    [StatusCodeDesc] VARCHAR (255) NOT NULL,
    PRIMARY KEY CLUSTERED ([StatusCode] ASC)
);

