


CREATE VIEW [Staging].[RBA_CashRates_Daily]
AS

	SELECT 
		   B.BusinessDate
		  ,[Title] as [Date]
		  ,[United States Federal Funds Maximum Target Rate]
		  ,[Japan Policy Rate]
		  ,[Euro Area Refinancing Rate]
		  ,[United Kingdom Bank Rate]
		  ,[Canada Target Rate]
		  ,RTRIM(LTRIM([Australia Target Cash Rate ])) AS [Australia Target Cash Rate] 
	 FROM [Staging].[RBA_CashRates_Daily_Raw] AS A
	 INNER JOIN [Control].[Run] AS B on A.RunID = B.RunID
	 WHERE A.Title NOT IN 
	 (
		'Description',
		'Frequency',
		'Type',
		'Units',
		'',
		'Source',
		'Publication date',
		'Series ID'
	)