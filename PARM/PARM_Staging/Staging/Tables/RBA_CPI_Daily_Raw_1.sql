﻿CREATE TABLE [Staging].[RBA_CPI_Daily_Raw] (
    [RunID]                                                                      INT           NULL,
    [SystemID]                                                                   INT           NULL,
    [FileID]                                                                     INT           NULL,
    [Title]                                                                      VARCHAR (100) NULL,
    [Consumer price index]                                                       VARCHAR (100) NULL,
    [Year-ended inflation]                                                       VARCHAR (100) NULL,
    [Year-ended inflation – excluding interest and tax changes]                  VARCHAR (100) NULL,
    [Year-ended inflation – excluding volatile items]                            VARCHAR (100) NULL,
    [Year-ended tradables inflation]                                             VARCHAR (100) NULL,
    [Year-ended tradables inflation – excluding volatile items and tobacco]      VARCHAR (100) NULL,
    [Year-ended non-tradables inflation]                                         VARCHAR (100) NULL,
    [Year-ended non-tradables inflation – excluding deposit and loan facilities] VARCHAR (100) NULL,
    [Year-ended weighted median inflation]                                       VARCHAR (100) NULL,
    [Year-ended trimmed mean inflation]                                          VARCHAR (100) NULL,
    [Quarterly inflation – original]                                             VARCHAR (100) NULL,
    [Quarterly inflation]                                                        VARCHAR (100) NULL,
    [Quarterly inflation – excluding interest and tax changes]                   VARCHAR (100) NULL,
    [Quarterly inflation – excluding volatile items]                             VARCHAR (100) NULL,
    [Quarterly tradables inflation]                                              VARCHAR (100) NULL,
    [Quarterly tradables inflation – excluding volatile items and tobacco]       VARCHAR (100) NULL,
    [Quarterly non-tradables inflation]                                          VARCHAR (100) NULL,
    [Quarterly non-tradables inflation – excluding deposit and loan facilities]  VARCHAR (100) NULL,
    [Quarterly weighted median inflation]                                        VARCHAR (100) NULL,
    [Quarterly trimmed mean inflation ]                                          VARCHAR (255) NULL
);

