CREATE TABLE [Staging].[RBA_BalanceOfPayments_Daily_Raw] (
    [RunID]                                                             INT           NULL,
    [SystemID]                                                          INT           NULL,
    [FileID]                                                            INT           NULL,
    [Title]                                                             VARCHAR (100) NULL,
    [Net inflows to the general government sector]                      VARCHAR (100) NULL,
    [Net  inflows to the Reserve Bank]                                  VARCHAR (100) NULL,
    [Net direct debt inflows to the non-official sector]                VARCHAR (100) NULL,
    [Net direct equity inflows to the non-official sector]              VARCHAR (100) NULL,
    [Net portfolio and other debt inflows to the non-official sector]   VARCHAR (100) NULL,
    [Net portfolio and other equity inflows to the non-official sector] VARCHAR (100) NULL,
    [Net total inflows to the non-official sector]                      VARCHAR (100) NULL,
    [Financial account balance]                                         VARCHAR (100) NULL,
    [Balancing item]                                                    VARCHAR (100) NULL
);

