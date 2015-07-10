

CREATE VIEW [Staging].[RBA_GovernmentBondYields_Daily]
AS

	SELECT B.BusinessDate
		  ,[Title] as [Date]
		  ,[Australian Government 2 year bond]
		  ,[Australian Government 3 year bond]
		  ,[Australian Government 5 year bond]
		  ,[Australian Government 10 year bond]
		  ,[Australian Government Indexed Bond]
	 FROM [Staging].[RBA_GovernmentBondYields_Daily_Raw] AS A
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
	 AND [Australian Government 2 year bond] != ''