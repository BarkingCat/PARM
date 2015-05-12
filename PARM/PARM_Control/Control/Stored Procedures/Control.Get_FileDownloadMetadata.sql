-- *********************************************
-- Author:		Aaron Jackson
-- Create date: 05/04/2015
-- Description:	Get a file to download from the queue
-- Test: EXEC [Control].[Get_FileDownloadMetadata] @SystemID = 1;
-- *********************************************
CREATE PROCEDURE [Control].[Get_FileDownloadMetadata]
	@SystemID INT, -- REQURIED
	@FileID INT = 0, -- OPTIONAL 
	@RunID INT = 0, --OPTIONAL - If not supplied, the min will be found
	@Frequency CHAR(1) = 'D', --OPTIONAL - Default to daily
	@Retry_Flag BIT = 0 -- OPTIONAL - Default to no
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	DECLARE @BusinessDate DATE;

	CREATE TABLE #StatusCodes ( StatusCode INT );

	IF @Retry_Flag = 1
	BEGIN
		INSERT INTO #StatusCodes
		SELECT -1 UNION ALL
		SELECT 0
	END
	ELSE
	BEGIN
		INSERT INTO #StatusCodes
		SELECT 0
	END
	
	IF @RunID = 0 
	BEGIN
		SELECT @RunID = MIN(RunID) 
		FROM [Control].[DownloadQueue] as A
		LEFT JOIN [Control].[Files] as  B on A.FileID = B.FileID
		WHERE StatusCode IN (SELECT StatusCode FROM #StatusCodes)
		AND B.SystemID = @SystemID
	END

	--SELECT @RunID;

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
	WHERE A.StatusCode IN (SELECT StatusCode FROM #StatusCodes) -- Only files that are pending 
	AND A.RunID = @RunID
	AND B.SystemID = @SystemID
	AND A.FileID = ISNULL(NULLIF(@FileID,0),A.FileID)
	AND B.Frequency = @Frequency;


END

