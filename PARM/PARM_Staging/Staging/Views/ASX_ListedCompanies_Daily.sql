

CREATE VIEW [Staging].[ASX_ListedCompanies_Daily]
AS
SELECT
	   B.BusinessDate
	  ,A.[Company name]
      ,A.[ASX code]
      ,RTRIM(REPLACE(A.[CIGS industry group],'"','')) as [CIGS industry group]
FROM [Staging].[ASX_ListedCompanies_Daily_Raw] AS A
INNER JOIN [Control].Run AS B on A.RunID = B.RunID