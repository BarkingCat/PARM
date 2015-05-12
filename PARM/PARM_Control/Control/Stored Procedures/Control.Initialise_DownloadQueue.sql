

-- *********************************************
-- Author:		Aaron Jackson
-- Create date: 05/04/2015
-- Description:	Update status
-- *********************************************
CREATE PROCEDURE [Control].[Initialise_DownloadQueue]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- SIMPLE HACK FOR NOW
	
	INSERT INTO [Control].[DownloadQueue] (RunID, FileID)
	SELECT 
		A.RunID,
		B.FileID
	FROM [Control].[Run] as A
	CROSS APPLY (SELECT FileID FROM [Control].[Files]) as B
	WHERE B.FileID NOT IN (SELECT FileID FROM [Control].[DownloadQueue] WHERE RunID = A.RunID);
	
	
END