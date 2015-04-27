

-- *********************************************
-- Author:		Aaron Jackson
-- Create date: 05/04/2015
-- Description:	Update status
-- *********************************************
CREATE PROCEDURE [Control].[InitialiseUploadQueue]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	INSERT INTO [Control].[UploadQueue] (RunID, FileID)
	SELECT 
		A.RunID,
		B.FileID
	FROM [Control].[Run] as A
	CROSS APPLY (SELECT FileID FROM [Control].[Files]) as B
	WHERE A.RunID NOT IN (SELECT RunID FROM [Control].[UploadQueue]);
	
END



