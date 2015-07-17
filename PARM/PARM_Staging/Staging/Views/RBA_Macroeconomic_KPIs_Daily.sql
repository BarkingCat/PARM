



CREATE VIEW [Staging].[RBA_Macroeconomic_KPIs_Daily]
AS

	SELECT IR.[BusinessDate]
		  ,IR.[Date]
		  ,CAST(IR.[Australia Target Cash Rate] AS MONEY) AS [Australia Target Cash Rate] -- move this into the previous view
		  ,CAST(CPI.[Year-ended inflation] AS MONEY) AS [Year-ended inflation]
		  ,GDP.[Terms of trade]
		  ,GDP.[Year-ended real non-farm GDP growth]
		  ,GDP.[Year-ended real GDP per capita growth]
		  ,GDP.[Year-ended real GDP growth]
		  ,GDP.[Year-ended real GDI growth]
		  ,CP.[Commodity prices – A$] AS [Commodity prices]
		  ,ED.[Employment to population ratio]
		  ,ED.[Unemployment rate]
	FROM [Staging].[RBA_CashRates_Daily] AS IR
	INNER JOIN [Staging].[RBA_CPI_Daily] AS CPI ON IR.[Date] = CPI.[Date]
	INNER JOIN [Staging].[RBA_GDP_Data_Daily] AS GDP ON CPI.[Date] = GDP.[Date]
	INNER JOIN [Staging].[RBA_CommodityPrices_Daily] AS CP ON GDP.[Date] = CP.[Date]
	INNER JOIN [Staging].[RBA_EmploymentData_Daily] AS ED ON CP.[Date] = ED.[Date]
	WHERE LEN(IR.[Australia Target Cash Rate]) > 1