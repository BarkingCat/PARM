




CREATE VIEW [Staging].[AFR_ASX300_Daily]
AS
SELECT
	   B.BusinessDate
	  ,A.[52 Week High]
      ,A.[52 Week Low]
      ,A.[Day's High]
      ,A.[Day's Low]
      ,C.[CIGS industry group]
      ,A.[ASX Code]
      ,A.[Company Name]
      ,A.[Last Sale]
      ,A.[+ or -]
      ,CAST(A.[Vol 100's] as INT) * 100 AS [Volume] 
      ,CAST(A.[Quote Buy] as MONEY) as [Quote Buy]
      ,CAST(A.[Quote Sell] as MONEY) as [Quote Sell]
      ,CAST(A.[Div c per share] as MONEY) as [Div c per share]
      ,A.[Franked]
      ,CAST(A.[Div Times cov'd] as MONEY) as [Div Times cov'd]
      ,CAST(A.[Net Tangible Assets] as MONEY) as [Net Tangible Assets]
      ,CAST(A.[Div yield %] as MONEY) as [Div yield %]
      ,CAST(A.[Earn share c] as MONEY) AS [Earn share c]
      ,REPLACE(A.[P/E ratio],',,','') as [P/E ratio]
FROM [Staging].[AFR_ASX300_Daily_Raw] AS A
INNER JOIN [PARM_Control].[Control].Run AS B on A.RunID = B.RunID
LEFT JOIN [PARM_Staging].[Staging].[ASX_ListedCompanies_Daily] as C on A.[ASX Code]=C.[ASX code] AND B.BusinessDate=C.BusinessDate