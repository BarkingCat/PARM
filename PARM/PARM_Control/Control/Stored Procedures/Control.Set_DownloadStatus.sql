
-- *********************************************
-- Author:		Aaron Jackson
-- Create date: 05/04/2015
-- Description:	Update status
-- *********************************************
CREATE PROCEDURE [Control].[Set_DownloadStatus]
	@RunID INT,
	@FileID INT,
	@StatusCode INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	
	UPDATE [Control].[DownloadQueue]
	SET StatusCode = @StatusCode,
		DownloadDate = GETDATE()
	WHERE RunID = @RunID
	AND FileID = @FileID;

END


