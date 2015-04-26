

-- *********************************************
-- Author:		Aaron Jackson
-- Create date: 05/04/2015
-- Description:	Update status
-- *********************************************
CREATE PROCEDURE [Control].[InitialiseRun]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	
	DECLARE @EOD_D DATE = (SELECT CASE (DATEPART(dw, MAX(BusinessDate)) + @@DATEFIRST) % 7
										WHEN 1 THEN DATEADD(day,1,MAX(BusinessDate)) --'Sunday'
										WHEN 2 THEN DATEADD(day,1,MAX(BusinessDate)) --'Monday'
										WHEN 3 THEN DATEADD(day,1,MAX(BusinessDate)) --'Tuesday'
										WHEN 4 THEN DATEADD(day,1,MAX(BusinessDate)) --'Wednesday'
										WHEN 5 THEN DATEADD(day,1,MAX(BusinessDate)) --'Thursday'
										WHEN 6 THEN DATEADD(day,3,MAX(BusinessDate)) --'Friday'
										WHEN 0 THEN DATEADD(day,2,MAX(BusinessDate)) --'Saturday'
									END FROM [Control].[Run]);
	DECLARE @DATE_COUNT INT;
	DECLARE @MAX_DATE DATE = GETDATE();

	WHILE @EOD_D < @MAX_DATE
	BEGIN

		SELECT @DATE_COUNT = COUNT(*) FROM [PARM_Control].[Control].[Run] WHERE BusinessDate = @EOD_D;

		IF @DATE_COUNT = 0 -- if date doesnt already exist in table
		BEGIN
			INSERT INTO [PARM_Control].[Control].[Run] (BusinessDate)
			SELECT @EOD_D;
		END

		SELECT @EOD_D = -- get next date
			CASE (DATEPART(dw, @EOD_D) + @@DATEFIRST) % 7
				WHEN 1 THEN DATEADD(day,1,@EOD_D) --'Sunday'
				WHEN 2 THEN DATEADD(day,1,@EOD_D) --'Monday'
				WHEN 3 THEN DATEADD(day,1,@EOD_D) --'Tuesday'
				WHEN 4 THEN DATEADD(day,1,@EOD_D) --'Wednesday'
				WHEN 5 THEN DATEADD(day,1,@EOD_D) --'Thursday'
				WHEN 6 THEN DATEADD(day,3,@EOD_D) --'Friday'
				WHEN 0 THEN DATEADD(day,2,@EOD_D) --'Saturday'
			END
	END

END



