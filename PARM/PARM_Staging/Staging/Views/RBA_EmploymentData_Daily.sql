CREATE VIEW [Staging].[RBA_EmploymentData_Daily]
AS

	SELECT 
		   B.BusinessDate
		  ,[Title] AS [Date]
		  ,CAST([Labour force] + '000' AS MONEY) AS [Labour force]
		  ,[Participation rate]
		  ,CAST([Part-time employment] + '000' AS MONEY) AS [Part-time employment]
		  ,CAST([Full-time employment] + '000' AS MONEY) AS [Full-time employment]
		  ,CAST([Employment] + '000' AS MONEY) AS [Employment]
		  ,[Year-ended employment growth]
		  ,[Year-ended employment trend growth]
		  ,[Employment to population ratio]
		  ,CAST([Unemployment] + '000' AS MONEY) AS [Unemployment]
		  ,[Unemployment rate]
		  ,[Unemployment rate trend]
		  ,CAST([Hours worked] + '000' AS MONEY) AS [Hours worked]
		  ,CAST([Hours worked trend] + '000' AS MONEY) AS [Hours worked trend]
		  ,[Year-ended hours worked trend growth]
		  ,[Average hours worked trend]
		  ,CAST([Job vacancies] + '000' AS MONEY) AS [Job vacancies] -- FIX THIS
		  ,CAST([Private sector job vacancies] + '000' AS MONEY) AS [Private sector job vacancies] -- FIX THIS 
		  ,[Vacancies to labour force ratio ]
	  FROM [Staging].[RBA_EmploymentData_Daily_Raw] AS A
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