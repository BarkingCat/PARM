

-- *********************************************
-- Author:		Aaron Jackson
-- Create date: 05/04/2015
-- Description:	Update status
-- *********************************************
CREATE PROCEDURE [Control].[Initialise_UploadQueue]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	INSERT INTO [Control].[UploadQueue] (RunID, FileID)
	SELECT 
		RunID,
		1
	FROM [Control].[Run]
	WHERE RunID NOT IN (SELECT RunID FROM [Control].[UploadQueue]);
	
END