
CREATE VIEW [Staging].[AFR_ASXShortSales_Daily]
AS
SELECT
	   B.BusinessDate
	  ,A.[RunID]
      ,A.[SystemID]
      ,A.[FileID]
      ,A.[RowID]
      ,A.[Company Name]
      ,A.[Code]
      ,A.[Product/Class]
      ,A.[Total Shares Sales]
      ,CONVERT(MONEY, REPLACE(A.[Reported Gross Short Sales (a)],',','')) as [Reported Gross Short Sales (a)]
      ,A.[Reported Gross Short Sales (%) of Turnover]
      ,A.[Daily Change in security price (%)]
      ,CONVERT(MONEY, REPLACE(A.[Issued Capital  (b)],',','')) as [Issued Capital  (b)]
      ,REPLACE(A.[Percentage issued capital reported as short(a)/(b)],',,','') AS [Percentage issued capital reported as short(a)/(b)]
FROM [Staging].[AFR_ASXShortSales_Daily_Raw] AS A
INNER JOIN [Control].Run AS B on A.RunID = B.RunID
WHERE Code != ''