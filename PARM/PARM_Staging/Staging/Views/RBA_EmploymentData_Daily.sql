CREATE VIEW [Staging].[RBA_EmploymentData_Daily]
AS

	SELECT 
		   B.BusinessDate
		  ,[Title]
		  ,[Labour force]
		  ,[Participation rate]
		  ,[Part-time employment]
		  ,[Full-time employment]
		  ,[Employment]
		  ,[Year-ended employment growth]
		  ,[Year-ended employment trend growth]
		  ,[Employment to population ratio]
		  ,[Unemployment]
		  ,[Unemployment rate]
		  ,[Unemployment rate trend]
		  ,[Hours worked]
		  ,[Hours worked trend]
		  ,[Year-ended hours worked trend growth]
		  ,[Average hours worked trend]
		  ,[Job vacancies]
		  ,[Private sector job vacancies]
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