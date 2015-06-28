CREATE TABLE [Dimension].[Date] (
    [PK_Date]                      DATETIME      NOT NULL,
    [Date_Name]                    NVARCHAR (50) NULL,
    [Year]                         DATETIME      NULL,
    [Year_Name]                    NVARCHAR (50) NULL,
    [Quarter]                      DATETIME      NULL,
    [Quarter_Name]                 NVARCHAR (50) NULL,
    [Month]                        DATETIME      NULL,
    [Month_Name]                   NVARCHAR (50) NULL,
    [Week]                         DATETIME      NULL,
    [Week_Name]                    NVARCHAR (50) NULL,
    [Day_Of_Year]                  INT           NULL,
    [Day_Of_Year_Name]             NVARCHAR (50) NULL,
    [Day_Of_Quarter]               INT           NULL,
    [Day_Of_Quarter_Name]          NVARCHAR (50) NULL,
    [Day_Of_Month]                 INT           NULL,
    [Day_Of_Month_Name]            NVARCHAR (50) NULL,
    [Day_Of_Week]                  INT           NULL,
    [Day_Of_Week_Name]             NVARCHAR (50) NULL,
    [Week_Of_Year]                 INT           NULL,
    [Week_Of_Year_Name]            NVARCHAR (50) NULL,
    [Month_Of_Year]                INT           NULL,
    [Month_Of_Year_Name]           NVARCHAR (50) NULL,
    [Month_Of_Quarter]             INT           NULL,
    [Month_Of_Quarter_Name]        NVARCHAR (50) NULL,
    [Quarter_Of_Year]              INT           NULL,
    [Quarter_Of_Year_Name]         NVARCHAR (50) NULL,
    [Fiscal_Year]                  DATETIME      NULL,
    [Fiscal_Year_Name]             NVARCHAR (50) NULL,
    [Fiscal_Quarter]               DATETIME      NULL,
    [Fiscal_Quarter_Name]          NVARCHAR (50) NULL,
    [Fiscal_Month]                 DATETIME      NULL,
    [Fiscal_Month_Name]            NVARCHAR (50) NULL,
    [Fiscal_Week]                  DATETIME      NULL,
    [Fiscal_Week_Name]             NVARCHAR (50) NULL,
    [Fiscal_Day]                   DATETIME      NULL,
    [Fiscal_Day_Name]              NVARCHAR (50) NULL,
    [Fiscal_Day_Of_Year]           INT           NULL,
    [Fiscal_Day_Of_Year_Name]      NVARCHAR (50) NULL,
    [Fiscal_Day_Of_Quarter]        INT           NULL,
    [Fiscal_Day_Of_Quarter_Name]   NVARCHAR (50) NULL,
    [Fiscal_Day_Of_Month]          INT           NULL,
    [Fiscal_Day_Of_Month_Name]     NVARCHAR (50) NULL,
    [Fiscal_Day_Of_Week]           INT           NULL,
    [Fiscal_Day_Of_Week_Name]      NVARCHAR (50) NULL,
    [Fiscal_Week_Of_Year]          INT           NULL,
    [Fiscal_Week_Of_Year_Name]     NVARCHAR (50) NULL,
    [Fiscal_Month_Of_Year]         INT           NULL,
    [Fiscal_Month_Of_Year_Name]    NVARCHAR (50) NULL,
    [Fiscal_Month_Of_Quarter]      INT           NULL,
    [Fiscal_Month_Of_Quarter_Name] NVARCHAR (50) NULL,
    [Fiscal_Quarter_Of_Year]       INT           NULL,
    [Fiscal_Quarter_Of_Year_Name]  NVARCHAR (50) NULL,
    CONSTRAINT [PK_Date] PRIMARY KEY CLUSTERED ([PK_Date] ASC)
);








GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'CONSTRAINT', @level2name = N'PK_Date';


GO
EXECUTE sp_addextendedproperty @name = N'Project', @value = N'a46ef178-64f0-4dd8-af4c-ec24bdf7c37a', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date';


