CREATE VIEW [Staging].[AFR_ASX300_Daily]
AS
SELECT
	   B.BusinessDate
	  ,A.[52 Week High]
      ,A.[52 Week Low]
      ,A.[Day's High]
      ,A.[Day's Low]
      ,A.[ASX Code]
      ,A.[Company Name]
      ,A.[Last Sale]
      ,A.[+ or -]
      ,A.[Vol 100's]
      ,A.[Quote Buy]
      ,A.[Quote Sell]
      ,A.[Div c per share]
      ,A.[Franked]
      ,A.[Div Times cov'd]
      ,A.[Net Tangible Assets]
      ,A.[Div yield %]
      ,A.[Earn share c]
      ,REPLACE(A.[P/E ratio],',,','') as [P/E ratio]
FROM [Staging].[AFR_ASX300_Daily_Raw] AS A
INNER JOIN [PARM_Control].[Control].Run AS B on A.RunID = B.RunID