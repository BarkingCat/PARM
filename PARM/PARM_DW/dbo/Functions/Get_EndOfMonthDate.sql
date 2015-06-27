
CREATE FUNCTION [dbo].[Get_EndOfMonthDate]
(
    @BusinessDate DATE
)
RETURNS DATE
AS
BEGIN
	
	RETURN (SELECT TOP 1 [Date] FROM [Dimension].[Date] WHERE [Month] = Month(@BusinessDate) - 1 AND [Year] = YEAR(@BusinessDate) AND [DayOfWeek] NOT IN ('Saturday','Sunday') ORDER BY [Date] DESC)

END