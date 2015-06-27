CREATE TABLE [Reference].[ASX_Code_LookUp] (
    [ASXCode]      VARCHAR (4)   NOT NULL,
    [CompanyName]  VARCHAR (255) NOT NULL,
    [CompanyName1] VARCHAR (255) NULL,
    [CompanyName2] VARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([ASXCode] ASC)
);

