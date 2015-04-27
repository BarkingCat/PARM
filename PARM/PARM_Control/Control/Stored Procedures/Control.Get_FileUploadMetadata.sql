-- *********************************************
-- Author:		Aaron Jackson
-- Create date: 07/04/2015
-- Description:	Get RunID and Filename for a FileID
-- Test: EXEC [Control].[Get_FileUploadMetadata] @FileID = 1;
-- *********************************************

CREATE PROCEDURE [Control].[Get_FileUploadMetadata]
	@FileID INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	DECLARE @BusinessDate DATE, @RunID INT;
	
	SELECT @RunID = MIN(RunID) FROM [Control].[UploadQueue] WHERE StatusCode in (-1, 0) AND FileID = @FileID;

	SELECT @BusinessDate = BusinessDate FROM [Control].[Run] WHERE RunID = @RunID;

-- This code isnt generic, will only work for AFR files.
-- Change when addition systems are added
	
	SELECT
		A.RunID,
		B.SystemID,
		B.TargetURI AS [Directory],
		REPLACE(B.FileName,'[YYMMDD]',CONVERT(char(6),DATEADD(d,B.DateOffset,@BusinessDate),12)) AS [Filename]
	FROM [Control].[UploadQueue] AS A
	INNER JOIN [Control].[Files] AS B on A.FileID = B.FileID
	WHERE A.StatusCode in (-1,0) -- Only files that are pending 
	AND A.RunID = @RunID
	AND A.FileID = @FileID;

END

