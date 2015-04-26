

-- *********************************************
-- Author:		Aaron Jackson
-- Create date: 05/04/2015
-- Description:	Update status
-- *********************************************
CREATE PROCEDURE [Control].[InitialiseDownloadQueue]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- SIMPLE HACK FOR NOW
	
	INSERT INTO [Control].[DownloadQueue] (RunID, FileID)
	SELECT 
		RunID,
		1
	FROM [Control].[Run]
	WHERE RunID NOT IN (SELECT RunID FROM [Control].[DownloadQueue]);
	
	
END



