

CREATE VIEW [Staging].[AFR_ASX300_Daily]
AS
SELECT
	   B.BusinessDate
	  ,CONVERT(MONEY,A.[52 Week High]) AS [52 Week High]
      ,CONVERT(MONEY,A.[52 Week Low]) AS [52 Week Low]
      ,CONVERT(MONEY,A.[Day's High]) AS [Day's High]
      ,CONVERT(MONEY,A.[Day's Low]) AS [Day's Low]
      ,A.[ASX Code]
      ,A.[Company Name]
      ,CONVERT(MONEY,A.[Last Sale]) AS [Last Sale]
      ,A.[+ or -]
      ,CONVERT(INT,A.[Vol 100's]) * 100 AS [Vol 100's]
      ,CONVERT(MONEY,A.[Quote Buy]) AS [Quote Buy]
      ,CONVERT(MONEY,A.[Quote Sell]) AS [Quote Sell]
      ,CONVERT(MONEY,A.[Div c per share]) AS [Div c per share]
      ,A.[Franked]
      ,CONVERT(MONEY,A.[Div Times cov'd]) AS [Div Times cov'd]
      ,CONVERT(MONEY,A.[Net Tangible Assets]) AS [Net Tangible Assets]
      ,CONVERT(MONEY,A.[Div yield %]) AS [Div yield %]
      ,CONVERT(MONEY,A.[Earn share c]) AS [Earn share c]
      ,CONVERT(MONEY,REPLACE(A.[P/E ratio],',,','')) AS [P/E ratio]
FROM [Staging].[AFR_ASX300_Daily_Raw] AS A
INNER JOIN [Control].Run AS B on A.RunID = B.RunID