-- *********************************************
-- Author:		Aaron Jackson
-- Create date: 05/04/2015
-- Description:	Get a file to download from the queue
-- *********************************************
CREATE PROCEDURE [Control].[Get_FileDownloadMetadata]
	@RunID INT = 0 --If not supplied, the min will be found
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	DECLARE @BusinessDate DATE;
	
	IF @RunID = 0 SELECT @RunID = MIN(RunID) FROM [Control].[DownloadQueue] WHERE StatusCode = 0;

	SELECT @BusinessDate = BusinessDate FROM [Control].[Run] WHERE RunID = @RunID;

-- This code isnt generic, will only work for AFR files.
-- Change when addition systems are added
	
	SELECT
		A.FileID,
		REPLACE(B.SourceURI,'[YYYY-MM-DD]',CONVERT(char(10),DATEADD(d,B.DateOffset,@BusinessDate),126)) AS [SourceURI],
		REPLACE(B.FileName,'[YYMMDD]',CONVERT(char(6),DATEADD(d,B.DateOffset,@BusinessDate),12)) AS [FileName],
		B.TargetURI,
		A.RunID
	FROM [Control].[DownloadQueue] AS A
	INNER JOIN [Control].[Files] AS B on A.FileID = B.FileID
	WHERE StatusCode = 0 -- Only files that are pending 
	AND RunID = @RunID;


END

