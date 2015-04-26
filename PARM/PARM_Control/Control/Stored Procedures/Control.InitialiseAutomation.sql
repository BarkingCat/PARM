

-- *********************************************
-- Author:		Aaron Jackson
-- Create date: 05/04/2015
-- Description:	Update status
-- *********************************************
CREATE PROCEDURE [Control].[InitialiseAutomation]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- Populate run with business date
	EXEC [Control].[InitialiseRun];
	-- Populate Download Queue
	EXEC [Control].[InitialiseDownloadQueue];
	-- Populate Upload Queue
	EXEC [Control].[InitialiseUploadQueue];

END



