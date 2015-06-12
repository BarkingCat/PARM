
CREATE FUNCTION [dbo].[Get_EndOfYearDate]
(
    @BusinessDate DATE
)
RETURNS DATE
AS
BEGIN

	
	RETURN (SELECT TOP 1 [Date] 
			FROM [Dimension].[Date] 
			WHERE [Month] = 6 
			AND [Year] = CASE WHEN Month(@BusinessDate) BETWEEN 1 AND 6 THEN YEAR(@BusinessDate) -1 WHEN Month(@BusinessDate) BETWEEN 7 AND 12 THEN YEAR(@BusinessDate) END
			AND [DayOfWeek] NOT IN ('Saturday','Sunday') ORDER BY [Date] DESC)

END