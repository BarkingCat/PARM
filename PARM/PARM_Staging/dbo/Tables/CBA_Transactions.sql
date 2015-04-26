CREATE TABLE [dbo].[CBA_Transactions] (
    [Date]    DATE          NOT NULL,
    [Detail]  VARCHAR (255) NOT NULL,
    [Debit]   MONEY         NOT NULL,
    [Credit]  MONEY         NOT NULL,
    [Balance] MONEY         NOT NULL
);