GO
EXECUTE sp_addextendedproperty @name = N'DSVTable', @value = N'Date', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Year', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Year';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Year';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Quarter', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Quarter';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Quarter';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Month', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Month';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Month';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Year_Name', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Year_Name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Year_Name';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Week_Of_Year_Name', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Week_Of_Year_Name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Week_Of_Year_Name';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Week_Of_Year', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Week_Of_Year';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Week_Of_Year';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Week_Name', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Week_Name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Week_Name';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Week', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Week';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Week';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Quarter_Of_Year_Name', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Quarter_Of_Year_Name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Quarter_Of_Year_Name';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Quarter_Of_Year', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Quarter_Of_Year';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Quarter_Of_Year';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Quarter_Name', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Quarter_Name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Quarter_Name';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Date', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'PK_Date';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'PK_Date';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Month_Of_Year_Name', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Month_Of_Year_Name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Month_Of_Year_Name';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Month_Of_Year', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Month_Of_Year';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Month_Of_Year';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Month_Of_Quarter_Name', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Month_Of_Quarter_Name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Month_Of_Quarter_Name';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Month_Of_Quarter', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Month_Of_Quarter';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Month_Of_Quarter';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Month_Name', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Month_Name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Month_Name';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Fiscal_Year_Name', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Year_Name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Year_Name';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Fiscal_Year', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Year';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Year';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Fiscal_Week_Of_Year_Name', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Week_Of_Year_Name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Week_Of_Year_Name';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Fiscal_Week_Of_Year', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Week_Of_Year';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Week_Of_Year';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Fiscal_Week_Name', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Week_Name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Week_Name';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Fiscal_Week', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Week';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Week';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Fiscal_Quarter_Of_Year_Name', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Quarter_Of_Year_Name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Quarter_Of_Year_Name';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Fiscal_Quarter_Of_Year', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Quarter_Of_Year';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Quarter_Of_Year';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Fiscal_Quarter_Name', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Quarter_Name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Quarter_Name';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Fiscal_Quarter', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Quarter';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Quarter';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Fiscal_Month_Of_Year_Name', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Month_Of_Year_Name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Month_Of_Year_Name';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Fiscal_Month_Of_Year', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Month_Of_Year';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Month_Of_Year';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Fiscal_Month_Of_Quarter_Name', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Month_Of_Quarter_Name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Month_Of_Quarter_Name';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Fiscal_Month_Of_Quarter', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Month_Of_Quarter';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Month_Of_Quarter';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Fiscal_Month_Name', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Month_Name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Month_Name';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Fiscal_Month', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Month';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Month';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Fiscal_Day_Of_Year_Name', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Day_Of_Year_Name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Day_Of_Year_Name';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Fiscal_Day_Of_Year', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Day_Of_Year';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Day_Of_Year';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Fiscal_Day_Of_Week_Name', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Day_Of_Week_Name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Day_Of_Week_Name';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Fiscal_Day_Of_Week', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Day_Of_Week';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Day_Of_Week';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Fiscal_Day_Of_Quarter_Name', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Day_Of_Quarter_Name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Day_Of_Quarter_Name';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Fiscal_Day_Of_Quarter', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Day_Of_Quarter';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Day_Of_Quarter';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Fiscal_Day_Of_Month_Name', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Day_Of_Month_Name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Day_Of_Month_Name';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Fiscal_Day_Of_Month', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Day_Of_Month';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Day_Of_Month';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Fiscal_Day_Name', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Day_Name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Day_Name';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Fiscal_Day', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Day';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal_Day';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Day_Of_Year_Name', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Day_Of_Year_Name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Day_Of_Year_Name';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Day_Of_Year', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Day_Of_Year';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Day_Of_Year';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Day_Of_Week_Name', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Day_Of_Week_Name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Day_Of_Week_Name';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Day_Of_Week', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Day_Of_Week';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Day_Of_Week';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Day_Of_Quarter_Name', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Day_Of_Quarter_Name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Day_Of_Quarter_Name';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Day_Of_Quarter', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Day_Of_Quarter';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Day_Of_Quarter';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Day_Of_Month_Name', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Day_Of_Month_Name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Day_Of_Month_Name';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Day_Of_Month', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Day_Of_Month';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Day_Of_Month';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Date_Name', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Date_Name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Date_Name';

