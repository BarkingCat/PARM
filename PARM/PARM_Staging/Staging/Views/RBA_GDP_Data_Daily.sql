CREATE VIEW [Staging].[RBA_GDP_Data_Daily]
AS
-- $million CAST([Balancing item] + '000000'  AS MONEY) AS [Balancing item]
	SELECT 
		   B.BusinessDate
		  ,[Title] as [Date]
		  ,CAST([Real GDP] + '000000'  AS MONEY) AS [Real GDP]		  
		  ,CAST([Real non-farm GDP] + '000000'  AS MONEY) AS [Real non-farm GDP]  
		  ,CAST([Real farm GDP] + '000000'  AS MONEY) AS [Real farm GDP]		  
		  ,CAST([Real GDI] + '000000'  AS MONEY) AS [Real GDI]	  
		  ,CAST([Nominal GDP] + '000000'  AS MONEY) AS [Nominal GDP] 
		  ,[Terms of trade]
		  ,[Year-ended real non-farm GDP growth]
		  ,[Year-ended real GDP per capita growth]
		  ,[Year-ended nominal GDP growth]
		  ,[Year-ended real GDP growth]
		  ,[Year-ended real GDI growth]
	FROM [Staging].[RBA_GDP_Data_Daily_Raw] AS A
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
		);