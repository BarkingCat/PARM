

-- *********************************************
-- Author:		Aaron Jackson
-- Create date: 05/04/2015
-- Description:	
-- *********************************************

CREATE PROCEDURE [Dimension].[Populate_Dimension_Date]
	@Date DATETIME2(3)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	INSERT [PARM_DW].[Dimension].[Date] ([DateSK]
      ,[Date]
      ,[DateText]
      ,[FinancialYear]
      ,[WeekOfYear]
      ,[Quarter]
      ,[Year]
      ,[Month]
      ,[Day]
      ,[DayOfWeek])
	SELECT
		REPLACE(CONVERT(VARCHAR(12),CONVERT(DATE,@Date)),'-','') as [DateSK],
		CONVERT(DATE,@Date) as [Date],
		CONVERT(varchar(20), @Date, 106) as [DateText],
		CASE DATEPART(QUARTER,@Date)
			WHEN 1 THEN DATEPART(YEAR,@Date)
			WHEN 2 THEN DATEPART(YEAR,@Date)
			WHEN 3 THEN DATEPART(YEAR,DATEADD(YEAR,1,@Date))
			WHEN 4 THEN DATEPART(YEAR,DATEADD(YEAR,1,@Date))
		END as [FinancialYear], -- CASE
		DATEPART(WEEK,@Date) as [WeekOfYear],
		DATEPART(QUARTER,@Date) as [Quarter],
		DATEPART(YEAR,@Date) as [Year],
		DATEPART(MONTH,@Date) as [Month],
		DATEPART(DAY,@Date) as [Day],
		CASE DATEPART(WEEKDAY,@Date)
			WHEN 1 THEN 'Sunday'
			WHEN 2 THEN 'Monday'
			WHEN 3 THEN 'Tuesday'
			WHEN 4 THEN 'Wednesday'
			WHEN 5 THEN 'Thursday'
			WHEN 6 THEN 'Friday'
			WHEN 7 THEN 'Saturday'
		END as [DayOfWeek] -- CASE 



END