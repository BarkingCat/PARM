


/****** Script for SelectTopNRows command from SSMS  ******/
CREATE VIEW [dbo].[CapitalPosition]
AS

	WITH CleanData AS
	(
		SELECT --[Date]
			  [Detail]
			  ,-1 * [Debit] + [Credit] as [Amount]
		  FROM [dbo].[CBA_Transactions]
		  WHERE Detail IN ('Transaction Fee', 'Principal Reduction', 'Interest capitalised')
	)

	SELECT
			COALESCE([Detail],'Total') as [Detail]
			,SUM([Amount]) AS [Amount]
	FROM CleanData
	GROUP BY
			[Detail]
	WITH ROLLUP




