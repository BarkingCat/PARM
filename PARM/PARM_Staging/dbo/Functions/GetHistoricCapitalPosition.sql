
-- =============================================
-- Author:		Aaron Jackson
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[GetHistoricCapitalPosition]
(
	@Date DATE
)
RETURNS TABLE 
RETURN (
	SELECT
			@Date as [Date]
			,COALESCE([Detail],'Total') as [Detail]
			,SUM([Amount]) AS [Amount]
	FROM (SELECT
			  [Detail]
			  ,-1 * [Debit] + [Credit] as [Amount]
		  FROM [dbo].[CBA_Transactions]
		  WHERE Detail IN ('Transaction Fee', 'Principal Reduction', 'Interest capitalised')
		  AND [Date] <= @Date) as qry
	GROUP BY
			[Detail]
	WITH ROLLUP
	)
