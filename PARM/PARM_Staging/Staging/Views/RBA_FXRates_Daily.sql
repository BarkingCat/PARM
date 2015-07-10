
CREATE VIEW [Staging].[RBA_FXRates_Daily]
AS

	SELECT B.BusinessDate
		  ,[Date]
		  ,'AUD' as [FromCurrency]
		  ,'USD' as [ToCurrency]
		  ,CAST(REPLACE([AUD/USD],'N/A',0.00) as money) as [Value]
	 FROM [Staging].[RBA_FXRates_Daily_Raw] AS A
	 INNER JOIN [Control].[Run] AS B on A.RunID = B.RunID
	 WHERE A.Date NOT IN (
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