CREATE VIEW [Staging].[RBA_BalanceOfPayments_Daily]
AS

	SELECT 
		B.BusinessDate
		,[Title] as [Date]
		,CAST([Net inflows to the general government sector] + '000000' AS MONEY) AS [Net inflows to the general government sector]
		,CAST([Net  inflows to the Reserve Bank] + '000000'  AS MONEY) AS [Net  inflows to the Reserve Bank] 
		,CAST([Net direct debt inflows to the non-official sector] + '000000'  AS MONEY) AS [Net direct debt inflows to the non-official sector]
		,CAST([Net direct equity inflows to the non-official sector] + '000000'  AS MONEY) AS [Net direct equity inflows to the non-official sector] 
		,CAST([Net portfolio and other debt inflows to the non-official sector] + '000000'  AS MONEY) AS [Net portfolio and other debt inflows to the non-official sector]
		,CAST([Net portfolio and other equity inflows to the non-official sector] + '000000'  AS MONEY) AS [Net portfolio and other equity inflows to the non-official sector]
		,CAST([Net total inflows to the non-official sector] + '000000'  AS MONEY) AS [Net total inflows to the non-official sector] 
		,CAST([Financial account balance] + '000000'  AS MONEY) AS [Financial account balance] 
		,CAST([Balancing item] + '000000'  AS MONEY) AS [Balancing item]
	FROM [Staging].[RBA_BalanceOfPayments_Daily_Raw] AS A
	INNER JOIN [Control].[Run] AS B on A.RunID = B.RunID
	WHERE CAST([Net inflows to the general government sector] + '000000' AS MONEY)  > 0.00 
	AND A.Title NOT IN (
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