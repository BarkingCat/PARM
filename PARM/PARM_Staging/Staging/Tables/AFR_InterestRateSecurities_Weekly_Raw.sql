CREATE TABLE [Staging].[AFR_InterestRateSecurities_Weekly_Raw] (
    [RunID]                INT           NULL,
    [SystemID]             INT           NULL,
    [FileID]               INT           NULL,
    [52 Week High]         VARCHAR (50)  NULL,
    [52 Week Low]          VARCHAR (50)  NULL,
    [Week's High]          VARCHAR (50)  NULL,
    [Week's Low]           VARCHAR (50)  NULL,
    [ASX Code]             VARCHAR (50)  NULL,
    [Security Description] VARCHAR (255) NULL,
    [Last Sale]            VARCHAR (50)  NULL,
    [Vol 000's]            VARCHAR (50)  NULL,
    [Val 000's]            VARCHAR (50)  NULL,
    [Quote Buy]            VARCHAR (255) NULL,
    [Quote Sell]           VARCHAR (255) NULL,
    [Face Value]           VARCHAR (255) NULL,
    [CPN (%) p a ]         VARCHAR (255) NULL,
    [Next Cpn Date]        VARCHAR (255) NULL,
    [Conv Mat  Date]       VARCHAR (255) NULL,
    [Conv Mat  Value]      VARCHAR (255) NULL,
    [YTM Conv]             VARCHAR (50)  NULL
);

