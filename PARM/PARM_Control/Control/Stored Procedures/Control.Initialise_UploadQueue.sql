

-- *********************************************
-- Author:		Aaron Jackson
-- Create date: 05/04/2015
-- Description:	Update status
-- EXEC [Control].[Initialise_UploadQueue] @RunID = 1;
-- *********************************************
CREATE PROCEDURE [Control].[Initialise_UploadQueue]
	@RunID INT = -1
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

	DECLARE @RunDayOfWeek INT;

	SET NOCOUNT ON;
	
	INSERT INTO [Control].[UploadQueue] (RunID, FileID)
	SELECT 
		A.RunID,
		B.FileID
	FROM [Control].[Run] as A
	CROSS APPLY (SELECT FileID FROM [Control].[Files] WHERE Frequency = 'D') as B
	WHERE B.FileID NOT IN (SELECT FileID FROM [Control].[UploadQueue] WHERE RunID = A.RunID)
	AND A.RunID = ISNULL(NULLIF(@RunID, -1), A.RunID);

	SELECT @@ROWCOUNT;
	
	SET @RunDayOfWeek = (SELECT (DATEPART(dw, [Control].GetRunDate(@RunID)) + @@DATEFIRST) % 7)

	--SELECT @RunDayOfWeek;

	IF @RunDayOfWeek = 6
	BEGIN
		INSERT INTO [Control].[UploadQueue] (RunID, FileID)
		SELECT 
			A.RunID,
			B.FileID
		FROM [Control].[Run] as A
		CROSS APPLY (SELECT FileID FROM [Control].[Files] WHERE Frequency = 'W') as B
		WHERE B.FileID NOT IN (SELECT FileID FROM [Control].[UploadQueue] WHERE RunID = A.RunID)
		AND A.RunID = ISNULL(NULLIF(@RunID, -1), A.RunID)
	END

END