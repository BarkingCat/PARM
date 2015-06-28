
CREATE FUNCTION [dbo].[Get_EndOfMonthDate]
(
    @BusinessDate DATE
)
RETURNS DATE
AS
BEGIN
	
	RETURN (SELECT TOP 1 [PK_Date] FROM [Dimension].[Date] WHERE [Month] = Month(@BusinessDate) - 1 AND [Year] = YEAR(@BusinessDate) AND [Day_Of_Week] NOT IN (7,1) ORDER BY [PK_Date] DESC)

END