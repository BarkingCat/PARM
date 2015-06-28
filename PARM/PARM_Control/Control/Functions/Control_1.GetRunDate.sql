
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [Control].[GetRunDate]
(
	@RunID INT
)
RETURNS DATE
WITH SCHEMABINDING
AS
BEGIN

	DECLARE @RunDate DATE = (SELECT BusinessDate FROM [Control].[Run] WHERE RunID = @RunID);

	RETURN @RunDate

END