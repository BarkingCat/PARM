


CREATE VIEW [Staging].[RBA_CPI_Daily]
AS

	SELECT 
		   B.BusinessDate
		  ,[Title] as [Date]
		  ,[Consumer price index]
		  ,RTRIM(LTRIM([Year-ended inflation])) AS [Year-ended inflation]
	 FROM [Staging].[RBA_CPI_Daily_Raw] AS A
	 INNER JOIN [Control].[Run] AS B on A.RunID = B.RunID
	 WHERE A.Title NOT IN (
		 'Title',
		 'Description',
		 'Frequency',
		 'Type',
		 'Units',
		 'Source',
		 'Publication date',
		 'Series ID',
		 ''
	 )