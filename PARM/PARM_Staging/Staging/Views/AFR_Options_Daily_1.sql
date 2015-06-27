


CREATE VIEW [Staging].[AFR_Options_Daily]
AS
SELECT
	   B.BusinessDate
      ,A.[ASXCode]
      ,A.[Company]
      ,A.[StockLastSale]
      ,A.[ContractType]
      ,A.[OptionSeriesMonth]
      ,A.[OptionSeriesYear]
      ,A.[ExercisePrice]
      ,A.[FairValue]
      ,A.[LastSale]
      ,A.[OpenInterest]
      ,A.[ImpliedVolatility]
      ,A.[Delta]
      ,A.[AnnualReturn]
  FROM [Staging].[AFR_ASXCallOptions_Daily_Transformed] AS A
  INNER JOIN [Control].Run AS B on A.RunID = B.RunID
  UNION
SELECT 
	   B.BusinessDate
      ,A.[ASXCode]
      ,A.[Company]
      ,A.[StockLastSale]
      ,A.[ContractType]
      ,A.[OptionSeriesMonth]
      ,A.[OptionSeriesYear]
      ,A.[ExercisePrice]
      ,A.[FairValue]
      ,A.[LastSale]
      ,A.[OpenInterest]
      ,A.[ImpliedVolatility]
      ,A.[Delta]
      ,A.[AnnualReturn]
  FROM [Staging].[AFR_ASXPutOptions_Daily_Transformed] AS A
  INNER JOIN [Control].Run AS B on A.RunID = B.RunID