CREATE VIEW [Staging].[RBA_CommodityPrices_Daily]
AS

	SELECT 
		   B.BusinessDate
		  ,[Title] as [Date]
		  ,[Commodity prices – A$]
		  ,[Rural commodity prices – A$]
		  ,[Non-rural commodity prices – A$]
		  ,[Base metals prices – A$]
		  ,[Bulk commodities prices – A$]
		  ,[Commodity prices (with bulk commodities spot prices) – A$]
		  ,[Bulk commodities spot prices – A$]
	  FROM [Staging].[RBA_CommodityPrices_Daily_Raw] AS A
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