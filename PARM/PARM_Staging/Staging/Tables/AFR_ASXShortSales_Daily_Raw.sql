CREATE TABLE [Staging].[AFR_ASXShortSales_Daily_Raw] (
    [RunID]                                              INT           NULL,
    [SystemID]                                           INT           NULL,
    [FileID]                                             INT           NULL,
    [Company Name]                                       VARCHAR (255) NULL,
    [Code]                                               VARCHAR (50)  NULL,
    [Product/Class]                                      VARCHAR (50)  NULL,
    [Total Shares Sales]                                 VARCHAR (50)  NULL,
    [Reported Gross Short Sales (a)]                     VARCHAR (50)  NULL,
    [Reported Gross Short Sales (%) of Turnover]         VARCHAR (255) NULL,
    [Daily Change in security price (%)]                 VARCHAR (50)  NULL,
    [Issued Capital  (b)]                                VARCHAR (50)  NULL,
    [Percentage issued capital reported as short(a)/(b)] VARCHAR (50)  NULL
);

