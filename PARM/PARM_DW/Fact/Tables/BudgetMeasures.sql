CREATE TABLE [Fact].[BudgetMeasures] (
    [DateSK]            INT   NOT NULL,
    [AccountSK]         INT   NOT NULL,
    [ItemSK]            INT   NOT NULL,
    [WeeklyAmount]      MONEY NOT NULL,
    [FortnightlyAmount] AS    ([WeeklyAmount]*(2)) PERSISTED,
    [MonthlyAmount]     AS    (([WeeklyAmount]*(52))/(12)) PERSISTED,
    [YearlyAmount]      AS    ([WeeklyAmount]*(52)) PERSISTED
);







