
-- =============================================
-- Author:		Aaron Jackson
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[GetHistoricPortfolioPosition]
(
	@Date DATE
)
RETURNS TABLE 
RETURN (
	SELECT
			@Date as [Date]
			,COALESCE([Stock],'PORTFOLIO') as [Stock]
			,COALESCE([BuySellFlag],'TOTAL') as [BuySellFlag]
			,SUM(CASE WHEN [BuySellFlag] = 'SELL' THEN -1 ELSE 1 END *[Lots]) as [Lots]
			,SUM([Amount])/SUM([Lots]) as [AveragePrice]
			,SUM([Amount]) AS [Amount]
	FROM (SELECT
			  CASE
				WHEN LEFT(Detail,3) = 'BUY' THEN 'BUY'
				WHEN LEFT(Detail,4) = 'SELL' THEN 'SELL'
			   END as [BuySellFlag]
			  ,CAST(SUBSTRING(dbo.fn_StripCharacters(detail, '^0-9 '),0,6) as INT) as [Lots]
			  ,RIGHT(RTRIM(LTRIM(dbo.fn_StripCharacters(detail, '^ a-z'))),3) as [Stock]
			  ,SUBSTRING(Detail,CHARINDEX('$',Detail)+1,LEN(Detail)-CHARINDEX('$',Detail)+1) as [Price]
			  ,-1 * [Debit] + [Credit] as [Amount]
		  FROM [dbo].[CBA_Transactions]
		  WHERE Detail NOT IN ('Transaction Fee', 'Principal Reduction', 'Interest capitalised')
		  AND Date <= @Date) as qry
	GROUP BY
			[Stock]
			,[BuySellFlag]
	WITH ROLLUP
	)
